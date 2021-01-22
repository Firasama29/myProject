<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
    <title>Angular Projects</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-layers.min.js"></script>
    <script src="js/init.js"></script>
      <link rel="stylesheet" href="/resources/css/skel.css" />
      <link rel="stylesheet" href="/resources/css/style.css" />
      <link rel="stylesheet" href="/resources/css/style-xlarge.css" />
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
                <li><a href="/#frontend">HOME</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main -->
    <section id="main" class="wrapper style1">
        <header class="major">
            <h2>JavaScript Projects</h2>
        </header>
        <div class="container">
            <div class="row">
                <div class="4u">
                    <section>
                        <img class="image spring-img" src="SB.png" alt="" />
                        <h3>ffff</h3>
                        <p>
                            Something something something something
                        </p>
                        <img class="image sb-img" src="springboot.png" alt="" />
                        <img class="image java-img" src="java.png" alt="" />
                    </section>
                    <hr />
                    <!--TODO do something-->
                    <section>
                        <h3>Projects</h3>
                        <ul class="alt">
                        	<c:forEach items="${projects}" var="project">
	                            <li><a href="#projects">${project.title}</a></li>
                            </c:forEach>
                        </ul>
                    </section>
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
                               <td>${project.github}</td>
                               <td>
                                   <a href="/update?title=${project.title}" class="a2" title="edit"><img src="https://img.icons8.com/material-rounded/15/000000/edit.png" /></a>
                                   <a href="javascript/title?title=${project.title}" class="a2" title="delete"><img src="https://img.icons8.com/material-two-tone/15/000000/delete-sign.png" /></a>
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
                        <a href="#" class="icon fa-github"><span class="label">Github</span></a>
                    </li>
                    <li>
                        <a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a>
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
</body>

</html>