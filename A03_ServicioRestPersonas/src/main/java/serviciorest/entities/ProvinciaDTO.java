package serviciorest.entities;

public class ProvinciaDTO {
	private long idProvincia;
	private String provincia;
	
	public ProvinciaDTO() {

	}

	public ProvinciaDTO(long idProvincia, String provincia) {
		super();
		this.idProvincia = idProvincia;
		this.provincia = provincia;
	}

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
