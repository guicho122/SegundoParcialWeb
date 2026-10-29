package org.gerdoc.servlet;

import org.gerdoc.model.Usuario;
import org.gerdoc.service.UsuarioService;
import org.gerdoc.service.impl.UsuarioServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serial;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
    @Serial
    private static final long serialVersionUID = 1L;
    private final UsuarioService usuarioService = new UsuarioServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String user = req.getParameter("usuario");
        String pass = req.getParameter("password");

        Usuario usuario = usuarioService.validarCredenciales(user, pass);

        if (usuario != null && usuario.isActivo())
        {
            HttpSession session = req.getSession();
            session.setAttribute("usuario", usuario.getNombrePersona());
            session.setAttribute("rol", usuario.getRol());

            if ("PROFESOR".equalsIgnoreCase(usuario.getRol()))
            {
                resp.sendRedirect("profesor/bienvenido.jsp");
            }
            else if ("ALUMNO".equalsIgnoreCase(usuario.getRol()))
            {
                resp.sendRedirect("alumno/bienvenido.jsp");
            }
            else
            {
                resp.sendRedirect("login.jsp?error=rol");
            }
        }
        else
        {
            resp.sendRedirect("login.jsp?error=credenciales");
        }
    }
}