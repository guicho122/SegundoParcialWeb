CREATE DATABASE `TEST`;
use TEST;

CREATE TABLE `TBL_ROL` (
                           `ID` int NOT NULL autoincrement ,
                           `ROL` varchar(45) NOT NULL,
                           `DESCRIPCION` varchar(45) DEFAULT NULL,
                           PRIMARY KEY (`ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


package org.gerdoc.model;

public class Usuario {
    private String usuario;
    private String password;
    private boolean activo;
    private String rol;
    private String nombrePersona;

    public Usuario() {}

    public Usuario(String usuario, String password, boolean activo, String rol, String nombrePersona) {
        this.usuario = usuario;
        this.password = password;
        this.activo = activo;
        this.rol = rol;
        this.nombrePersona = nombrePersona;
    }

    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) { this.usuario = usuario; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public boolean isActivo() { return activo; }
    public void setActivo(boolean activo) { this.activo = activo; }

    public String getRol() { return rol; }
    public void setRol(String rol) { this.rol = rol; }

    public String getNombrePersona() { return nombrePersona; }
    public void setNombrePersona(String nombrePersona) { this.nombrePersona = nombrePersona; }
}

package org.gerdoc.servlet;

public class Usuario {
    private String usuario;
    private String password;
    private boolean activo;
    private String rol;
    private String nombrePersona;

    public Usuario() {}

    public Usuario(String usuario, String password, boolean activo, String rol, String nombrePersona) {
        this.usuario = usuario;
        this.password = password;
        this.activo = activo;
        this.rol = rol;
        this.nombrePersona = nombrePersona;
    }

    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) { this.usuario = usuario; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public boolean isActivo() { return activo; }
    public void setActivo(boolean activo) { this.activo = activo; }

    public String getRol() { return rol; }
    public void setRol(String rol) { this.rol = rol; }

    public String getNombrePersona() { return nombrePersona; }
    public void setNombrePersona(String nombrePersona) { this.nombrePersona = nombrePersona; }
}

