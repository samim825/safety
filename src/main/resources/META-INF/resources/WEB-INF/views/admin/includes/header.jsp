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
                                        <small class="">${user.getEmail()}</small>
                                    </div>
                                </div>

                                <div><hr class="dropdown-divider border-dark"></div>
                            </div>
                            <div class="list-group m-2 ">
                                <a href="virtual.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-ui-video-chat fs-5 me-3"></i>I-Health Virtual</a>
                                <a href="patient-invoices.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-dollar fs-5 me-3"></i>Patient Invoices</a>
                                <a href="/admin/logout" class="list-group-item list-group-item-action border-0 "><i class="icofont-logout fs-6 me-3"></i>Signout</a>
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