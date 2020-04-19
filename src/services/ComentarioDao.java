package services;


import entities.Comentario;
import util.Conexion;

public class ComentarioDao extends Conexion<Comentario> implements GenericDao<Comentario> {
	
public ComentarioDao(){
		super(Comentario.class);
	}
}
