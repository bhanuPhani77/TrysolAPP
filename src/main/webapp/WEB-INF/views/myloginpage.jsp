<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <div>
            <form:form action="${pagecontext.request.contextpath}/login" method="post">
             username:   <form:input class="form-control" id="username" path="username" placeholder="user-name" value="" />
               Password: <form:input class="form-control"  id="password" path="password" placeholder="Password" value="" />
               <button type="submit">Login</button>
            </form:form>
        </div>
    </body>
</html>