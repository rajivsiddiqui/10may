<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css">
    <link href="${contextPath}/resources/css/profile.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="panel panel-default">
                <div class="panel-body">

                      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

                      <%
                          Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                          String username = auth != null ? auth.getName() : "";
                      %>
                      <p>Welcome, <%= username %>!!!!</p>

                      <br><br>

                      <c>
                          <a href="${contextPath}/users" class="btn btn-success">Show All Users</a>
                      </c>




                </div>
            </div>
       </div>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </c:if>
</div>
<script type="text/javascript">
$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
	$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
