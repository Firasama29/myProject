<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <title>Bootstrap Example</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        </head>
        <body>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/projects/java">Home</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="/">Logout</a></li>
                    </ul>
                </div>
            </nav>
            <div class="container">
                <h2>My Projects</h2>
                <p></p>
                <form action="/update" modelAttribute="project" method="post">
	                <table class="table table-striped">
	                    <thead>
	                        <tr>
	                        	<th></th>
	                            <th>Title</th>
	                            <th>Date</th>
	                            <th>Description</th>
	                            <th>Language</th>
	                            <th>status</th>
	                            <th>IDE</th>
	                        </tr>
	                    </thead>
	                    <tbody>
		                    <tr>
	                            <td><input type="hidden" name="id" value="${project.id}" readonly></td>
	                            <td><input type="text" name="title" placeholder="${project.title}"></td>
	                            <td><input type="date" name="date" placeholder="${project.date}"></td>
	                            <td><input type="text" name="description" placeholder="${project.description}"></td>
	                            <td><input type="text" name="languages" placeholder="${project.languages}"></td>
	                            <td><input type="text" name="status" placeholder="${project.status}"></td>
	                            <td><input type="text" name="IDE" placeholder="${project.IDE}"></td>
	                            <td>
	                            	<input type="submit" name="submit"><br><a href="/java">cancel</a><br><a href="/java">back</a>
								</td>
		                    </tr>
	                    </tbody>
	                </table>
                </form>
                ${message}
            </div>
        </body>

        </html>