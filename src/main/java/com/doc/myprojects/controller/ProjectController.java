package com.doc.myprojects.controller;
import java.io.IOException;
import java.util.Arrays;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.doc.myprojects.dto.LoginDTO;
import com.doc.myprojects.dto.ProjectsDTO;
import com.doc.myprojects.rest.template.WebRestTemplate;

@Controller
public class ProjectController extends RestTemplate{
	
	WebRestTemplate webRestTemplate = new WebRestTemplate();
	
	Logger log = LoggerFactory.getLogger(ProjectController.class);

	//------------------------------------------------------------------------main pages
	//index page
	@GetMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	//------------------------------------------------------------------------signup page
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	//------------------------------------------------------------------------login page
	@GetMapping("/login")
	public String viewLogin() {
		return "login";
	}
	
	//------------------------------------------------------------------------login page
		@GetMapping("/websites")
		public String viewWebsites() {
			return "websites";
		}
		
		
	//login
	@PostMapping("/login")
	public ModelAndView loginPage(LoginDTO usersDto, HttpServletRequest req ) {
		
		ModelAndView mv = new ModelAndView("login");
		
		String url = "http://localhost:8088/";
		
		usersDto = webRestTemplate.postForObject(url, usersDto, LoginDTO.class);
		
		mv.addObject("users", usersDto);
		
		req.setAttribute("users", usersDto);
		
		return mv;
	}
	
	
	//------------------------------------------------------------------------view java projects
	@GetMapping("/java")
	public ModelAndView getJavaProjects(@RequestParam("languages") String languages) {
		
		ModelAndView mav = new ModelAndView("java");
		
		ProjectsDTO[] projects = null;
		
		projects = webRestTemplate.getForObject("http://localhost:8088/api/projects/java/"+languages, ProjectsDTO[].class);
		
		Arrays.stream(projects).forEach(project -> System.out.println(project));
		Arrays.toString(projects);
		mav.addObject("projects", projects);
		
		return mav;
	}
	
	@GetMapping("/angular")
	public ModelAndView getAngularProjects(@RequestParam("languages") String languages) {
		
		ModelAndView mav = new ModelAndView("angular");
		
		ProjectsDTO[] projects = null;
		
		projects = webRestTemplate.getForObject("http://localhost:8088/api/projects/angular/"+languages, ProjectsDTO[].class);
		
		Arrays.stream(projects).forEach(project -> System.out.println(project));
		Arrays.toString(projects);
		mav.addObject("projects", projects);
		
		return mav;
	}
	
	@GetMapping("/javascript")
	public ModelAndView getJSProjects(@RequestParam("languages") String languages) {
		ModelAndView mav = new ModelAndView("js");
		
		ProjectsDTO[] projects = null;
		
		projects = webRestTemplate.getForObject("http://localhost:8088/api/projects/javascript/"+languages, ProjectsDTO[].class);
		
//		Arrays.stream(projects).forEach(project -> System.out.println(project));
		Arrays.toString(projects);
		mav.addObject("projects", projects);
		
		return mav;
	}
	
//redirect to project.jsp-------------------------------------------------------------------------TODO
	@GetMapping("/project")
	public ModelAndView goToProject(@RequestParam long id, ProjectsDTO projectsDto) {
		
		ModelAndView mv = new ModelAndView("/project");
		
		mv.addObject("projects", projectsDto);
		
		return mv;
	}
	
	
	//get project by title-------------------------------------------------------------------------TODO
//	@GetMapping("/project/{title}")
//	public ModelAndView getProjectById(@RequestParam long id, ProjectsDTO projects) {
//		
//		log.info("id: "+id);
//
//		ModelAndView mv = new ModelAndView("/project");
//		
//		webRestTemplate.getForObject("http://localhost:8088/projects/"+id, ProjectsDTO[].class);
//		
//		mv.addObject("projects", projects);
//		
//		return mv;
//	}
	
	
	@GetMapping(value = "/add")
	public ModelAndView addProjects() {
		ModelAndView mav = new ModelAndView("new-project");
		
		return mav;
	}
	
	//add project
	@PostMapping(value ="add", produces = "application/json")
	public String addProject(@ModelAttribute ProjectsDTO projectsDto, String title, ModelMap modelMap) {
		
			String url = "http://localhost:8088/api/projects";
			
			modelMap.addAttribute("projectsDto", projectsDto);
			
			projectsDto = webRestTemplate.postForObject(url, projectsDto, ProjectsDTO.class);
			
			log.info("projectsDto: " + projectsDto);
			
			return "new-project";
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	// redirect to update page
	@GetMapping("/update")
	public ModelAndView updateProject(@RequestParam("title") String title,
			@ModelAttribute ProjectsDTO project, ModelMap modelMap) {
		
		ModelAndView mv = new ModelAndView("update");
		
		mv.addObject("project", project);
		
		return mv;
	}
	
//TODO >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>FIX UPDATE
	@RequestMapping("/update")
	public String updateProjects(@RequestParam("title") String title, @ModelAttribute ProjectsDTO project,
			ModelMap modelMap, HttpServletResponse response) throws Exception {
		
		log.info("title " + title);
		String message = "";
		
		webRestTemplate.put("http://localhost:8088/api/projects/title/"+title, project, ProjectsDTO.class);
		
		modelMap.addAttribute("project", project);
		modelMap.addAttribute("updated successfully", message);
		response.sendRedirect("/java");
		
		return "java";
	}
	
	//------------------------------------------------------------------------------------------------delete java project
	@RequestMapping("/java/title")			
	public void deleteJava( @RequestParam("title") String title, HttpServletResponse response) throws Exception{
			log.info("title: "+title);
			webRestTemplate.delete("http://localhost:8088/api/projects/title/"+title);
			
			response.sendRedirect("/java?languages=java");
	}
	
	//------------------------------------------------------------------------------------------------delete angular project
	@RequestMapping("/angular/title")
	public void deleteAngular(@RequestParam("title") String title, HttpServletResponse response) throws Exception{
		log.info(title + " deleted");
		webRestTemplate.delete("http://localhost:8088/api/projects/title/"+title);
		
		response.sendRedirect("/angular?languages=angular");
	}
	
	//------------------------------------------------------------------------------------------------delete javascript project
	@RequestMapping("/javascript/title")
	public void deleteJS(@RequestParam("title") String title, HttpServletResponse response) throws Exception {
		log.info(title + " deleted");
		webRestTemplate.delete("http://localhost:8088/api/projects/title/"+title);
		response.sendRedirect("/javascript?languages=javascript");
	}
	
	@GetMapping("/logs")
	public String viewDocs() {
		
		return "logs1";
	}
}