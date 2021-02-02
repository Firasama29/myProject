package com.doc.myprojects.controller;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.doc.myprojects.dto.LinksDTO;
import com.doc.myprojects.dto.LoginDTO;
import com.doc.myprojects.dto.ProjectsDTO;
import com.doc.myprojects.rest.template.WebRestTemplate;

@Controller
public class ProjectController extends RestTemplate{
	
	WebRestTemplate webRestTemplate = new WebRestTemplate();
	
	Logger log = LoggerFactory.getLogger(ProjectController.class);

	//------------------------------------------------------------------------index page
	@GetMapping("/main")
	public String viewIndex() {
		return "index";
	}
	
	//------------------------------------------------------------------------sign-up page
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	//------------------------------------------------------------------------login page
	@GetMapping("/login")
	public String viewLogin() {
		return "login";
	}
	
	//------------------------------------------------------------------------add-websites page
	@GetMapping("/addLink")
	public String addLink(@ModelAttribute LinksDTO linksDto) {
		return "add-Link";
	}
	
	//------------------------------------------------------------------------add websites
	@PostMapping("/addLink")
	public String addWebsites(@ModelAttribute LinksDTO linksDto, Model model) {
		String message = "saved";
		String url = "http://localhost:8086/api/links/";
		
		linksDto = webRestTemplate.postForObject(url, linksDto, LinksDTO.class);
		
		model.addAttribute("links", linksDto);
		model.addAttribute("message", message);
		
		log.info("links: ", linksDto);
		
		return "redirect:addLink";
	}
	
	//------------------------------------------------------------------------blogs page
	@GetMapping("/blogs")
	public String viewBlogs() {
		return "blogs";
	}
	
	//------------------------------------------------------------------------tools page
	@GetMapping("/addTool")
	public ModelAndView redirectToTools() {
		ModelAndView mav = new ModelAndView("/add-tool");
		
		return mav;
	}
		
	//login
	@PostMapping("/login")
	public ModelAndView loginPage(LoginDTO usersDto, HttpServletRequest req ) {
		
		ModelAndView mv = new ModelAndView("login");
		
		String url = "http://localhost:8083/";
		
		usersDto = webRestTemplate.postForObject(url, usersDto, LoginDTO.class);
		
		mv.addObject("users", usersDto);
		
		req.setAttribute("users", usersDto);
		
		return mv;
	}
	
	//----------------------------------------------------------------------------view java projects
	@GetMapping("/java")
	public ModelAndView getJavaProjects(@RequestParam("languages") String languages) {
		
		ModelAndView mav = new ModelAndView("java");
		
		ProjectsDTO[] projects = null;
		
		projects = webRestTemplate.getForObject("http://localhost:8083/api/projects/"+languages, ProjectsDTO[].class);
		
		Arrays.stream(projects).forEach(project -> System.out.println(project));
		Arrays.toString(projects);
		mav.addObject("projects", projects);
		
		return mav;
	}
	//----------------------------------------------------------------------------view angular projects
	@GetMapping("/angular")
	public ModelAndView getAngularProjects(@RequestParam("languages") String languages) {
		
		ModelAndView mav = new ModelAndView("angular");
		
		ProjectsDTO[] projects = null;
		
		projects = webRestTemplate.getForObject("http://localhost:8083/api/projects/"+languages, ProjectsDTO[].class);
		
		Arrays.stream(projects).forEach(project -> System.out.println(project));
		Arrays.toString(projects);
		mav.addObject("projects", projects);
		
		return mav;
	}
	//----------------------------------------------------------------------------view javascript projects
	@GetMapping("/javascript")
	public ModelAndView getJSProjects(@RequestParam("languages") String languages) {
		ModelAndView mav = new ModelAndView("js");
		
		ProjectsDTO[] projects = null;
		
		projects = webRestTemplate.getForObject("http://localhost:8083/api/projects/"+languages, ProjectsDTO[].class);
		
//		Arrays.stream(projects).forEach(project -> System.out.println(project));
		Arrays.toString(projects);
		mav.addObject("projects", projects);
			
		return mav;
	}
	
	//----------------------------------------------------------------------------view tools websites
	@GetMapping("/tool")
	public ModelAndView viewTools(@RequestParam("type") String type) {
		ModelAndView mav = new ModelAndView("tools");
		
		LinksDTO[] links = webRestTemplate.getForObject("http://localhost:8086/api/links/"+type, LinksDTO[].class);
		
		Arrays.toString(links);
		
		mav.addObject("links", links);
		
		return mav;
	}
	
	//----------------------------------------------------------------------------view tutorial websites
	@GetMapping("/website")
	public ModelAndView viewWebsites(@RequestParam("type") String type) {
		ModelAndView mav = new ModelAndView("websites");
		
		LinksDTO[] links = webRestTemplate.getForObject("http://localhost:8086/api/links/"+type, LinksDTO[].class);
		
		Arrays.toString(links);
		
		mav.addObject("links", links);
		
		return mav;
	}
	//----------------------------------------------------------------------------view github repositories
	@GetMapping("/github")
	public ModelAndView viewGithubRepositories(@RequestParam("type") String type) {
		ModelAndView mav = new ModelAndView("git-repositories");
		
		LinksDTO[] links = webRestTemplate.getForObject("http://localhost:8086/api/links/" + type, LinksDTO[].class);
		
		Arrays.toString(links);
		
		mav.addObject("links", links);
		
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
	
	
	@GetMapping("/add")
	public String addProjects(@ModelAttribute ProjectsDTO projectsDto) {
		return "new-project";
	}
	
	//add project
	@PostMapping("/add")
	public String addProject(@ModelAttribute ProjectsDTO projectsDto, Model model) {

		String url = "http://localhost:8083/api/projects/";
		
		projectsDto = webRestTemplate.postForObject(url, projectsDto, ProjectsDTO.class);
		
		model.addAttribute("projects", projectsDto);
		
		log.info("projects: ", projectsDto);
		
		return "redirect:/add";
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
		
		webRestTemplate.put("http://localhost:8083/api/projects/title/"+title, project, ProjectsDTO.class);
		
		modelMap.addAttribute("project", project);
		modelMap.addAttribute("updated successfully", message);
		response.sendRedirect("/java");
		
		return "java";
	}
	
	//------------------------------------------------------------------------------------------------delete java project
	@RequestMapping("/java/title")			
	public String deleteJava( @RequestParam("title") String title) throws Exception{
			
			log.info("title: "+title);
			webRestTemplate.delete("http://localhost:8083/api/projects/title/"+title);
			
			return "redirect:/java?languages=java";
	}
	
	//------------------------------------------------------------------------------------------------delete angular project
	@RequestMapping("/angular/title")
	public String deleteAngular(@RequestParam("title") String title) throws Exception{
		
		log.info(title + " deleted");
		webRestTemplate.delete("http://localhost:8083/api/projects/title/"+title);
		
		return "redirect:/angular?languages=angular";
	}
	
	//------------------------------------------------------------------------------------------------delete javascript project
	@RequestMapping("/javascript/title")
	public String deleteJS(@RequestParam("title") String title) throws Exception {
		
		log.info(title + " deleted");
		webRestTemplate.delete("http://localhost:8083/api/projects/title/"+title);
		
		return "redirect:/javascript?languages=javascript";
	}
	
	@GetMapping("/logs")
	public String viewDocs() {
		
		return "logs1";
	}
}