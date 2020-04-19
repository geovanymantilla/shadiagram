package util;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
//import javax.persistence.EntityManager;
//import javax.persistence.TypedQuery;

import entities.Usuario;
import services.UsuarioDao;

public class Prueba {

	public Prueba() {
		// TODO Auto-generated constructor stub
	}
public static void main(String[] args) {
		
		
		Usuario  u = new Usuario();
	    u.setNombre("Juancho");
	    u.setApellidos("Fuentes");
	    u.setEmail("juanandres.jaf53@gmail.com");
	    u.setUsuario("juanchito123");
	    u.setPass("perrito123");
	    java.util.Date fecha=new Date();
	    u.setFechaRegistro(fecha);
	    UsuarioDao uDao=new UsuarioDao();
		uDao.insert(u);

		}
}
//	 
	
//	public static EntityManager getEm() {
//		EntityManagerFactory emf = 
//				Persistence.createEntityManagerFactory("shadiagram1.0");
//		EntityManager em = emf.createEntityManager();
//		return em;	
//	}
//	
//	public static void main(String[] args) {
//
//		EntityManager em = Prueba.getEm();	
//		
//		Usuario usuario = new Usuario();
//		
//		usuario.setEmail("crangarita@gmail.com");
//		usuario.setNombre("Carlos");
//		usuario.setApellido("Angarita");
//		usuario.setPass("1234");
//		usuario.setUsuario("crangarita");
//		usuario.setFechaRegistro(null);
//		
//		UsuarioDao uDao = new UsuarioDao();
//		
//		//uDao.insertar(usuario);
//		
////		usuario = uDao.find(3);
//		
////		System.out.println(usuario.getNombre());
//		
//		/*
//		em.getTransaction().begin();
//		em.persist(usuario);
//		em.getTransaction().commit();
//		
//		*/
//
//	}
//
//}
