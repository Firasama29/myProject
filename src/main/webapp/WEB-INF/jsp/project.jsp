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
            <style>
                .dropbtn {
                    background-color: #ddd;
                    color: black;
                    padding: 16px;
                    font-size: 16px;
                    border: none;
                }
                
                .dropdown {
                    position: relative;
                    display: inline-block;
                }
                
                .dropdown-content {
                    display: none;
                    position: absolute;
                    background-color: #ddd;
                    min-width: 160px;
                    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                    z-index: 1;
                }
                
                .dropdown-content a {
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                }
                
                .dropdown-content a:hover {
                    background-color: #ddd;
                }
                
                .dropdown:hover .dropdown-content {
                    display: block;
                }
                
                .dropdown:hover .dropbtn {
                    background-color: #ddd;
                }
            </style>
        </head>

        <body>
            <nav class="navbar navbar-inverse">
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="/projects">Home</a></li>
                        <li><a href="/">Logout</a></li>
                    </ul>
                </div>

            </nav>
            <div class="container">
                <h2>Projects</h2>
                <p></p>
                <form action="/addProject" method="post" modelAttribute="projectsArray">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Title</th>
                                <th>Date</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${projects}" var="project">
                                <tr>
                                    <td>${project.id}</td>
                                    <td>${project.title}</td>
                                    <td>${project.date}</td>
                                    <td>${project.description}</td>
                                    <td>
                                        <a href="/update?id=${project.id}" class="a2" title="edit"><img src="https://img.icons8.com/material-rounded/15/000000/edit.png" /></a>
                                        <a href="/delete?id=${project.id}" class="a2" title="delete"><img src="https://img.icons8.com/material-two-tone/15/000000/delete-sign.png" /></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>

        </body>

        </html>