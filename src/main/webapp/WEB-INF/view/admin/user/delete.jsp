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
        </head>
        
        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp"></jsp:include>
            <!-- Side nav bar -->
            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp"></jsp:include>
        
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Manage Users</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                <li class="breadcrumb-item active">Users</li>
                            </ol>
                        </div>
                        <div class="container mt-5">
                            <h1>Delete User ${currentUser.id}</h1>
                            <hr>
        
                            <form:form method = "post" action="/admin/user/delete" modelAttribute = "currentUser">
                                <div class="form-group my-3" style="display: none;">
                                    <label for="id">Id</label>
                                    <form:input type="text" class="form-control" path="id" name="id" value ="${currentUser.id}"/>
                                </div>    
                                    <label for="email">Email</label>
                                    <form:input type="text" class="form-control" path="" name="email" value ="${currentUser.email}"/>
                                    <form:input type="text" class="form-control" path="fullName" name="" />
                                    
                                   
                            <button class="btn btn-danger">Delete</button></form:form>
                            
                            
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