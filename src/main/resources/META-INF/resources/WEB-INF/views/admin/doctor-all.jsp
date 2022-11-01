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
        <div class="header">
            <nav class="navbar py-4">
                <div class="container-xxl">

                    <!-- header rightbar icon -->
                    <div class="h-right d-flex align-items-center mr-5 mr-lg-0 order-1">
                        <div class="d-flex">
                            <a class="nav-link text-primary collapsed" href="help.html" title="Get Help">
                                <i class="icofont-info-square fs-5"></i>
                            </a>
                        </div>
                        <div class="dropdown notifications zindex-popover">
                            <a class="nav-link dropdown-toggle pulse" href="#" role="button" data-bs-toggle="dropdown">
                                <i class="icofont-alarm fs-5"></i>
                                <span class="pulse-ring"></span>
                            </a>
                            <div id="NotificationsDiv" class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-sm-end p-0 m-0">
                                <div class="card border-0 w380">
                                    <div class="card-header border-0 p-3">
                                        <h5 class="mb-0 font-weight-light d-flex justify-content-between">
                                            <span>Notifications</span>
                                            <span class="badge text-white">06</span>
                                        </h5>
                                    </div>
                                    <div class="tab-content card-body">
                                        <div class="tab-pane fade show active">
                                            <ul class="list-unstyled list mb-0">
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar1.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Chloe Walkerr</span> <small>2MIN</small></p>
                                                            <span class="">Added Appointment 2021-06-19 <span class="badge bg-success">Book</span></span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <div class="avatar rounded-circle no-thumbnail">AH</div>
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Alan	Hill</span> <small>13MIN</small></p>
                                                            <span class="">Lab sample collection</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar3.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Melanie	Oliver</span> <small>1HR</small></p>
                                                            <span class="">Invoice Create Patient Room A-803</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar5.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Boris Hart</span> <small>13MIN</small></p>
                                                            <span class="">Medicine Order to Medical</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar6.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Alan	Lambert</span> <small>1HR</small></p>
                                                            <span class="">Leave Apply</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar7.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Zoe Wright</span> <small class="">1DAY</small></p>
                                                            <span class="">Patient Food Order Room A-809</span>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <a class="card-footer text-center border-top-0" href="#"> View all notifications</a>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown user-profile ml-2 ml-sm-3 d-flex align-items-center zindex-popover">
                            <div class="u-info me-2">
                                <p class="mb-0 text-end line-height-sm "><span class="font-weight-bold">John Quinn</span></p>
                                <small>Admin Profile</small>
                            </div>
                            <a class="nav-link dropdown-toggle pulse p-0" href="#" role="button" data-bs-toggle="dropdown" data-bs-display="static">
                                <img class="avatar lg rounded-circle img-thumbnail" src="assets/images/profile_av.png" alt="profile">
                            </a>
                            <div class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-end p-0 m-0">
                                <div class="card border-0 w280">
                                    <div class="card-body pb-0">
                                        <div class="d-flex py-1">
                                            <img class="avatar rounded-circle" src="assets/images/profile_av.png" alt="profile">
                                            <div class="flex-fill ms-3">
                                                <p class="mb-0"><span class="font-weight-bold">John	Quinn</span></p>
                                                <small class="">Johnquinn@gmail.com</small>
                                            </div>
                                        </div>

                                        <div><hr class="dropdown-divider border-dark"></div>
                                    </div>
                                    <div class="list-group m-2 ">
                                        <a href="virtual.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-ui-video-chat fs-5 me-3"></i>I-Health Virtual</a>
                                        <a href="patient-invoices.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-dollar fs-5 me-3"></i>Patient Invoices</a>
                                        <a href="ui-elements/auth-signin.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-logout fs-6 me-3"></i>Signout</a>
                                        <div><hr class="dropdown-divider border-dark"></div>
                                        <a href="ui-elements/auth-signup.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-contact-add fs-5 me-3"></i>Add personal account</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="setting ms-2">
                            <a href="#" data-bs-toggle="modal" data-bs-target="#Settingmodal"><i class="icofont-gear-alt fs-5"></i></a>
                        </div>
                    </div>

                    <!-- menu toggler -->
                    <button class="navbar-toggler p-0 border-0 menu-toggle order-3" type="button" data-bs-toggle="collapse" data-bs-target="#mainHeader">
                        <span class="fa fa-bars"></span>
                    </button>

                    <!-- main menu Search-->
                    <div class="order-0 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-md-0 ">
                        <div class="input-group flex-nowrap input-group-lg">
                            <input type="search" class="form-control" placeholder="Search" aria-label="search" aria-describedby="addon-wrapping">
                            <button type="button" class="input-group-text" id="addon-wrapping"><i class="fa fa-search"></i></button>

                        </div>
                    </div>

                </div>
            </nav>
        </div>

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
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">Dr.Joan Wilson</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Heart Surgeon</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/lg/avatar2.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Alexander</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Dentist</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar4.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Peter</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Dermatologists</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar5.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Mary</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Gynecologist</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar5.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Zoe</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">ENT Specialist</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar8.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Grace</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Cardiologist</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar9.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Diana</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">General Surgeon</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card ">
                            <div class="card-body d-flex flex-column">
                                <div class="profile-av mx-auto text-center w220">
                                    <img src="assets/images/sm/avatar10.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-3 justify-content-center">
                                        <div class="followers rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-facebook fs-5 text-blue"></i>
                                            </a>
                                        </div>
                                        <div class="own-video rounded-circle me-3">
                                            <a href="#">
                                                <i class="bi bi-instagram fs-5 text-danger"></i>
                                            </a>
                                        </div>
                                        <div class="star rounded-circle ">
                                            <a href="#">
                                                <i class="bi bi-linkedin fs-5 text-blue"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="teacher-info  w-100 text-center mt-3">
                                    <h6  class="mb-2 mt-2  fw-bold d-block fs-6">DR.Sarah</h6>
                                    <span class="light-info-bg py-2 px-2 rounded-1 d-inline-block fw-bold small-11 mb-0 mt-1">Pediatricians</span>
                                    <a href="doctor-profile.html" class="btn btn-primary btn-sm">Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Custom Settings-->
        <div class="modal fade right" id="Settingmodal" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog  modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Custom Settings</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body custom_setting">
                        <!-- Settings: Color -->
                        <div class="setting-theme pb-3">
                            <h6 class="card-title mb-2 fs-6 d-flex align-items-center"><i class="icofont-color-bucket fs-4 me-2 text-primary"></i>Template Color Settings</h6>
                            <ul class="list-unstyled row row-cols-3 g-2 choose-skin mb-2 mt-2">
                                <li data-theme="indigo"><div class="indigo"></div></li>
                                <li data-theme="tradewind" class="active"><div class="tradewind"></div></li>
                                <li data-theme="monalisa"><div class="monalisa"></div></li>
                                <li data-theme="blue"><div class="blue"></div></li>
                                <li data-theme="cyan"><div class="cyan"></div></li>
                                <li data-theme="green"><div class="green"></div></li>
                                <li data-theme="orange"><div class="orange"></div></li>
                                <li data-theme="blush"><div class="blush"></div></li>
                                <li data-theme="red"><div class="red"></div></li>
                            </ul>
                        </div>
                        <div class="sidebar-gradient py-3">
                            <h6 class="card-title mb-2 fs-6 d-flex align-items-center"><i class="icofont-paint fs-4 me-2 text-primary"></i>Sidebar Gradient</h6>
                            <div class="form-check form-switch gradient-switch pt-2 mb-2">
                                <input class="form-check-input" type="checkbox" id="CheckGradient">
                                <label class="form-check-label" for="CheckGradient">Enable Gradient! ( Sidebar )</label>
                            </div>
                        </div>
                        <!-- Settings: Template dynamics -->
                        <div class="dynamic-block py-3">
                            <ul class="list-unstyled choose-skin mb-2 mt-1">
                                <li data-theme="dynamic"><div class="dynamic"><i class="icofont-paint me-2"></i> Click to Dyanmic Setting</div></li>
                            </ul>
                            <div class="dt-setting">
                                <ul class="list-group list-unstyled mt-1">
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label>Primary Color</label>
                                        <button id="primaryColorPicker" class="btn bg-primary avatar xs border-0 rounded-0"></button>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label>Secondary Color</label>
                                        <button id="secondaryColorPicker" class="btn bg-secondary avatar xs border-0 rounded-0"></button>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label class="text-muted">Chart Color 1</label>
                                        <button id="chartColorPicker1" class="btn chart-color1 avatar xs border-0 rounded-0"></button>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label class="text-muted">Chart Color 2</label>
                                        <button id="chartColorPicker2" class="btn chart-color2 avatar xs border-0 rounded-0"></button>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label class="text-muted">Chart Color 3</label>
                                        <button id="chartColorPicker3" class="btn chart-color3 avatar xs border-0 rounded-0"></button>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label class="text-muted">Chart Color 4</label>
                                        <button id="chartColorPicker4" class="btn chart-color4 avatar xs border-0 rounded-0"></button>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center py-1 px-2">
                                        <label class="text-muted">Chart Color 5</label>
                                        <button id="chartColorPicker5" class="btn chart-color5 avatar xs border-0 rounded-0"></button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Settings: Font -->
                        <div class="setting-font py-3">
                            <h6 class="card-title mb-2 fs-6 d-flex align-items-center"><i class="icofont-font fs-4 me-2 text-primary"></i> Font Settings</h6>
                            <ul class="list-group font_setting mt-1">
                                <li class="list-group-item py-1 px-2">
                                    <div class="form-check mb-0">
                                        <input class="form-check-input" type="radio" name="font" id="font-poppins" value="font-poppins">
                                        <label class="form-check-label" for="font-poppins">
                                            Poppins Google Font
                                        </label>
                                    </div>
                                </li>
                                <li class="list-group-item py-1 px-2">
                                    <div class="form-check mb-0">
                                        <input class="form-check-input" type="radio" name="font" id="font-opensans" value="font-opensans" checked="">
                                        <label class="form-check-label" for="font-opensans">
                                            Open Sans Google Font
                                        </label>
                                    </div>
                                </li>
                                <li class="list-group-item py-1 px-2">
                                    <div class="form-check mb-0">
                                        <input class="form-check-input" type="radio" name="font" id="font-montserrat" value="font-montserrat">
                                        <label class="form-check-label" for="font-montserrat">
                                            Montserrat Google Font
                                        </label>
                                    </div>
                                </li>
                                <li class="list-group-item py-1 px-2">
                                    <div class="form-check mb-0">
                                        <input class="form-check-input" type="radio" name="font" id="font-mukta" value="font-mukta">
                                        <label class="form-check-label" for="font-mukta">
                                            Mukta Google Font
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Settings: Light/dark -->
                        <div class="setting-mode py-3">
                            <h6 class="card-title mb-2 fs-6 d-flex align-items-center"><i class="icofont-layout fs-4 me-2 text-primary"></i>Contrast Layout</h6>
                            <ul class="list-group list-unstyled mb-0 mt-1">
                                <li class="list-group-item d-flex align-items-center py-1 px-2">
                                    <div class="form-check form-switch theme-switch mb-0">
                                        <input class="form-check-input" type="checkbox" id="theme-switch">
                                        <label class="form-check-label" for="theme-switch">Enable Dark Mode!</label>
                                    </div>
                                </li>
                                <li class="list-group-item d-flex align-items-center py-1 px-2">
                                    <div class="form-check form-switch theme-high-contrast mb-0">
                                        <input class="form-check-input" type="checkbox" id="theme-high-contrast">
                                        <label class="form-check-label" for="theme-high-contrast">Enable High Contrast</label>
                                    </div>
                                </li>
                                <li class="list-group-item d-flex align-items-center py-1 px-2">
                                    <div class="form-check form-switch theme-rtl mb-0">
                                        <input class="form-check-input" type="checkbox" id="theme-rtl">
                                        <label class="form-check-label" for="theme-rtl">Enable RTL Mode!</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-start">
                        <button type="button" class="btn btn-white border lift" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary lift">Save Changes</button>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<%@include file="includes/footer.jsp"%>