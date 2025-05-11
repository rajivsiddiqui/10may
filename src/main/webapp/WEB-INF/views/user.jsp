<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UserData</title>
    <!-- Stylesheets -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/profile.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://bootswatch.com/cosmo/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
       body {
           padding-top: 70px; /* Adjusted for fixed navbar */
           background-image: url("${contextPath}/resources/Images/background1333.jpg");
           background-color: #cccccc;
           background-size: cover; /* Make sure the image covers the entire area */
           background-position: center; /* Center the image */
           background-repeat: no-repeat; /* Prevent the image from repeating */
           font-family: 'Poppins', sans-serif; /* Apply Poppins font */
       }


        .navbar-wrapper {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 20;
            background-color: #e3f2fd; /* Navbar background color */
            border-bottom: 2px solid #003366;
        }

        .navbar-brand {
            color: black; /* Navbar brand text color */
            font-family: 'Poppins', sans-serif;
            font-size: 22px;
            font-weight: bold;
        }

        .container {
            border-style: solid;
            background-color: #ffffff;
            width: 80%;
            margin: 0 auto; /* Center align container */
            padding: 20px; /* Add padding for better spacing */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
        }

        .table {
            background-color: #fff; /* Table background */
            margin: 20px 0; /* Spacing around the table */
        }

        .table th, .table td {
            text-align: center; /* Center align table content */
        }

        .btn-danger {
            background-color: #e53935; /* Red color for the back button */
            border-color: #e53935;
        }

        .btn-danger:hover {
            background-color: #d32f2f; /* Darker red on hover */
            border-color: #d32f2f;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="container">
        <div class="table-responsive">
            <h2 align="center">User Details</h2>
            <table class="table table-bordered">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.username}"/></td>
                    <td><c:out value="${user.userEmail}"/></td>
                </tr>
            </table>

            <h2 align="center" style="color: green">${{Result}} <a href="${contextPath}/users" class="btn btn-danger"> Back</a> </h2>
        </div>
    </div>
</body>
</html>
