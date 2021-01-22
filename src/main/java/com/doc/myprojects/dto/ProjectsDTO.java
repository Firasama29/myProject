package com.doc.myprojects.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ProjectsDTO{

	private String id;
	
	private String title;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date date;
	
	private String description;
	
	private String languages;
	
	private String type;
	
	private String status;
	
	private String IDE;
	
	private String github;
	
	public ProjectsDTO() {}
	
	public ProjectsDTO(String id, String title, Date date, String description, String languages, String type, String status,
			String IDE, String github) {
		this.id = id;
		this.title = title;
		this.date = date;
		this.description = description;
		this.languages = languages;
		this.type = type;
		this.IDE = IDE;
		this.status = status;
		this.github = github;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getLanguages() {
		return languages;
	}

	public void setLanguage(String languages) {
		this.languages = languages;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getIDE() {
		return IDE;
	}

	public void setIDE(String IDE) {
		this.IDE = IDE;
	}
	
	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}
}
