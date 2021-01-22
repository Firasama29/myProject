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
      	<link rel="stylesheet" href="/resources/css/login-style.css /">
    </head>

    <body>
        <h2>Login Form</h2>

        <div class="card">
                <form onsubmit="return validate()" action="/projects" method="get" name="myForm">
                    <div class="imgcontainer">
                        <img src="/WEB-INF/img/login2.png" alt="login" class="pic">
                    </div>

                    <div class="container">
                        <label for="email"><b>Email</b></label><br>
                        <input type="email" placeholder="Enter email" id="email"><br>

                        <label for="psw"><b>Password</b></label><br>
                        <input type="password" placeholder="Enter Password" id="password"><br>

                        <input type="submit" value="Login"><br>
                        <label>
    			<input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>
<!-- 	          <script> -->
// 	            var obj = [{
// 	                email: "ferasama@gmail.com",
// 	                password: "0987"
// 	            }]
	
// 	            function validate() {
	
// 	                var email = document.getElementById("email").value;
// 	                var password = document.getElementById("password").value;
	
	                
// 	                for (i = 0; i < obj.length; i++) {
// 	                    if (email != obj[i].email || password != obj[i].password) {
// 	                        alert("incorrect email or password");
// 	                        return false;
	
// 	                    } else {
// 	                        return true;
// 	                    }
// 	                }
<!-- </script> -->
    </body>

    </html>