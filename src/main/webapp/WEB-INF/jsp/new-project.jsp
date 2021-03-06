<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Add Project</title>
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
            <div class="container">
                <h2>Projects</h2> 
                <form action="/add" modelAttribute="projects" method="post">
                    <div>
                    	Title<input type="text" name="title" id="title" placeholder="title"/>
                    </div>
                    <div><br>
                    	Date<br><input type="date" name="date" id="date" placeholder="date"/>
                    </div><br>
                    <div>	
                    	Description<input type="text" name="description" id="description" placeholder="description"/><br>
                    </div>
                    <div>	
                    	Languages<input type="text" name="languages" id="languages" placeholder="languages"/><br>
                    </div>
                    <div>	
                    	Type<input type="text" name="type" id="type" placeholder="type"/><br>
                    </div>
                    <div>	
                    	Status<input type="text" name="status" id="status" placeholder="status"/><br>
                    </div>
                    <div>	
                    	IDE<input type="text" name="IDE" id="IDE" placeholder="IDE"/><br>
                    </div>
                    <div>	
                    	Github<input type="text" name="github" id="github" placeholder="github"/><br>
                    </div>
                    
                    <div>	
                    	<input type="submit" name="submit"><br><a href="/java?languages=java">cancel </a><a href="/java?languages=java">back</a><br>
                    </div>	
                    
                </form>
            </div>
        </body>

        </html>