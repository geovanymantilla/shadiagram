package services;

import entities.Publicacion;
import entities.Usuario;
import util.Conexion;

public class PublicacionDao extends Conexion<Publicacion> implements GenericDao<Publicacion> {

	public PublicacionDao() {
		super(Publicacion.class);
		// TODO Auto-generated constructor stub
	}

}
