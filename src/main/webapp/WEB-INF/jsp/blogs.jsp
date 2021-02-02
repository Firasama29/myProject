<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
	                	<p class="dropdown-content">
		                	<a href="/angular?languages=angular">ANGULAR</a><br>
		                	<a href="/java?languages=java">JAVA</a><br>
			                <a href="/javascript?languages=javascript">JAVASCRIPT</a>
	                	</p>
                </li>
            </ul>
        </nav>
    </header>
</body>
</html>