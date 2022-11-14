<%@ page import="com.spring.safety.model.Doctor" %>
<%@ page import="java.util.List" %>
<section id="doctors" class="doctors section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Doctors</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

<%--          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">--%>
<%--            <div class="member" data-aos="fade-up" data-aos-delay="100">--%>
<%--              <div class="member-img">--%>
<%--                <img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt="">--%>
<%--                <div class="social">--%>
<%--                  <a href=""><i class="bi bi-twitter"></i></a>--%>
<%--                  <a href=""><i class="bi bi-facebook"></i></a>--%>
<%--                  <a href=""><i class="bi bi-instagram"></i></a>--%>
<%--                  <a href=""><i class="bi bi-linkedin"></i></a>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="member-info">--%>
<%--                <h4>Walter White</h4>--%>
<%--                <span>Chief Medical Officer</span>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>

<%--          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">--%>
<%--            <div class="member" data-aos="fade-up" data-aos-delay="200">--%>
<%--              <div class="member-img">--%>
<%--                <img src="assets/img/doctors/doctors-2.jpg" class="img-fluid" alt="">--%>
<%--                <div class="social">--%>
<%--                  <a href=""><i class="bi bi-twitter"></i></a>--%>
<%--                  <a href=""><i class="bi bi-facebook"></i></a>--%>
<%--                  <a href=""><i class="bi bi-instagram"></i></a>--%>
<%--                  <a href=""><i class="bi bi-linkedin"></i></a>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="member-info">--%>
<%--                <h4>Sarah Jhonson</h4>--%>
<%--                <span>Anesthesiologist</span>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>

<%--          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">--%>
<%--            <div class="member" data-aos="fade-up" data-aos-delay="300">--%>
<%--              <div class="member-img">--%>
<%--                <img src="assets/img/doctors/doctors-3.jpg" class="img-fluid" alt="">--%>
<%--                <div class="social">--%>
<%--                  <a href=""><i class="bi bi-twitter"></i></a>--%>
<%--                  <a href=""><i class="bi bi-facebook"></i></a>--%>
<%--                  <a href=""><i class="bi bi-instagram"></i></a>--%>
<%--                  <a href=""><i class="bi bi-linkedin"></i></a>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="member-info">--%>
<%--                <h4>William Anderson</h4>--%>
<%--                <span>Cardiology</span>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>

<%--          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">--%>
<%--            <div class="member" data-aos="fade-up" data-aos-delay="400">--%>
<%--              <div class="member-img">--%>
<%--                <img src="assets/img/doctors/doctors-4.jpg" class="img-fluid" alt="">--%>
<%--                <div class="social">--%>
<%--                  <a href=""><i class="bi bi-twitter"></i></a>--%>
<%--                  <a href=""><i class="bi bi-facebook"></i></a>--%>
<%--                  <a href=""><i class="bi bi-instagram"></i></a>--%>
<%--                  <a href=""><i class="bi bi-linkedin"></i></a>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="member-info">--%>
<%--                <h4>Amanda Jepson</h4>--%>
<%--                <span>Neurosurgeon</span>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>

  <div id="ihealth-layout" class="theme-tradewind">

    <div class="main px-lg-4 px-md-4">

      <!-- Body: Header -->
      <!-- Body: Body -->
      <div class="body d-flex py-lg-3 py-md-2">
        <div>
          <%--                      <!-- Row end  -->--%>
          <div class="row clearfix g-3">
            <div class="col-sm-12">
              <div class="card mb-3">
                <div class="card-body">
                  <table id="myProjectTable2" class="table table-hover align-middle mb-0" style="width:100%">
                    <thead>
                    <tr>
                      <th>#</th>
                      <th>Doctor Name</th>
                      <%--                          <th>Hospital Name</th>--%>
                      <th>Department Name</th>
                      <th>Details</th>
                      <th>E-mail</th>
                      <th>Available Time</th>
                      <th>Off Day</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                      List<Doctor> doctors = (List<Doctor>) request.getAttribute("doctors");
                      Integer cnt1 = 1;
                      for(Doctor doctor: doctors){
                    %>
                    <tr>
                      <td>
                        <span class="fw-bold"><%=cnt1++%></span>
                      </td>
                      <td>
                        <a href="#"><span class="fw-bold ms-1"><%=doctor.getName()%></span></a>
                      </td>
                      <%--                          <td>--%>
                      <%--                            <%=doctor.getHospitalName()%>--%>
                      <%--                          </td>--%>
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

                    </tr>
                    <% } %>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div><!-- Row End -->
        </div>
      </div>

    </div>
  </div>



        </div>

      </div>
    </section>

