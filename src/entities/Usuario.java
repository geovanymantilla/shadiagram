package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the usuarios database table.
 * 
 */
@Entity
@Table(name="usuarios")
@NamedQuery(name="Usuario.findAll", query="SELECT u FROM Usuario u")
public class Usuario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String usuario;

	private String apellidos;

	private String email;

	@Temporal(TemporalType.DATE)
	@Column(name="fecha_registro")
	private Date fechaRegistro;

	@Column(name="imagen_perfil")
	private String imagenPerfil;

	private String nombre;

	private String pass;

	//bi-directional many-to-one association to Amistad
	@OneToMany(mappedBy="usuario1")
	private List<Amistad> amistads1;

	//bi-directional many-to-one association to Amistad
	@OneToMany(mappedBy="usuario2")
	private List<Amistad> amistads2;

	//bi-directional many-to-one association to Comentario
	@OneToMany(mappedBy="usuario")
	private List<Comentario> comentarios;

	//bi-directional many-to-one association to Publicacion
	@OneToMany(mappedBy="usuario")
	private List<Publicacion> publicacions;

	//bi-directional many-to-one association to Reaccion
	@OneToMany(mappedBy="usuario")
	private List<Reaccion> reaccions;

	public Usuario() {
	}

	public String getUsuario() {
		return this.usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getApellidos() {
		return this.apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getFechaRegistro() {
		return this.fechaRegistro;
	}

	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}

	public String getImagenPerfil() {
		return this.imagenPerfil;
	}

	public void setImagenPerfil(String imagenPerfil) {
		this.imagenPerfil = imagenPerfil;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public List<Amistad> getAmistads1() {
		return this.amistads1;
	}

	public void setAmistads1(List<Amistad> amistads1) {
		this.amistads1 = amistads1;
	}

	public Amistad addAmistads1(Amistad amistads1) {
		getAmistads1().add(amistads1);
		amistads1.setUsuario1(this);

		return amistads1;
	}

	public Amistad removeAmistads1(Amistad amistads1) {
		getAmistads1().remove(amistads1);
		amistads1.setUsuario1(null);

		return amistads1;
	}

	public List<Amistad> getAmistads2() {
		return this.amistads2;
	}

	public void setAmistads2(List<Amistad> amistads2) {
		this.amistads2 = amistads2;
	}

	public Amistad addAmistads2(Amistad amistads2) {
		getAmistads2().add(amistads2);
		amistads2.setUsuario2(this);

		return amistads2;
	}

	public Amistad removeAmistads2(Amistad amistads2) {
		getAmistads2().remove(amistads2);
		amistads2.setUsuario2(null);

		return amistads2;
	}

	public List<Comentario> getComentarios() {
		return this.comentarios;
	}

	public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public Comentario addComentario(Comentario comentario) {
		getComentarios().add(comentario);
		comentario.setUsuario(this);

		return comentario;
	}

	public Comentario removeComentario(Comentario comentario) {
		getComentarios().remove(comentario);
		comentario.setUsuario(null);

		return comentario;
	}

	public List<Publicacion> getPublicacions() {
		return this.publicacions;
	}

	public void setPublicacions(List<Publicacion> publicacions) {
		this.publicacions = publicacions;
	}

	public Publicacion addPublicacion(Publicacion publicacion) {
		getPublicacions().add(publicacion);
		publicacion.setUsuario(this);

		return publicacion;
	}

	public Publicacion removePublicacion(Publicacion publicacion) {
		getPublicacions().remove(publicacion);
		publicacion.setUsuario(null);

		return publicacion;
	}

	public List<Reaccion> getReaccions() {
		return this.reaccions;
	}

	public void setReaccions(List<Reaccion> reaccions) {
		this.reaccions = reaccions;
	}

	public Reaccion addReaccion(Reaccion reaccion) {
		getReaccions().add(reaccion);
		reaccion.setUsuario(this);

		return reaccion;
	}

	public Reaccion removeReaccion(Reaccion reaccion) {
		getReaccions().remove(reaccion);
		reaccion.setUsuario(null);

		return reaccion;
	}

}