<%@ page import="java.util.List" %>
<%@ page import="com.spring.safety.model.Hospital" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<%@include file="includes/head.jsp"%>
<body>

<div id="ihealth-layout" class="theme-tradewind">

    <!-- sidebar -->
    <%@include file="includes/super-sidebar.jsp"%>

    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <%@include file="includes/super-header.jsp"%>
        <!-- Body: Body -->
        <div class="body d-flex py-3">
            <div class="container-xxl">
                <div class="row align-items-center">
                    <div class="border-0 mb-4">
                        <div class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
                            <h3 class="fw-bold mb-0">Hospital </h3>
                        </div>
                    </div>
                </div> <!-- Row end  -->
                <div class="row clearfix g-3">
                    <div class="col-sm-12">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2>Active Hospital</h2>
                    <table id="myProjectTable1" class="table table-hover align-middle mb-0" style="width:100%">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Hospital Name</th>
                            <th>Address</th>
                            <th>Tagline</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<Hospital> hospitalList = (List<Hospital>) request.getAttribute("hospitals");
                            Integer cnt = 1;
                            for(Hospital hospital: hospitalList){
                        %>
                        <tr>
                            <td>
                                <span class="fw-bold"><%=cnt++%></span>
                            </td>
                            <td>
                                <img class="avatar rounded-circle" src="assets/images/xs/avatar1.jpg" alt="">
                                <span class="fw-bold ms-1"><%=hospital.getHospitalName()%></span>
                            </td>
                            <td>
                                <%=hospital.getAddress()%>
                            </td>
                            <td>
                                <%=hospital.getTagline()%>
                            </td>
                            <td>
                                <%=hospital.getPhoneNumber()%>
                            </td>
                            <td>
                                <%=hospital.getDuplicateEmail()%>
                            </td>
                            <%--                                        <td>--%>
                            <%--                                            40--%>
                            <%--                                        </td>--%>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic outlined example">
<%--                                    <button name="edit" data-id="<%=hospital.getId()%>" class="btn btn-outline-secondary edit" aria-disabled="true" data-bs-toggle="modal" data-bs-target="#depedit"><i class="icofont-edit text-success"></i></button>--%>
<%--                                    <button name="delete" data-bs-id="<%=hospital.getId()%>" class="btn btn-outline-secondary deptId" data-bs-toggle="modal" data-bs-target="#depDelete" value="<%=hospital.getId()%>" aria-disabled="true"><i class="icofont-ui-delete text-danger"></i></button>--%>
                                    <a href="/admin/deActiveHospital/<%=hospital.getId()%>">Deactivated</a>
                                </div>
                            </td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table></div>
                            </div>
                            </div>

                </div>


                <div class="row clearfix g-3">
                    <div class="col-sm-12">
                        <div class="card mb-3">
                            <div class="card-body">                    <h2>Pending Hospital List</h2>
                                <table id="myProjectTable2" class="table table-hover align-middle mb-0" style="width:100%">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Hospital Name</th>
                            <th>Address</th>
                            <th>Tagline</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<Hospital> hospitalList1 = (List<Hospital>) request.getAttribute("inActiveHospitals");
                            Integer cnt1 = 1;
                            for(Hospital hospital: hospitalList1){
                        %>
                        <tr>
                            <td>
                                <span class="fw-bold"><%=cnt1++%></span>
                            </td>
                            <td>
                                <img class="avatar rounded-circle" src="assets/images/xs/avatar1.jpg" alt="">
                                <span class="fw-bold ms-1"><%=hospital.getHospitalName()%></span>
                            </td>
                            <td>
                                <%=hospital.getAddress()%>
                            </td>
                            <td>
                                <%=hospital.getTagline()%>
                            </td>
                            <td>
                                <%=hospital.getPhoneNumber()%>
                            </td>
                            <td>
                                <%=hospital.getDuplicateEmail()%>
                            </td>
                            <%--                                        <td>--%>
                            <%--                                            40--%>
                            <%--                                        </td>--%>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic outlined example">
<%--                                    <button name="edit" data-id="<%=hospital.getId()%>" class="btn btn-outline-secondary edit" aria-disabled="true" data-bs-toggle="modal" data-bs-target="#depedit"><i class="icofont-edit text-success"></i></button>--%>
<%--                                    <button name="delete" data-bs-id="<%=hospital.getId()%>" class="btn btn-outline-secondary deptId" data-bs-toggle="modal" data-bs-target="#depDelete" value="<%=hospital.getId()%>" aria-disabled="true"><i class="icofont-ui-delete text-danger"></i></button>--%>
                                <a href="/admin/activeHospital/<%=hospital.getId()%>">Activated</a>

                                </div>
                            </td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>

                </div>
                        </div>
                        </div>
                        </div>

            </div>


        </div>

        <!-- Modal Custom Settings-->

    </div>

</div>




<!-- Jquery Core Js -->
<script src="assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js -->
<script src="assets/bundles/apexcharts.bundle.js"></script>
<script src="assets/plugin/jqueryuicalandar/jquery-ui.min.js"></script>
<script src="assets/plugin/owlcarousel/owl.carousel.js"></script>
<script src="assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="../js/template.js"></script>
<script src="../js/page/index.js"></script>
<script>
    $('#myProjectTable1')
        .addClass( 'nowrap' )
        .dataTable( {
            responsive: true,
            columnDefs: [
                { targets: [-1, -3], className: 'dt-body-right' }
            ]
        });
    $('#myProjectTable2')
        .addClass( 'nowrap' )
        .dataTable( {
            responsive: true,
            columnDefs: [
                { targets: [-1, -3], className: 'dt-body-right' }
            ]
        });
</script>

</body>

<!-- Mirrored from www.pixelwibes.com/template/ihealth/html/dist/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 24 Sep 2022 13:13:22 GMT -->
</html>