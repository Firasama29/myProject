<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
    <title>My Project</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <script src="https://kit.fontawesome.com/8aa392b448.js" crossorigin="anonymous"></script>
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
                			<a href="/github/?type=github">GITHUB</a>
                		</p>
                </li>
                <li class="dropdown">
                	<span><a href="/">MY PROJECTS</a></span>
	                	<p class="dropdown-content" style="color: black">
		                	<a  href="/angular?languages=angular">ANGULAR</a><br>
		                	<a style="color: black" href="/java?languages=java">JAVA</a><br>
			                <a style="color: black" href="/javascript?languages=javascript">JAVASCRIPT</a>
	                	</p>
                </li>
            </ul>
        </nav>
    </header>

    <!-- Banner -->
    <section id="banner">
        <div class="inner">
            <h2>My Projects</h2>
            <p>Listing both front-end and back-end personal projects
            </p>
            <ul class="actions">
                <li><a href="/login" class="button big special">Login</a></li>
                <li><a href="/signup" class="button big special">Signup</a></li>
            </ul>
        </div>
    </section>

    <!-- One -->
    <section id="one" class="wrapper style1">
        <header class="major">
            <h2>Ipsum feugiat consequat</h2>
        </header>
        <div class="container">
            <div class="row">
                <div class="4u">
                    <a href="/angular?languages=angular" class="links">	
                    	<section class="special box" id="frontend">
                            <i class="fab fa-angular"></i>
                            <h3>Angular</h3>
                            <p>This section consists of Angular Projects</p><br>
                            <p class="minimze">#angular #front-end</p>
                    	</section>
                    </a>	
                </div>

                <div class="4u">
					<a href="/javascript?languages=javascript" class="links">	
						<section class="special box" id="frontend">
                            <i class="fab fa-js"></i>
                            <h3>JavaScript</h3>
                            <p>This section contains HTML/CSS/JavaScript practice projects</p>
                            <p class="minimze">#javascript #js #front_end</p>
                    	</section>
                    </a>	
                </div>
                <div class="4u">
                	<a href="java?languages=java" class="links">
                    	<section class="special box"  id="backend">
	                        <i class="fab fa-java"></i>
	                        <h3>Java/Spring-Boot</h3>
	                        <p>This section contains projects using Spring Boot, REST APIs. etc.</p>
	                        <p class="minimze">#java #spring-boot #rest-api #back_end</p>
                    	</section>
                    </a>	
                </div>
                
            </div>
        </div>
        </section>
</body>

</html>