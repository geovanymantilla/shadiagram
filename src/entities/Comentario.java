package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the comentario database table.
 * 
 */
@Entity
@NamedQuery(name="Comentario.findAll", query="SELECT c FROM Comentario c")
public class Comentario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_comentario")
	private int idComentario;

	private String comentario;

	@Temporal(TemporalType.DATE)
	@Column(name="fecha_comentario")
	private Date fechaComentario;

	//bi-directional many-to-one association to Publicacion
	@ManyToOne
	@JoinColumn(name="id_publicacionC")
	private Publicacion publicacion;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="usuarioC")
	private Usuario usuario;

	public Comentario() {
	}

	public int getIdComentario() {
		return this.idComentario;
	}

	public void setIdComentario(int idComentario) {
		this.idComentario = idComentario;
	}

	public String getComentario() {
		return this.comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public Date getFechaComentario() {
		return this.fechaComentario;
	}

	public void setFechaComentario(Date fechaComentario) {
		this.fechaComentario = fechaComentario;
	}

	public Publicacion getPublicacion() {
		return this.publicacion;
	}

	public void setPublicacion(Publicacion publicacion) {
		this.publicacion = publicacion;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}