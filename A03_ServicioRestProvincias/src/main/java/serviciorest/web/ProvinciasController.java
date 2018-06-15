package serviciorest.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import serviciorest.dao.ProvinciasDao;
import serviciorest.entities.Provincia;

@RestController
@RequestMapping(value = "provincias")
public class ProvinciasController {
	@Autowired 
	private ProvinciasDao provinciasDao;
	// URL de prueba-> http://localhost:8080/provincias/28
	@RequestMapping(value = "/{id}",method=RequestMethod.GET)
	public Provincia buscarPorId(@PathVariable("id") String id) {
		return provinciasDao.findOne(Long.parseLong(id));
	}
}
