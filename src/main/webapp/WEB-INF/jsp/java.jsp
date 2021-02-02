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
</head>

<body id="top">
    <!-- Header -->
    <header id="header" class="skel-layers-fixed">
        <h1><a href="/">PROJECTS</a></h1>
        <nav id="nav">
            <ul>
				<li class="dropdown">
					<span>NEW</span>
						<p class="dropdown-content">
							<a href="/add">NEW PROJECT</a>
							<a href="/addLink">NEW LINK</a>
						</p>
				</li>	            
                <li><a href="/blogs">BLOGS</a></li>
                <li class="dropdown">
                	<span>WEBSITES</span>
                		<p class="dropdown-content">
                			<a href="/website/?type=tutorials">WEBSITES</a><br>
                			<a href="/tool/?type=tool">TOOLS</a><br>
                			<a href="/github/?type=githubt">GITHUB</a>
                		</p>
                </li>
                <li class="dropdown">
                	<span><a href="/">MY PROJECTS</a></span>
	                	<p class="dropdown-content">
			                <a href="/angular?languages=angular">ANGULAR</a><br>
			                <a href="/javascript?languages=javascript">JAVASCRIPT</a>
	                	</p>
                </li>
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
						<table class="table table-striped"; class="alt">
	           <thead>
	               <tr id="projects">
	                   <th title="project title">Title</th>
	                   <th title="starting date">Date</th>
	                   <th title="project description">Description</th>
	                   <th title="type">Type</th>
	                   <th title="project status">Status</th>
	                   <th title="github link">Github</th>
	               </tr>
	           </thead>
               <tbody>
                   <c:forEach items="${projects}" var="project">
                       <tr>
                               <td>${project.title}</td>
                               <td>${project.date}</td>
                               <td>${project.description}</td>
                               <td>${project.type}</td>
                               <td>${project.status}</td>
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
                </div>
            </div>
            <hr class="major" />
            <table>
	           <thead>
	               <tr id="projects">
	                   <th title="project title">Title</th>
	                   <th title="starting date">Date</th>
	                   <th title="project description">Description</th>
	                   <th title="type">Type</th>
	                   <th title="project status">Status</th>
	                   <th title="github link">Github</th>
	               </tr>
	           </thead>
               <tbody>
                   <c:forEach items="${projects}" var="project">
                       <tr>
                               <td>${project.title}</td>
                               <td>${project.date}</td>
                               <td>${project.description}</td>
                               <td>${project.type}</td>
                               <td>${project.status}</td>
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