<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

<div class="logo me-auto">
    <p><%=hospital.getHospitalName()%>
      <sub style="font-size: 12px">
        <% if(hospital.getTagline()=="NULL" || hospital.getTagline()==null){
          out.print("");
        }else {
          out.print(hospital.getTagline());
        }%></sub></p>

</div>
<!--          <sub>Digital Health Care</sub>-->

   

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="#hero">Home</a></li>
<%--          <li><a class="nav-link scrollto" href="#about">About</a></li>--%>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto" href="#departments">Departments</a></li>
          <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
<%--          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>--%>
<%--            <ul>--%>
<%--              <li><a href="#">Drop Down 1</a></li>--%>
<%--              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>--%>
<%--                <ul>--%>
<%--                  <li><a href="#">Deep Drop Down 1</a></li>--%>
<%--                  <li><a href="#">Deep Drop Down 2</a></li>--%>
<%--                  <li><a href="#">Deep Drop Down 3</a></li>--%>
<%--                  <li><a href="#">Deep Drop Down 4</a></li>--%>
<%--                  <li><a href="#">Deep Drop Down 5</a></li>--%>
<%--                </ul>--%>
<%--              </li>--%>
<%--              <li><a href="#">Drop Down 2</a></li>--%>
<%--              <li><a href="#">Drop Down 3</a></li>--%>
<%--              <li><a href="#">Drop Down 4</a></li>--%>
<%--            </ul>--%>
<%--          </li>--%>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="/" class="appointment-btn scrollto"><span class="d-none d-md-inline">Back To</span> Safety</a>

    </div>
  </header><!-- End Header -->
