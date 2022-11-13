<%@ page import="com.spring.safety.model.Hospital" %>
<%@ page import="java.util.List" %>
<section id="hospitals" class="services services">
    <div class="container" data-aos="fade-up">

        <div class="section-title">
            <h2>Hospitals</h2>
            <p>You can find your nearest hospital from here.</p>
        </div>

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
                                        <table id="myProjectTable" class="table table-hover align-middle mb-0" style="width:100%">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Hospital Name</th>
                                                <th>Location</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                List<Hospital> hospitals = (List<Hospital>) request.getAttribute("hospitals");
                                        Integer cnt = 1;
                                        for(Hospital hospital: hospitals){
                                            %>
                                            <tr>
                                                <td>
                                                    <span class="fw-bold"><%=cnt++%></span>
                                                </td>
                                                <td>
                                                    <a href="/<%=hospital.getId()%>"><span class="fw-bold ms-1"><%=hospital.getHospitalName()%></span></a>
                                                </td>
                                                <td>
                                                    <%=hospital.getAddress()%>
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
</section>

</body>
</html>