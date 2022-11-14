<%@ page import="com.spring.safety.model.Doctor" %>
<section id="doctors" class="doctors section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Doctors</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

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
                          <table id="myProjectTable1" class="table table-hover align-middle mb-0" style="width:100%">
                            <thead>
                            <tr>
                              <th>#</th>
                              <th>Doctor Name</th>
                              <th>Hospital Name</th>
                              <th>Department Name</th>
                              <th>Details</th>
                              <th>E-mail</th>
                              <th>Available Time</th>
                              <th>Off Day</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                              List<Doctor> doctorList = (List<Doctor>) request.getAttribute("doctors");
                              Integer cnt1 = 1;
                              for(Doctor doctor: doctorList){
                            %>
                            <tr>
                              <td>
                                <span class="fw-bold"><%=cnt1++%></span>
                              </td>
                              <td>
                                <a href="#"><span class="fw-bold ms-1"><%=doctor.getName()%></span></a>
                              </td>
                              <td>
                                <%=doctor.getHospitalName()%>
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