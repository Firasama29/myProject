<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<head>
    <title>Java Projects</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/skel.min.js"></script>
    <script src="/resources/js/skel-layers.min.js"></script>
    <script src="/resources/js/init.js"></script>
      <link rel="stylesheet" href="/resources/css/skel.css" />
      <link rel="stylesheet" href="/resources/css/style.css" />
      <link rel="stylesheet" href="/resources/css/style-xlarge.css" />
      
      <!--collapsible list-->
      <style>
	.collapsible {
	  background-color: #777;
	  color: white;
	  cursor: pointer;
	  padding: 18px;
	  width: 100%;
	  border: none;
	  text-align: left;
	  outline: none;
	  font-size: 15px;
	}
	
	.active, .collapsible:hover {
	  background-color: #555;
	}
	
	.collapsible:after {
	  content: '\002B';
	  color: white;
	  font-weight: bold;
	  float: right;
	  margin-left: 5px;
	}
	
	.active:after {
	  content: "\2212";
	}
	
	.content {
	  padding: 0 18px;
	  max-height: 0;
	  overflow: hidden;
	  transition: max-height 0.2s ease-out;
	  background-color: #f1f1f1;
	}
</style>
</head>

<body id="top">
    <!-- Header -->
    <header id="header" class="skel-layers-fixed">
        <h1><a href="/">Logo</a></h1>
        <nav id="nav">
            <ul>
            	<li><a href="/add">NEW PROJECT</a></li>
            	<li><a href="/websites">WEBSITES</a></li>
                <li><a href="blogs">BLOGS</a></li>
            	<li><a href="tools">TOOLS</a></li>
                <li><a href="/">FRONT-END</a></li>
                <li><a href="/#backend">BACK-END</a></li>
                <li><a href="/">HOME</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main -->
    <section id="main" class="wrapper style1">
        <header class="major">
            <h2>Java/Spring Boot Projects</h2>
        </header>
        <div class="container">
            <div class="row">
                <div class="4u">
                    <section>
                        <img class="image spring-img" src="/SB.png"/>
                        <h3>ffff</h3>
                        <p>
                            Something something something something
                        </p>
                        <img class="image sb-img" src="springboot.png"/>
                        <img class="image java-img" src="java.png"/>
                    </section>
                    <hr />
                    
					<button class="collapsible">CORE JAVA</button>
					<div class="content">
						<p>Core java projects</p>
					</div>
					
					<button class="collapsible">ADVANCED-JAVA</button>
					<div class="content">
						<p>Advanced java projects</p>
					</div>
					
					<button class="collapsible">SPRING BOOT</button>
					<div class="content">
						<ul class="alt">
                        	<c:forEach items="${projects}" var="project">
	                            <li><a href="#projects">${project.title}</a></li>
                            </c:forEach>
                        </ul>
					</div>
                </div>
            </div>
            <hr class="major" />
            <table class="table table-striped">
	           <thead>
	               <tr id="projects">
	                   <th title="project title">Title</th>
	                   <th title="starting date">Date</th>
	                   <th title="project description">Description</th>
	                   <th title="coding languages">Languages</th>
	                   <th title="type">Type</th>
	                   <th title="project status">Status</th>
	                   <th title="IDE">IDE</th>
	                   <th title="github link">Github</th>
	               </tr>
	           </thead>
               <tbody>
                   <c:forEach items="${projects}" var="project">
                       <tr>
                               <td>${project.title}</td>
                               <td>${project.date}</td>
                               <td>${project.description}</td>
                               <td>${project.languages}</td>
                               <td>${project.type}</td>
                               <td>${project.status}</td>
                               <td>${project.IDE}</td>
                               <td><a href="https://firasama29@github.com" target="blank">${project.github}</a></td>
                               <td>
                                   <a href="/update?title=${project.title}" class="a2" title="edit"><img src="https://img.icons8.com/material-rounded/15/000000/edit.png" /></a>
                                   <a href="java/title?title=${project.title}" class="a2" title="delete"><img src="https://img.icons8.com/material-two-tone/15/000000/delete-sign.png" /></a>
                               </td>
                       </tr>
                   </c:forEach>
               </tbody>
		    </table>
        </div>
    </section>

    <!-- Footer -->
    <footer id="footer">
        <div class="container">
            <div class="row double">
                <div class="6u">
                    <div class="row collapse-at-2">
                        <div class="6u">
                            <h3>Accumsan</h3>
                            <ul class="alt">
                                <li><a href="#">Nascetur nunc varius</a></li>
                            </ul>
                        </div>
                        <div class="6u">
                            <h3>Faucibus</h3>
                            <ul class="alt">
                                <li><a href="#">Nascetur nunc varius</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <ul class="icons">
                    <li>
                        <a href="https://github.com/Firasama29" target="_blank" class="icon fa-github"><span class="label">Github</span></a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/feed/" target="_blank" class="icon fa-linkedin"><span class="label">LinkedIn</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="copyright">
            <li>&copy;All rights reserved.</li>
            <li>Design: <a href="http://templated.co">TEMPLATED</a></li>
            <li>Images: <a href="http://unsplash.com">Unsplash</a></li>
        </ul>
    </footer>
    <!-- For collapsible list -->
    <script>
	var coll = document.getElementsByClassName("collapsible");
	var i;
	
	for (i = 0; i < coll.length; i++) {
	  coll[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var content = this.nextElementSibling;
	    if (content.style.maxHeight){
	      content.style.maxHeight = null;
	    } else {
	      content.style.maxHeight = content.scrollHeight + "px";
	    } 
	  });
	}
	</script>
</body>

</html>