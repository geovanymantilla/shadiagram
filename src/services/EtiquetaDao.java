package services;

import util.Conexion;
import entities.Etiqueta;

public class EtiquetaDao extends Conexion<Etiqueta> implements GenericDao<Etiqueta> {

	public EtiquetaDao() {
		super(Etiqueta.class);
		// TODO Auto-generated constructor stub
	}
}
