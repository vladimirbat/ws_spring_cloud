package serviciorest.entities;

public class PersonaDTO {

	private long dni;

	private String nombre;

	private String apellidos;

	private double saldo;

	private long idProvincia;
	
	private String provincia;
	
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public PersonaDTO() {

	}
	public PersonaDTO(long dni, String nombre, String apellidos, double saldo) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.saldo = saldo;
		this.idProvincia = 28;
	}
	
	
	@Override
	public String toString() {
		return "PersonaDTO [dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", saldo=" + saldo
				+ ", idProvincia=" + idProvincia + ", provincia=" + provincia + "]";
	}
	public long getDni() {
		return dni;
	}
	public void setDni(long dni) {
		this.dni = dni;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	public long getIdProvincia() {
		return idProvincia;
	}
	public void setIdProvincia(long idProvincia) {
		this.idProvincia = idProvincia;
	}
	
}
