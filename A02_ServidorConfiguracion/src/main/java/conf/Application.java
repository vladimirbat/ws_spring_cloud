package conf;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
// Activa este servidor como un servidor de configuración (de properties)
// de Spring Cloud.
@EnableConfigServer
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
