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
                                <form action="/admin/update" method="post">
                                    <div class="row g-3 align-items-center">
                                        <div class="col-md-6">
                                            <input type="hidden" name="id" value="hospital.getId()%>">
                                            <label for="hospitalName" class="form-label">Name</label>
                                            <input type="text" name="hospitalName" class="form-control" id="hospitalName" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Doctor Payment Option</label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected="">--Add Department--</option>
                                                <%
                                                    List<Department> departments = (List<Department>) request.getAttribute("departments");
                                                    for (Department department: departments){
                                                %>
                                                <option value="1"><%=department.getName()%></option>
                                                <% } %>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="phonenumber" class="form-label">Phone Number</label>
                                            <input type="text" name="phoneNumber" class="form-control" id="phonenumber" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="duplicatePhoneNumber" class="form-label">Additional Phone Number</label>
                                            <input type="text" name="duplicatePhoneNumber" class="form-control" id="duplicatePhoneNumber" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="emailaddress" class="form-label">Email Address</label>
                                            <input type="email" name="email" class="form-control" id="emailaddress" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="emailaddress" class="form-label">Additional Email Address</label>
                                            <input type="email" name="duplicateEmail" class="form-control" id="duplicateEmail" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="address" class="form-label">Location</label>
                                            <input type="text" name="address" class="form-control" id="address" required>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-primary mt-4">Update</button>
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