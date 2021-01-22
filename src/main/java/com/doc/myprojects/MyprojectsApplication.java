package com.doc.myprojects;

import javax.persistence.Entity;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.doc.myprojects.model")
public class MyprojectsApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyprojectsApplication.class, args);
	}

}
