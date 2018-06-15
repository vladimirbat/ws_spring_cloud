package serviciorest.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CLIENTES")
public class Persona {
	@Id
	private long dni;
	@Column
	private String nombre;
	@Column
	private String apellidos;
	@Column
	private double saldo;
	@Column(name="ID_PROVINCIA")
	private long idProvincia;
	public Persona() {
		
	}
	public Persona(long dni, String nombre, String apellidos, double saldo, long idProvincia) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.saldo = saldo;
		this.idProvincia = idProvincia;
	}
	
	public String toString() {
		return "Persona [dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", saldo=" + saldo
				+ ", idProvincia=" + idProvincia + "]";
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
