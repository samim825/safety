<%@ page import="com.spring.safety.model.Hospital" %>
<%@ page import="com.spring.safety.model.User" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<!-- Mirrored from www.pixelwibes.com/template/ihealth/html/dist/doctor-add.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 24 Sep 2022 13:13:53 GMT -->
<%@include file="includes/head.jsp"%>
<body>

<div id="ihealth-layout" class="theme-tradewind">

    <!-- sidebar -->

    <%@include file="includes/sidebar.jsp"%>

    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <%@include file="includes/header.jsp"%>

        <%
            User user = (User) request.getAttribute("user");
            Hospital hospital = user.getHospital();
        %>
        <!-- Body: Body -->
        <div class="body d-flex py-3">
            <div class="container-xxl">
                <div class="row align-items-center">
                    <div class="border-0 mb-4">
                        <div class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
                            <h3 class="fw-bold mb-0"><%=hospital.getHospitalName()%></h3>
                        </div>
                    </div>
                </div> <!-- Row end  -->
                <div class="row mb-3">
                    <div class="col-sm-12">
                        <div class="card mb-3">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">Hospital Basic Inforamtion</h6>
                            </div>
                            <div class="card-body">
                                <form action="/admin/update" method="post">
                                    <div class="row g-3 align-items-center">
                                        <div class="col-md-6">
                                            <input type="hidden" name="id" value="<%=hospital.getId()%>">
                                            <label for="hospitalName" class="form-label">Hospital Name</label>
                                            <input type="text" name="hospitalName" value="<%=hospital.getHospitalName()%>" class="form-control" id="hospitalName" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="tagLine" class="form-label">Tag Line</label>
                                            <input type="text" name="tagline" value="<%=hospital.getTagline()%>" class="form-control" id="tagLine" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="phonenumber" class="form-label">Phone Number</label>
                                            <input type="text" name="phoneNumber" value="<%=hospital.getPhoneNumber()%>" class="form-control" id="phonenumber" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="duplicatePhoneNumber" class="form-label">Additional Phone Number</label>
                                            <input type="text" name="duplicatePhoneNumber" value="<%=hospital.getDuplicatePhoneNumber()%>" class="form-control" id="duplicatePhoneNumber" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="emailaddress" class="form-label">Email Address</label>
                                            <input type="email" name="email" value="<%=user.getEmail()%>" class="form-control" id="emailaddress" readonly>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="emailaddress" class="form-label">Additional Email Address</label>
                                            <input type="email" name="duplicateEmail" value="<%=hospital.getDuplicateEmail()%>" class="form-control" id="duplicateEmail" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="address" class="form-label">Location</label>
                                            <input type="text" name="address" value="<%=hospital.getAddress()%>" class="form-control" id="address" required>
                                        </div>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="admitdate" class="form-label">Join Date</label>--%>
<%--                                            <input type="date" class="form-control" id="admitdate" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="admittime" class="form-label">Join Time</label>--%>
<%--                                            <input type="time" class="form-control" id="admittime" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="formFileMultiple" class="form-label"> Document Upload</label>--%>
<%--                                            <input class="form-control" type="file" id="formFileMultiple" multiple required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label  class="form-label">Gender</label>--%>
<%--                                            <div class="row">--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="form-check">--%>
<%--                                                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios11" value="option1" checked>--%>
<%--                                                        <label class="form-check-label" for="exampleRadios11">--%>
<%--                                                            Male--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="form-check">--%>
<%--                                                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios22" value="option2">--%>
<%--                                                        <label class="form-check-label" for="exampleRadios22">--%>
<%--                                                            Female--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-12">--%>
<%--                                            <label for="addnote" class="form-label">Add Note</label>--%>
<%--                                            <textarea  class="form-control" id="addnote" rows="3"></textarea>--%>
<%--                                        </div>--%>
                                    </div>

                                    <button type="submit" class="btn btn-primary mt-4">Update</button>
                                </form>
                            </div>
                        </div>
<%--                        <div class="card mb-3">--%>
<%--                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">--%>
<%--                                <h6 class="mb-0 fw-bold ">Personal Information</h6>--%>
<%--                            </div>--%>
<%--                            <div class="card-body">--%>
<%--                                <form>--%>
<%--                                    <div class="row g-3 align-items-center">--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label  class="form-label">Doctor Payment Option</label>--%>
<%--                                            <select class="form-select" aria-label="Default select example">--%>
<%--                                                <option selected>Payment Option</option>--%>
<%--                                                <option value="1">Credit Card</option>--%>
<%--                                                <option value="2">Debit Card</option>--%>
<%--                                                <option value="3">Case Money</option>--%>
<%--                                            </select>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="roominfo" class="form-label">Cabin Number</label>--%>
<%--                                            <input type="text" class="form-control" id="roominfo" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="speciality" class="form-label">Speciality</label>--%>
<%--                                            <input type="text" class="form-control" id="speciality" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label  class="form-label">I-Health Virtual call  Attend?</label>--%>
<%--                                            <div class="row">--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="form-check">--%>
<%--                                                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios111" value="option1" checked>--%>
<%--                                                        <label class="form-check-label" for="exampleRadios111">--%>
<%--                                                            Yes--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="form-check">--%>
<%--                                                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios222" value="option2">--%>
<%--                                                        <label class="form-check-label" for="exampleRadios222">--%>
<%--                                                            No--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-12">--%>
<%--                                            <label for="speciality" class="form-label">Social link</label>--%>
<%--                                            <div class="row g-3 row-cols-1 row-cols-lg-3">--%>
<%--                                                <div class="col"><input type="text" class="form-control" id="speciality" required placeholder="Facebook Link"></div>--%>
<%--                                                <div class="col"><input type="text" class="form-control" id="speciality" required placeholder="Instagram Link"></div>--%>
<%--                                                <div class="col"><input type="text" class="form-control" id="speciality" required placeholder="linkedin Link"></div>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <button type="submit" class="btn btn-primary mt-4">Submit</button>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="card mb-3">--%>
<%--                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">--%>
<%--                                <h6 class="mb-0 fw-bold ">Authentication Information</h6>--%>
<%--                            </div>--%>
<%--                            <div class="card-body">--%>
<%--                                <form>--%>
<%--                                    <div class="row g-3 align-items-center">--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="user" class="form-label">User Name</label>--%>
<%--                                            <input type="text" class="form-control" id="user" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="password" class="form-label">Password</label>--%>
<%--                                            <input type="password" class="form-control" id="password" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label for="cnpassword" class="form-label">Confirm Password</label>--%>
<%--                                            <input type="password" class="form-control" id="cnpassword" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <label  class="form-label">Login Permission </label>--%>
<%--                                            <div class="row">--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="form-check">--%>
<%--                                                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios07" value="option1" checked>--%>
<%--                                                        <label class="form-check-label" for="exampleRadios07">--%>
<%--                                                            Hospital Only--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="form-check">--%>
<%--                                                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios08" value="option2">--%>
<%--                                                        <label class="form-check-label" for="exampleRadios08">--%>
<%--                                                            Any where--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>

<%--                                    <button type="submit" class="btn btn-primary mt-4">Submit</button>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
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