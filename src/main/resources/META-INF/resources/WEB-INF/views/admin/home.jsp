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
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Activated Hospital</h6>
                                                <span class="text-muted">${activatedHospital}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-patient-file fs-3 text-secondary"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Deactivated Hospital</h6>
                                                <span class="text-muted">${deactivatedHospitals}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card">
                                            <div class="card-body ">
                                                <i class="icofont-doctor-alt fs-3 color-lavender-purple"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">Total Doctors</h6>
                                                <span class="text-muted">${totalDoctors}</span>
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