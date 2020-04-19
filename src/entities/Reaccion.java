package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the reaccion database table.
 * 
 */
@Entity
@NamedQuery(name="Reaccion.findAll", query="SELECT r FROM Reaccion r")
public class Reaccion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_reaccion")
	private int idReaccion;

	//bi-directional many-to-one association to Publicacion
	@ManyToOne
	@JoinColumn(name="id_publicacion")
	private Publicacion publicacion;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="usuario_reaccion")
	private Usuario usuario;

	public Reaccion() {
	}

	public int getIdReaccion() {
		return this.idReaccion;
	}

	public void setIdReaccion(int idReaccion) {
		this.idReaccion = idReaccion;
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