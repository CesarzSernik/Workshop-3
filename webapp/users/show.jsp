<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Add user </a>
    </div>

    <!-- Content Row -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">User list</h6>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <td><c:out value="${user.id}"/></td>
                    </tr>
                    <tr>
                        <th>Username</th>
                        <td><c:out value="${user.userName}"/></td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td><c:out value="${user.email}"/></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>