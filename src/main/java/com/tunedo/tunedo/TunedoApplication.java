package com.tunedo.tunedo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class TunedoApplication {

	public static void main(String[] args) {
		SpringApplication.run(TunedoApplication.class, args);
	}

}
