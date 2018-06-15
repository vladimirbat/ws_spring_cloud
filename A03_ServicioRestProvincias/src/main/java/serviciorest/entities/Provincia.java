package serviciorest.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name="PROVINCIAS")
public class Provincia {
	@Id 
	@Column(name="ID_PROVINCIA") 
	private long idProvincia;
	@Column 
	private String provincia;
	
	public Provincia() {

	}

	public Provincia(long idProvincia, String provincia) {
		super();
		this.idProvincia = idProvincia;
		this.provincia = provincia;
	}

	@Override
	public String toString() {
		return "Provincia [idProvincia=" + idProvincia + ", provincia=" + provincia + "]";
	}

	public long getIdProvincia() {
		return idProvincia;
	}

	public void setIdProvincia(long idProvincia) {
		this.idProvincia = idProvincia;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	
}
