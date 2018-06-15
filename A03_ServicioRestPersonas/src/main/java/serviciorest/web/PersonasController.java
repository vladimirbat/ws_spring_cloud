package serviciorest.web;

import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import serviciorest.dao.PersonasDao;
import serviciorest.entities.Persona;
import serviciorest.entities.PersonaDTO;
import serviciorest.entities.ProvinciaDTO;

@RestController
@RequestMapping(value="personas")
public class PersonasController {
	@Autowired
	PersonasDao personasDao;
	@Autowired 
	DozerBeanMapper dozzerMapper;
	@Autowired 
	DiscoveryClient discoveryClient;//A
	@Autowired
	RestTemplate restTemplateRibbon; //B
//	@Autowired
//	ProvinciasFeign provinciasFeign; //C
	@RequestMapping(value="/dni/{dni}",produces="application/json")
	public PersonaDTO getPersonaPorDni(@PathVariable String dni) {
		Persona entity = personasDao.findOne(Long.parseLong(dni));
		PersonaDTO dto =  dozzerMapper.map(entity,PersonaDTO.class);
		dto.setProvincia(getProvinciaA(dto.getIdProvincia()));
		return dto;
	}
	// A.- Spring Discovery Client: Opción de más bajo nivel,
	// 	obtiene directamente la lista de instancias del 
	//  microservicio y sobre una de ellas ejecuta la petición.
	private String getProvinciaA(long idProvincia) {
		//discoveryClient.getInstances("servicioprovincias") Pide 
		// a eureka una lista de todas las instancias del
		// microservicio servicioprovincias
		String uri = discoveryClient.getInstances("servicioprovincias").get(0)
					.getUri().toString() + "/provincias/" + idProvincia;
		System.out.println("uri ---> " + uri);
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<ProvinciaDTO> respuesta = restTemplate.exchange(
				uri, HttpMethod.GET, null, ProvinciaDTO.class);
		return respuesta.getBody().getProvincia();
	}
	@RequestMapping(value="/apellidos/{apellidos}",produces="application/json")
	public List<Persona> getPersonaPorApellidos(@PathVariable("apellidos") String ape) {
		return personasDao.findByApellidosLike("%" + ape + "%");
	}
}
