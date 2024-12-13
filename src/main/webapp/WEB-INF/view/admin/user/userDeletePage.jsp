<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

        <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Delete Page ${userById.id}</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <h1>Delete user ${currentUser.id}</h1>
                    <hr>

                    <form:form method = "post" action="/admin/user/delete" modelAttribute = "currentUser">
                        <div class="form-group my-3" style="display: none;">
                            <label for="id">Id</label>
                            <form:input type="text" class="form-control" path="id" name="id" value ="${currentUser.id}"/>
                        </div>    
                            <label for="email">email</label>
                            <form:input type="text" class="form-control" path="" name="email" value ="${currentUser.email}"/>
                            <form:input type="text" class="form-control" path="fullName" name="" />
                            
                           
                    <button class="btn btn-danger">Delete</button></form:form>
                    
                    
                </div>
            </body>

            </html>