package org.gerdoc.service.impl;

import org.gerdoc.model.Usuario;

import java.util.List;

public interface UsuarioService
{
    List<Usuario> findAll( );
    Usuario findById( Long id );
    void save( Usuario Usuario );
    void deleteById( Long id );
    void update( Usuario Usuario );
}
