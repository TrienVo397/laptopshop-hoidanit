<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <form:form class="col col-md-9 mx-auto" method="post" action="/admin/user/create1"
                            modelAttribute="newUser">

                            <h1>Create a user</h1>
                            <hr style="background-color: aqua;">
                            <div class="form-group my-3">
                                <label for="exampleInputEmail1">Email address</label>
                                <form:input type="email" class="form-control" path="email"
                                    aria-describedby="emailHelp" />
                            </div>
                            <div class="form-group my-3">
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

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form:form>
                    </div>
                </div>
            </body>

            </html>