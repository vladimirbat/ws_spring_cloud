package serviciorest.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import serviciorest.entities.Provincia;

public interface ProvinciasDao extends JpaRepository<Provincia, Long> {

}
