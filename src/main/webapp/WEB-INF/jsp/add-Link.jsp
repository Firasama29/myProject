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
	                	<p class="dropdown-content">
	                		<a href="/angular?languages=angular">ANGULAR</a><br>
		                	<a href="/java?languages=java">JAVA</a><br>
			                <a href="/javascript?languages=javascript">JAVASCRIPT</a>
	                	</p>
                </li>
            </ul>
        </nav>
    </header>
    		${message}
            <div class="container">
                <h2>Projects</h2> 
                <form action="/addLink" modelAttribute="websites" method="post">
                    <div>
                    	Name<input type="text" name="name" id="name" placeholder="name"/>
                    </div>
                    <div><br>
                    	CATEGORY<br><input type="text" name="categories" id="categories" placeholder="categories"/>
                    </div><br>
                    <div>	
                    	DESCRIPTION<input type="text" name="topics" id="topics" placeholder="topics"/><br>
                    </div>
                    <div>	
                    	TYPE<input type="text" name="type" id="type" placeholder="type"/><br>
                    </div>
                    <div>	
                    	LINK<input type="text" name="url" id="url" placeholder="url"/><br>
                    </div>
                    <div>	
                    	<input type="submit" name="submit"><br><a href="/java?languages=java">cancel </a><a href="/java?languages=java">back</a><br>
                    </div>	
                </form>
            </div>
        </body>

        </html>