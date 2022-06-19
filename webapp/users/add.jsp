<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    </div>

    <!-- Content Row -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add user</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <form method="post">
                    <label for="username">Username</label><input id="username" class="form-control form-control-sm"
                                                         placeholder="Enter username" type="text" name="username"><br>

                    <label for="email">Email</label><input id="email" class="form-control form-control-sm"
                                                      placeholder="Enter email" type="email" name="email"><br>

                    <label for="password">Password</label><input id="password" class="form-control form-control-sm"
                                                         placeholder="Enter password" type="password" name="password"><br>
                    <button type="submit" href="list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                        <i class="fas fa-download fa-sm text-white-50" ></i> Submit </button>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>