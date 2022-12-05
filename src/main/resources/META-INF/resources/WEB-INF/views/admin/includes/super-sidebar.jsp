<div class="sidebar px-4 py-4 py-md-5 me-0">
    <div class="d-flex flex-column h-100">
        <a href="/admin" class="mb-0 brand-icon">
                <span class="logo-icon">
                    <i class="icofont-heart-beat fs-2"></i>
                </span>
            <span class="logo-text">Safety</span>
        </a>
        <!-- Menu: main ul -->

        <ul class="menu-list flex-grow-1 mt-3">
            <li>
                <a class="m-link" href="/admin/home">
                    <i class="icofont-ui-home fs-5"></i> <span>Dashboard</span> </a>
            </li>

            <li><a class="m-link" href="/admin/departmentList"><i class="icofont-hospital fs-5"></i> <span>Department</span></a></li>
            <li><a class="m-link" href="/admin/hospitalList"><i class="icofont-hospital fs-5"></i> <span>Hospital</span></a></li>



            <li class="collapsed">
                <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-Doctor" href="#">
                    <i class="icofont-doctor-alt fs-5"></i>  <span>Doctor</span> <span class="arrow icofont-rounded-down ms-auto text-end fs-5"></span></a>
                <!-- Menu: Sub menu ul -->
                <ul class="sub-menu collapse" id="menu-Doctor">
                    <li><a class="ms-link" href="/admin/super-doctorList">All Doctors</a></li>
                    <li><a class="ms-link" href="/admin/addDoctor">Add Doctor</a></li>
                </ul>
            </li>

        </ul>

        <!-- Menu: menu collepce btn -->
        <button type="button" class="btn btn-link sidebar-mini-btn text-light">
            <span class="ms-2"><i class="icofont-bubble-right"></i></span>
        </button>
    </div>
</div>
