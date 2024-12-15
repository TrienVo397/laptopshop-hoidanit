<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

        <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Update Page ${userById.id}</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <form:form class="col col-md-9 mx-auto" method="post" action="/admin/user/update"
                        modelAttribute="currentUser">
                        <a href="/admin/user"><button class="btn btn-primary mb-3">Back</button></a>
                        <h1>Update your Info</h1>

                        <hr style="background-color: aqua;">
                        <div class="form-group my-3" style="display: none;">
                            <label for="id">Id</label>
                            <form:input type="text" class="form-control" path="id" name="id" />
                        </div>
                        <div class="form-group my-3">
                            <label for="exampleInputEmail1">Email address</label>
                            <form:input type="email" class="form-control" path="email" aria-describedby="emailHelp" disabled = "true"
                                 />
                        </div>
                        <div class="form-group my-3" style="display: none;">
                            <label for="exampleInputPassword1">Password</label>
                            <form:input type="password" class="form-control" path="password" />
                        </div>

                        <div class="form-group my-3">
                            <label for="fullName">Full Name</label>
                            <form:input type="text" class="form-control" path="fullName" name="fullName" />
                        </div>
                        <div class="form-group my-3">
                            <label for="phoneNumber">Phone Number</label>
                            <form:input type="tel" class="form-control" path="phone" name="phoneNumber" />
                        </div>
                        <div class="form-group my-3">
                            <label for="address">Address</label>
                            <form:input type="text" class="form-control" path="address" name="address" />
                        </div>

                        <button type="submit" class="btn btn-warning">Update</button>
                    </form:form>
                </div>
            </body>

            </html>