package serviciorest.web;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="saludar")
public class SaludoController {
	@RequestMapping(value="/{nombre}",produces="application/json")
	public String getSaludo(@PathVariable("nombre") String nombre) {
		return "{\"texto\": \"Hola " +  nombre + "\"}";
	}
}
