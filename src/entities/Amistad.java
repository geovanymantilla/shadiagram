package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the amistad database table.
 * 
 */
@Entity
@NamedQuery(name="Amistad.findAll", query="SELECT a FROM Amistad a")
public class Amistad implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_amistad")
	private int idAmistad;

	@Temporal(TemporalType.DATE)
	@Column(name="fecha_solicitud")
	private Date fechaSolicitud;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="usuario")
	private Usuario usuario1;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="amistad")
	private Usuario usuario2;

	public Amistad() {
	}

	public int getIdAmistad() {
		return this.idAmistad;
	}

	public void setIdAmistad(int idAmistad) {
		this.idAmistad = idAmistad;
	}

	public Date getFechaSolicitud() {
		return this.fechaSolicitud;
	}

	public void setFechaSolicitud(Date fechaSolicitud) {
		this.fechaSolicitud = fechaSolicitud;
	}

	public Usuario getUsuario1() {
		return this.usuario1;
	}

	public void setUsuario1(Usuario usuario1) {
		this.usuario1 = usuario1;
	}

	public Usuario getUsuario2() {
		return this.usuario2;
	}

	public void setUsuario2(Usuario usuario2) {
		this.usuario2 = usuario2;
	}

}