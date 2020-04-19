package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the publicacion database table.
 * 
 */
@Entity
@NamedQuery(name="Publicacion.findAll", query="SELECT p FROM Publicacion p")
public class Publicacion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_publicacion")
	private int idPublicacion;

	private String descripcion;

	@Temporal(TemporalType.DATE)
	@Column(name="fecha_publicacion")
	private Date fechaPublicacion;

	@Column(name="nombre_imagen")
	private String nombreImagen;

	//bi-directional many-to-one association to Comentario
	@OneToMany(mappedBy="publicacion")
	private List<Comentario> comentarios;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="usuarioPublicacion")
	private Usuario usuario;

	//bi-directional many-to-one association to Reaccion
	@OneToMany(mappedBy="publicacion")
	private List<Reaccion> reaccions;

	public Publicacion() {
	}

	public int getIdPublicacion() {
		return this.idPublicacion;
	}

	public void setIdPublicacion(int idPublicacion) {
		this.idPublicacion = idPublicacion;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getFechaPublicacion() {
		return this.fechaPublicacion;
	}

	public void setFechaPublicacion(Date fechaPublicacion) {
		this.fechaPublicacion = fechaPublicacion;
	}

	public String getNombreImagen() {
		return this.nombreImagen;
	}

	public void setNombreImagen(String nombreImagen) {
		this.nombreImagen = nombreImagen;
	}

	public List<Comentario> getComentarios() {
		return this.comentarios;
	}

	public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public Comentario addComentario(Comentario comentario) {
		getComentarios().add(comentario);
		comentario.setPublicacion(this);

		return comentario;
	}

	public Comentario removeComentario(Comentario comentario) {
		getComentarios().remove(comentario);
		comentario.setPublicacion(null);

		return comentario;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public List<Reaccion> getReaccions() {
		return this.reaccions;
	}

	public void setReaccions(List<Reaccion> reaccions) {
		this.reaccions = reaccions;
	}

	public Reaccion addReaccion(Reaccion reaccion) {
		getReaccions().add(reaccion);
		reaccion.setPublicacion(this);

		return reaccion;
	}

	public Reaccion removeReaccion(Reaccion reaccion) {
		getReaccions().remove(reaccion);
		reaccion.setPublicacion(null);

		return reaccion;
	}

}