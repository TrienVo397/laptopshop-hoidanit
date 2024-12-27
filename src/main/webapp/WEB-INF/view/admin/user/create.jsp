<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Create User</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => { // tp preview picture
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>

            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp"></jsp:include>
                <!-- Side nav bar -->
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp"></jsp:include>

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Users</li>
                                </ol>
                            </div>
                            <div class=" mt-5 mx-md-5 mx-1 d-flex justify-content-center ">
                                <form:form class="mx-auto" method="post" action="/admin/user/create"
                                    modelAttribute="newUser" enctype = "multipart/form-data">
                                    <h1>Create a user</h1>
                                    <hr style="background-color: aqua;">

                                    <div class="row">
                                        <div class="form-group my-3" style="display: none;">
                                            <label for="id">Id</label>
                                            <form:input type="text" class="form-control" path="id" name="id" />
                                        </div>
                                        <div class="form-group my-3 col-md-6 col-12 ">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <form:input type="email" class="form-control" path="email"
                                                aria-describedby="emailHelp" />
                                        </div>

                                        <div class="form-group my-3  col-md-6 col-12 ">
                                            <label for="exampleInputPassword1">Password</label>
                                            <form:input type="password" class="form-control" path="password" />
                                        </div>
                                        <div class="form-group my-3  col-md-6 col-12 ">
                                            <label for="fullName">Full Name</label>
                                            <form:input type="text" class="form-control" path="fullName"
                                                name="fullName" />
                                        </div>
                                        <div class="form-group my-3  col-md-6 col-12 ">
                                            <label for="phoneNumber">Phone Number</label>
                                            <form:input type="tel" class="form-control" path="phone"
                                                name="phoneNumber" />
                                        </div>
                                        <div class="form-group my-3 col-12 ">
                                            <label for="address">Address</label>
                                            <form:input type="text" class="form-control" path="address"
                                                name="address" />
                                        </div>
                                    
                                        <div class="form-group my-3 col-md-6 col-12">
                                            <label for="address">Role:</label>
                                            <form:select class="form-select" aria-label="Default select example" path = "role.name">
                                                <form:option  value = "ADMIN">Admin</form:option>
                                                <form:option value="USER">User</form:option>
                                            </form:select>
                                        </div>

                                        <div class="form-group my-3 col-md-6 col-12">
                                            <label for="formFile">Avatar:</label>
                                            <input class="form-control" type="file" id="avatarFile"
                                                accept=".png, .jpg, .jpeg" name="hoidanitFile"
                                                />
                                        </div>

                                        <div class="col-12 mb-3">
                                            <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                id="avatarPreview">
                                        </div>


                                        <button type="submit" class="btn btn-primary col-3">Create</button>
                                    </div>
                                </form:form>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp"></jsp:include>

                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>

                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/datatables-simple-demo.js"></script>
            </body>

            </html>