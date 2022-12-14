<%@ page import="com.spring.safety.model.Department" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<%@include file="includes/head.jsp"%>
<body>

<div id="ihealth-layout" class="theme-tradewind">

    <!-- sidebar -->

    <%@include file="includes/sidebar.jsp"%>

    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <%@include file="includes/header.jsp"%>


        <!-- Body: Body -->
        <div class="body d-flex py-3">
            <div class="container-xxl">
                <div class="row align-items-center">
                    <div class="border-0 mb-4">
                        <div class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
                            <h3 class="fw-bold mb-0">Add New Doctor</h3>
                            <h3 class="fw-bold mb-0">${msg}</h3>

                        </div>
                    </div>
                </div> <!-- Row end  -->
                <div class="row mb-3">
                    <div class="col-sm-12">
                        <div class="card mb-3">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">Basic Inforamtion of a Doctor</h6>
                            </div>
                            <div class="card-body">
                                <form action="/admin/saveDoctor" method="post">
                                    <div class="row g-3 align-items-center">
                                        <div class="col-md-6">
                                            <input type="hidden" name="id" value="hospital.getId()%>">
                                            <label for="doctorName" class="form-label">Name</label>
                                            <input type="text" name="name" class="form-control" id="doctorName" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Department Name</label>
                                            <select class="form-select" aria-label="Default select example" name="departmentId">
                                                <option selected="">--Add Department--</option>
                                                <%
                                                    List<Department> departments = (List<Department>) request.getAttribute("departments");
                                                    for (Department department: departments){
                                                %>
                                                <option value="<%=department.getId()%>"><%=department.getName()%></option>
                                                <% } %>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="details" class="form-label">Details</label>
                                            <input type="text" name="details" class="form-control" id="details" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="emailaddress" class="form-label">Email Address</label>
                                            <input type="email" name="email" class="form-control" id="emailaddress" required>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="address" class="form-label">Available Time</label>
                                            <input type="text" name="address" class="form-control" id="address" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="offDay" class="form-label">Off Day</label>
                                            <input type="text" name="offDay" class="form-control" id="offDay" required>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-primary mt-4">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Custom Settings-->
        <%@include file="includes/settings.jsp"%>

    </div>

</div>

<!-- Jquery Core Js -->
<script src="assets/bundles/libscripts.bundle.js"></script>


<!-- Jquery Page Js -->
<script src="../js/template.js"></script>


</body>

</html>