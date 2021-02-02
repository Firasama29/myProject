<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
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
                <li ><a class="listing" href="/blogs">BLOGS</a></li>
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

	<h2>USEFUL WEBSITES</h2>
	<p>This section lists down some of the most useful web-sites</p>
		<div>
			<table>
				<tr>
					<th><h3><strong>WEB-SITE</strong></h3></th>
					<th><h3><strong>Category</strong></h3></th>
					<th><h3><strong>LINK</strong></h3></th>
				</tr>
						<c:forEach items="${links}" var="link">
							<tr>
					  			<td><a href="${link.url}" target="_blank">${link.linkName}</a></td>
					  			<td><a href="${link.url}" target="_blank">${link.categories}</a></td>
					  			<td><a href="${link.url}" target="_blank">${link.url}</a></td>
							</tr>
<%-- 						</c:forEach> --%>
					</c:forEach>	
			</table>	
		</div>
</body>
</html>
