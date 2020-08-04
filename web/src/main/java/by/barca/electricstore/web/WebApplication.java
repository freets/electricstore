package by.barca.electricstore.web;

import by.barca.electricstore.common.service.TestService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication(scanBasePackages = "by.barca.electricstore")
@EnableSwagger2
@RestController
public class WebApplication {

	private final TestService testService;

	public WebApplication(TestService testService){
		this.testService = testService;
	}

	@GetMapping("/")
	public String home() {
		return testService.message();
	}

	public static void main(String[] args) {
		SpringApplication.run(WebApplication.class, args);
	}

}
