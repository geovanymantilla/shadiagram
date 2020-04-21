package services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entities.Usuario;
import services.GenericDao;
import util.Conexion;
import util.ConexionAll;


public class UsuarioDao extends Conexion<Usuario> implements GenericDao<Usuario> {
	
public UsuarioDao(){
		super(Usuario.class);
	}

public Usuario buscarPorUsuario(String usuario){
	
	Usuario u = (Usuario) this.getEm().
			createQuery("select u from Usuario u where u.usuario = '" + usuario + "'").getSingleResult();

	return u;
	
}

}
//	public EntityManager em;
//
//	public UsuarioDao() {
//		// TODO Auto-generated constructor stub
//		this.em = ConexionAll.getEm();
//	}
//	
//	public void insertar(Usuario usuario) {
//		
//		em.getTransaction().begin();
//		em.persist(usuario);
//		em.getTransaction().commit();
//		
//	}
//	
//	public void actualizar(Usuario usuario) {
//		em.getTransaction().begin();
//		em.merge(usuario);
//		em.getTransaction().commit();
//	}
//	
//	public void eliminar(Usuario usuario) {
//		em.getTransaction().begin();
//		em.remove(usuario);
//		em.getTransaction().commit();
//	}
//	
//	public Usuario buscar(Integer usuarioIn) {
//		return em.find(Usuario.class, usuarioIn);
//	}
//	
//	public List<Usuario> listar() {
//		TypedQuery<Usuario> consulta= em.createNamedQuery("Usuario.findAll", Usuario.class);
//		List<Usuario> lista = (List<Usuario>) consulta.getResultList();
//		return lista;
//	}
//}
//
