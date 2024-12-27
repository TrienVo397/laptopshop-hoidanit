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
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
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
                            <div class="container mt-5">
                                <form:form class="col col-md-9 mx-auto" method="post" action="/admin/user/update"
                                    modelAttribute="currentUser"  enctype = "multipart/form-data">
                                    <!-- <a href="/admin/user"><button class="btn btn-primary mb-3">Back</button></a> -->
                                    <h1>Update your Info</h1>

                                    <hr style="background-color: aqua;">
                                    <div class="form-group my-3" style="display: none;">
                                        <label for="id">Id</label>
                                        <form:input type="text" class="form-control" path="id" name="id" />
                                    </div>
                                    <div class="form-group my-3">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <form:input type="email" class="form-control" path="email"
                                            aria-describedby="emailHelp" disabled="true" />
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

                                    <!-- preview pic -->
                                     <div class="col-12 mb-3">
                                            <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                id="avatarPreview">
                                        </div>

                                    <button type="submit" class="btn btn-warning">Update</button>
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