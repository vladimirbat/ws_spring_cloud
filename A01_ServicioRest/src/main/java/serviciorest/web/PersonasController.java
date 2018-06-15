package serviciorest.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import serviciorest.dao.PersonasDao;
import serviciorest.entities.Persona;

@RestController
@RequestMapping(value="personas")
public class PersonasController {
	@Autowired
	PersonasDao personasDao;
	
	@RequestMapping(value="/dni/{dni}",produces="application/json")
	public Persona getPersonaPorDni(@PathVariable String dni) {
		return personasDao.findOne(Long.parseLong(dni));
	}
	@RequestMapping(value="/apellidos/{apellidos}",produces="application/json")
	public List<Persona> getPersonaPorApellidos(@PathVariable("apellidos") String ape) {
		return personasDao.findByApellidosLike("%" + ape + "%");
	}
}
