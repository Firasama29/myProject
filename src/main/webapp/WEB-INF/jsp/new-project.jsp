<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Bootstrap Example</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="/resources/css/skel.css" />
      		<link rel="stylesheet" href="/resources/css/style.css" />
      		<link rel="stylesheet" href="/resources/css/style-xlarge.css" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        </head>
        <body>
            <header id="header" class="skel-layers-fixed">
		        <h1><a href="#">Home</a></h1>
		        <nav id="nav">
		            <ul>
		                <li><a href="/javascript?languages=javascript">JavaScript</a></li>
		                <li><a href="/angular?languages=angular">Angular</a></li>
		                <li><a href="/java?languages=java">Java/Spring Boot</a></li>
		                <li><a href="/">Home</a></li>
		                <li><a href="/signup" class="button special">Sign Up</a></li>
		            </ul>
        		</nav>
   		    </header>
            <div class="container">
                <h2>Projects</h2> 
                <form action="/add" modelAttribute="projectsDto" method="post">
                                Title
                                Date
                                Description
                                Languages
                                Status
                                Tools
                               <input type="text" name="title" id="title" placeholder="title"/><br>
                                <input type="date" name="date" id="date" placeholder="date"/><br>
                                <input type="text" name="description" id="description" placeholder="description"/><br>
                                <input type="text" name="languages" id="languages" placeholder="languages"/><br>
                                <input type="text" name="type" id="type" placeholder="front-end/back-end"/><br>
                                <input type="text" name="status" id="status" placeholder="project status"/><br>
                                <input type="text" name="tools" id="tools" placeholder="tools"><br>
                                <input type="submit" name="submit"><br><a href="/java?languages=java">cancel </a><a href="/java?languages=java">back</a><br>
                </form>
            </div>
        </body>

        </html>