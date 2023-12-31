<!DOCTYPE html>
<html lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Roles Creation</title>
    </head>

    <body>
        <c:choose>
            <c:when test="${Account.role_name.equals('ROLE_MANAGER')}">
                <!-- Preloader -->
                <div class="preloader">
                    <div class="cssload-speeding-wheel"></div>
                </div>
                <!-- Page Content -->

                <div class="container-fluid">
                    <div class="row bg-title">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 class="page-title">Create a new role</h4>
                        </div>
                    </div>
                    <!-- /.row -->
                    <!-- .row -->
                    <div class="row">
                        <div class="col-md-2 col-12"></div>
                        <div class="col-md-8 col-xs-12">
                            <div class="white-box">



                                <form action="<c:url value="/roles/create_handler.do"/>" class="form-horizontal form-material">
                                    <div class="form-group">
                                        <label class="col-md-12">Role ID</label>
                                        <div class="col-md-12">
                                            <input disabled type="number" placeholder="Role ID" value="${roles.id}"
                                                   class="form-control form-control-line" />
                                            <input type="hidden" name="id" value="${roles.id}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Role Name</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Role Name" name="name" value="${roles.name}"
                                                   class="form-control form-control-line" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-12">Description</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Description" name="description" value="${roles.description}"
                                                   class="form-control form-control-line" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">

                                            <button type="submit" class="btn btn-success" name="op" value="create">Create<i class="bi bi-check-square"></i></button>
                                            <button type="submit" class="btn btn-outline-danger" name="op" value="cancel">Back <i class="bi bi-x-square"></i></button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                        <div class="col-md-2 col-12"></div>
                    </div>
                    <!-- /.row -->
                </div>
            </c:when>
            <c:otherwise>
                <jsp:forward page="/error/error.do" />
            </c:otherwise>
        </c:choose>
    </body>

</html>