package serviciorest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableDiscoveryClient// Opción A
@EnableFeignClients // Opción C
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
	
	// Opción B: RestTemplate con balanceo de carga 
	// implementa Round-Robin con las instancias disponibles
	@LoadBalanced
	@Bean
	public RestTemplate getRestTemplate() {
		return new RestTemplate();
	}
}
