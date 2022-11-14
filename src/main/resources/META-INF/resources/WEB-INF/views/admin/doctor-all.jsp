<%@ page import="com.spring.safety.model.Doctor" %>
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
                            <h3 class="fw-bold mb-0">Doctor List </h3>
                        </div>
                    </div>
                </div> <!-- Row end  -->
                <div class="row g-3 row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-4 row-cols-xl-4 row-cols-xxl-4 row-deck py-1 pb-4">
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">Dr.Joan Wilson</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Heart Surgeon</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/lg/avatar2.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Alexander</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Dentist</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar4.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            $('.deleterow').on('click',function(){
            var tablename = $(this).closest('table').DataTable();
            tablename
                .row( $(this)
                    .parents('tr') )
                .remove()
                .draw();

        } );   </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Peter</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Dermatologists</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar5.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Mary</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Gynecologist</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar5.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Zoe</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">ENT Specialist</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar8.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Grace</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Cardiologist</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar9.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Diana</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">General Surgeon</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <div class="card teacher-card ">--%>
<%--                            <div class="card-body d-flex flex-column">--%>
<%--                                <div class="profile-av mx-auto text-center w220">--%>
<%--                                    <img src="assets/images/sm/avatar10.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">--%>
<%--                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">--%>
<%--                                        <div class="followers rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-facebook fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="own-video rounded-circle me-3">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-instagram fs-5 text-danger"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="star rounded-circle ">--%>
<%--                                            <a href="#">--%>
<%--                                                <i class="bi bi-linkedin fs-5 text-blue"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="teacher-info  w-100 text-center mt-3">--%>
<%--                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Sarah</h6>--%>
<%--                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Pediatricians</span>--%>
<%--                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>


    <table id="myProjectTable1" class="table table-hover align-middle mb-0" style="width:100%">
        <thead>
        <tr>
            <th>#</th>
            <th>Doctor Name</th>
            <th>Department Name</th>
            <th>Details</th>
            <th>Email</th>
            <th>Available Time</th>
            <th>Off Day</th>


        <%--                                        <th>Staff UnderWork</th>--%>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Doctor> doctorList = (List<Doctor>) request.getAttribute("doctorList");
            Integer cnt = 1;
            for(Doctor doctor: doctorList){
        %>
        <tr>
            <td>
                <span class="fw-bold"><%=cnt++%></span>
            </td>
            <td>
                <img class="avatar rounded-circle" src="assets/images/xs/avatar1.jpg" alt="">
                <span class="fw-bold ms-1"><%=doctor.getName()%></span>
            </td>
            <td>
                <%=doctor.getDepartmentName()%>
            </td>
            <td>
                <%=doctor.getDetails()%>
            </td>
            <td>
                <%=doctor.getEmail()%>
            </td>
            <td>
                <%=doctor.getAvailableTime()%>
            </td>
            <td>
                <%=doctor.getOffDay()%>
            </td>
            <%--                                        <td>--%>
            <%--                                            40--%>
            <%--                                        </td>--%>
            <td>
                <div class="btn-group" role="group" aria-label="Basic outlined example">
                    <button name="edit" data-id="<%=doctor.getId()%>" class="btn btn-outline-secondary edit" aria-disabled="true" data-bs-toggle="modal" data-bs-target="#depedit"><i class="icofont-edit text-success"></i></button>
                    <button name="delete" data-bs-id="<%=doctor.getId()%>" class="btn btn-outline-secondary deptId" data-bs-toggle="modal" data-bs-target="#depDelete" value="<%=doctor.getId()%>" aria-disabled="true"><i class="icofont-ui-delete text-danger"></i></button>
                </div>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>

                </div>
            </div>
        </div>

        <!-- Modal Custom Settings-->

    </div>

</div>



<%@include file="includes/footer.jsp"%>