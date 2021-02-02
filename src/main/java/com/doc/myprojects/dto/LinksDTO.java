package com.doc.myprojects.dto;

import java.util.List;

public class LinksDTO{

	private String id;
	
	private String linkName;
	
	private String url;
	
	private String description;
	
	private List<String> categories;
	
	private String type;
	
	public LinksDTO(){}
	
	public LinksDTO(String id, String linkName, String url, String description, List<String> categories, String type) {
		this.id = id;
		this.linkName = linkName;
		this.url = url;
		this.description = description;
		this.categories = categories;
		this.type = type;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getLinkName() {
		return linkName;
	}

	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public List<String> getCategories() {
		return categories;
	}

	public void setCategories(List<String> categories) {
		this.categories = categories;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}