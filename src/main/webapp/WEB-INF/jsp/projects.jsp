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
                body {
                    font-family: Arial, Helvetica, sans-serif;
                }
                
                .navbar {
                    position: relative;
                    width: 100%;
                }
                
                .a {
                    color: white;
                    text-decoration: none;
                    font-size: 11px;
                }
                
                .a2 {
                    color: black;
                    text-decoration: none;
                    font-size: 16px;
                }
                
                a:hover {
                    text-decoration: none;
                }
                
                .dropbtn {
                    background-color: #ddd;
                    margin-top: 8px;
                    color: black;
                    padding: 6px;
                    font-size: 16px;
                    border: none;
                    display: block;
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
                    padding: 14px 16px;
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
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/add" style="font-size: 16px;">Add a new Project</a>
                        <div class="dropdown" class="navbar navbar-inverse">
                            <button onclick="myFunction()" class="dropbtn">Search projects</button>
                            <div id="myDropdown" class="dropdown-content">
                                <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
                                <c:forEach items="${projects}" var="project">
                                    <a href="project?id=${project.id}">${project.title}</a>
                                </c:forEach>
                            </div>
                        </div>
                        <a class="navbar-brand" href="/logs" style="font-size: 16px;">Logs</a>

                    </div>
                </div>
                <a class="navbar-brand" href="/" style="font-size: 16px; float: right; margin-top: -50px;">Logout</a>
            </nav>

            <div class="container">
                <p></p>
                <form action="/add" method="post" modelAttribute="projectsArray">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th title="project title">Title</th>
                                <th title="starting date">Date</th>
                                <th title="project description">Description</th>
                                <th title="project status">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${projects}" var="project">
                                <tr>
                                    <%--                                     <td>${project.id}</td> --%>
                                        <td>${project.title}</td>
                                        <td>${project.date}</td>
                                        <td>${project.description}</td>
                                        <td>${project.status}</td>
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
            <script>
                function myFunction() {
                    document.getElementById("myDropdown").classList.toggle("show");
                }

                function filterFunction() {
                    var input, filter, ul, li, a, i;
                    input = document.getElementById("myInput");
                    filter = input.value.toUpperCase();
                    div = document.getElementById("myDropdown");
                    a = div.getElementsByTagName("a");
                    for (i = 0; i < a.length; i++) {
                        txtValue = a[i].textContent || a[i].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            a[i].style.display = "";
                        } else {
                            a[i].style.display = "none";
                        }
                    }
                }
            </script>
        </body>

        </html>