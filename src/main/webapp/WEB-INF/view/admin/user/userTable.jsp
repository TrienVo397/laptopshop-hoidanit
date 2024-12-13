<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Table</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="d-flex justify-content-between
                    ">
                        <h1>User Table</h1>
                        <a href="/admin/user/create"><button class="btn btn-primary">Create a user</button></a>
                    </div>

                    <hr>

                    <table class="table table-hover table-bordered ">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Email</th>
                                <th scope="col">Full name</th>
                                <th scope="col">Action
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${users1}">

                                <tr>
                                    <th scope="row">${user.id}</th>
                                    <td>${user.email}</td>
                                    <td>${user.fullName}</td>
                                    <td>
                                        <a href="/admin/user/${user.id}"><button class="btn btn-success">View</button></a>
                                        <a href="/admin/user/update/${user.id}"><button class="btn btn-warning">Update</button></a>
                                        <a href="/admin/user/delete/${user.id}"><button class="btn btn-danger">Delete</button></a>
                                    </td>
                                </tr>

                            </c:forEach>
                            <!-- <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>
                                <button class="btn btn-success">View</button>
                                <button class="btn btn-warning">Update</button>
                                <button class="btn btn-danger">Delete</button>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td colspan="2">Larry the Bird</td>
                            <td>@twitter</td>
                          </tr> -->
                        </tbody>
                    </table>



                </div>
            </body>

            </html>