package serviciorest.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import serviciorest.entities.Persona;
// Solamente por hereadar de JpaRepository, Spring Data implementa
// un bean de esta interface con los métodos CRUD implementados.
public interface PersonasDao extends JpaRepository<Persona, Long> {
	public List<Persona> findByApellidosLike(String apellidos);
}
