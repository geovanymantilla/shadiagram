package services;


import entities.Amistad;
import util.Conexion;

public class AmistadDao extends Conexion<Amistad> implements GenericDao<Amistad> {
	
public AmistadDao(){
		super(Amistad.class);
	}

}

