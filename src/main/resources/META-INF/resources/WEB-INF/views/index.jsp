<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Safety- Digital Health Care</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <%--    <link rel="stylesheet" href="assets/plugin/datatables/responsive.dataTables.min.css">--%>
    <%--    <link rel="stylesheet" href="assets/plugin/datatables/dataTables.bootstrap5.min.css">--%>

    <%--    <meta http-equiv="X-UA-Compatible" content="IE=Edge">--%>
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
    <%--    <title>:: Safety::  Dashboard </title>--%>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- plugin css file  -->
    <link rel="stylesheet" href="assets/plugin/datatables/responsive.dataTables.min.css">
    <link rel="stylesheet" href="assets/plugin/datatables/dataTables.bootstrap5.min.css">
    <!-- project css file  -->
    <link rel="stylesheet" href="assets/css/ihealth.style.min.css">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>


<!-- ======= Header ======= -->
<%@include file="public/header.jsp" %>

<!-- ======= Slider Section ======= -->
<%@include file="public/slider.jsp" %>
<!-- End Slider -->

<main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
        <div class="container" data-aos="fade-up">

            <div class="row">
                <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                        <div class="icon"><i class="fas fa-heartbeat"></i></div>
                        <h4 class="title"><a href="#hospitals">Hospitals</a></h4>
                        <p class="description">You can find your nearest hospitals from this Safety which is a digital health care service</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                        <div class="icon"><i class="fas fa-pills"></i></div>
                        <h4 class="title"><a href="#doctors">Doctors</a></h4>
                        <p class="description">You can Find different medical specialist from here. You can get appointment of them.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                        <div class="icon"><i class="fas fa-thermometer"></i></div>
                        <h4 class="title"><a href="#">Medical Test</a></h4>
                        <p class="description">You can know medical test price of different hospitals. You can also know which test is better in which hospitals.</p>
                    </div>
                </div>

<%--                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">--%>
<%--                    <div class="icon-box" data-aos="fade-up" data-aos-delay="400">--%>
<%--                        <div class="icon"><i class="fas fa-dna"></i></div>--%>
<%--                        <h4 class="title"><a href="">Department</a></h4>--%>
<%--                        <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>

        </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
        <div class="container" data-aos="zoom-in">

            <div class="text-center">
                <h3>In an emergency? Need help now?</h3>
                <p> If you are in an emergency , you can get immediately appointment of a doctor. </p>
                <a class="cta-btn scrollto" href="#appointment">Make an Make an Appointment</a>
            </div>

        </div>
    </section><!-- End Cta Section -->

    <!-- ======= About Us Section ======= -->

    <%@include file="public/about.jsp" %>

    <!-- End About Us Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
        <div class="container" data-aos="fade-up">

            <div class="row no-gutters">

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="fas fa-user-md"></i>
                        <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>

                        <p><strong>Doctors</strong> consequuntur quae qui deca rode</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="far fa-hospital"></i>
                        <span data-purecounter-start="0" data-purecounter-end="26" data-purecounter-duration="1" class="purecounter"></span>
                        <p><strong>Departments</strong> adipisci atque cum quia aut numquam delectus</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="fas fa-flask"></i>
                        <span data-purecounter-start="0" data-purecounter-end="14" data-purecounter-duration="1" class="purecounter"></span>
                        <p><strong>Research Lab</strong> aut commodi quaerat. Aliquam ratione</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="fas fa-award"></i>
                        <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
                        <p><strong>Awards</strong> rerum asperiores dolor molestiae doloribu</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Counts Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
        <div class="container" data-aos="fade-up">

            <div class="row">
                <div class="col-lg-6 order-2 order-lg-1" data-aos="fade-right">
                    <div class="icon-box mt-5 mt-lg-0">
                        <i class="bx bx-receipt"></i>
                        <h4>Est labore ad</h4>
                        <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
                    </div>
                    <div class="icon-box mt-5">
                        <i class="bx bx-cube-alt"></i>
                        <h4>Harum esse qui</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
                    </div>
                    <div class="icon-box mt-5">
                        <i class="bx bx-images"></i>
                        <h4>Aut occaecati</h4>
                        <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
                    </div>
                    <div class="icon-box mt-5">
                        <i class="bx bx-shield"></i>
                        <h4>Beatae veritatis</h4>
                        <p>Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta</p>
                    </div>
                </div>
                <div class="image col-lg-6 order-1 order-lg-2" style='background-image: url("assets/img/features.jpg");' data-aos="zoom-in"></div>
            </div>

        </div>
    </section><!-- End Features Section -->

    <!-- ======= Services Section ======= -->
    <%@include file="public/services.jsp" %>
    <!-- End Services Section -->

    <!-- ======= Hospital Section ======= -->
    <%@include file="public/hospital.jsp" %>
    <!-- End hospital Section -->


    <!-- ======= Appointment Section ======= -->
    <%@include file="public/appointment.jsp" %>
    <!-- End Appointment Section -->

    <!-- ======= Departments Section ======= -->
    <%@include file="public/departments.jsp" %>
    <!-- End Departments Section -->

    <!-- ======= Testimonials Section ======= -->
    <%@include file="public/testimonials.jsp" %>
    <!-- End Testimonials Section -->

    <!-- ======= Doctors Section ======= -->
    <%@include file="public/doctors.jsp" %>
    <!-- End Doctors Section -->

    <!-- ======= Gallery Section ======= -->
    <%@include file="public/gallery.jsp" %>
    <!-- End Gallery Section -->

    <!-- ======= Pricing Section ======= -->
    <%@include file="public/pricing.jsp" %>
    <!-- End Pricing Section -->

    <!-- ======= Frequently Asked Questioins Section ======= -->
    <%@include file="public/asked-questions.jsp" %>
    <!-- End Frequently Asked Questioins Section -->

    <!-- ======= Contact Section ======= -->
    <%@include file="public/contact.jsp" %>
    <!-- End Contact Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->

<%@include file="public/footer.jsp" %>
<!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>



<!-- Vendor JS Files -->
<%--<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>--%>
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<%--<script src="assets/bundles/dataTables.bundle.js"></script>--%>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>


<script src="assets/bundles/libscripts.bundle.js"></script>





<!-- Jquery Core Js -->
<script src="assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js-->
<script src="assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="../js/template.js"></script>
<script>


    $(document).ready(function () {

        $('.deptId').click(function () {
            let id = $(this).attr('data-bs-id');
            console.log("Delete data with id : ", id);
            document.getElementById("dept-delete").setAttribute("value",id);
        });
        $('#dept-delete').click(function (){
            let id = $(this).attr("value");
            $.ajax({
                url: '/admin/department/delete/'+id,
                method: 'DELETE',
                contentType: 'application/json',
                success: function(html) {
                    location.reload();
                    // handle success
                },
                error: function(request,msg,error) {
                    // handle failure
                }
            });
        });

        $('.edit').click(function (){
            let id = $(this).attr('data-id');
            console.log("Edit data with id : ",id);
            $.ajax({
                url: '/admin/department/'+id,
                method: 'GET',
                contentType: 'application/json',
                success: function(department) {
                    console.log( "dept : "+department);

                    // handle success
                    document.getElementById("edit-id").setAttribute("value",department.id);
                    document.getElementById("name").setAttribute("value",department.name);
                    document.getElementById("headName").value = department.headName;
                },
                error: function(request,msg,error) {
                    console.log("error edit")
                    // handle failure
                }
            });
        });

        // project data table

        $('#myProjectTable')
            .addClass( 'nowrap' )
            .dataTable( {
                responsive: true,
                columnDefs: [
                    { targets: [-1, -3], className: 'dt-body-right' }
                ]
            });
        $('.deleterow').on('click',function(){
            var tablename = $(this).closest('table').DataTable();
            tablename
                .row( $(this)
                    .parents('tr') )
                .remove()
                .draw();

        } );



        $('#send').click(function (){
            console.log("clickd");
            var name = document.getElementById("name1").value;
            var email = document.getElementById("email1").value;
            var subject = document.getElementById("subject").value;
            var text = document.getElementById("message").value;

            let message = {"name" : name, "email" : email, "subject" : subject, "message" : text};
            console.log(message);

            $.ajax({
                url:"/sendMessage",
                method : "POST",
                data: JSON.stringify(message),
                contentType : 'application/json',
                dataType : "json",
                success: function (msg){
                    document.getElementById("send-message").innerHTML = "Your message has been sent. Thank you!";
                },
                error : function (msg){
                    document.getElementById("error-message").innerHTML = "Your message has been sent. Thank you!";
                }
            });
        });


    });
</script>

</body>

</html>