package services;

import java.util.List;

import javax.persistence.EntityManager;

import entities.Publicacion;
import entities.Usuario;
import util.Conexion;

public class PublicacionDao extends Conexion<Publicacion> implements GenericDao<Publicacion> {

	public PublicacionDao() {
		super(Publicacion.class);
		// TODO Auto-generated constructor stub
	}
	
	
			public List<Usuario> ListarUsuario() {
				EntityManager em = Conexion.getEm();
				
			String query = "Select * from usuarios";
			List<Usuario> resultado;
			resultado = em.createNativeQuery(query,Usuario.class).getResultList();
			return resultado;
	
	}

}
