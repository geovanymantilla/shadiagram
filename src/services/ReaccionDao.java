package services;

import entities.Reaccion;
import util.Conexion;

public class ReaccionDao extends Conexion<Reaccion> implements GenericDao<Reaccion> {
	
public ReaccionDao(){
		super(Reaccion.class);
	}

}
