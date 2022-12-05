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
                <div class="row g-3 mb-3 row-deck">
                    <div class="col-lg-12 col-xl-12">
                        <div class="card">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">Hospitality Status</h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3 row-deck">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-patient-file fs-3 text-secondary"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Total Appointment</h6>
                                                <span class="text-muted">400</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-crutch fs-3 color-lightblue"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Total Patients</h6>
                                                <span class="text-muted">117</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-doctor fs-3 color-light-orange"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Patients per Doctor</h6>
                                                <span class="text-muted">16</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-king-monster fs-3 color-careys-pink"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Covid Patients </h6>
                                                <span class="text-muted">144</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-doctor-alt fs-3 color-lavender-purple"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Total Doctor</h6>
                                                <span class="text-muted">200</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-nurse-alt fs-3 color-light-success"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Total Nurse </h6>
                                                <span class="text-muted">84</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<%@include file="includes/footer.jsp"%>