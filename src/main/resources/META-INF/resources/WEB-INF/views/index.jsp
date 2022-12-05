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

    <!-- ======= Services Section ======= -->
<%--    <%@include file="public/services.jsp" %>--%>
    <!-- End Services Section -->

    <!-- ======= Hospital Section ======= -->
    <%@include file="public/hospital.jsp" %>
    <!-- End hospital Section -->


    <!-- ======= Appointment Section ======= -->
    <%@include file="public/appointment.jsp" %>
    <!-- End Appointment Section -->

    <!-- ======= Departments Section ======= -->
<%--    <%@include file="public/departments.jsp" %>--%>
    <!-- End Departments Section -->

    <!-- ======= Testimonials Section ======= -->
    <%@include file="public/testimonials.jsp" %>
    <!-- End Testimonials Section -->

    <!-- ======= Doctors Section ======= -->
    <%@include file="public/doctors.jsp" %>
    <!-- End Doctors Section -->

    <!-- ======= Gallery Section ======= -->
<%--    <%@include file="public/gallery.jsp" %>--%>
    <!-- End Gallery Section -->

    <!-- ======= Pricing Section ======= -->
<%--    <%@include file="public/pricing.jsp" %>--%>
    <!-- End Pricing Section -->

    <!-- ======= Frequently Asked Questioins Section ======= -->
<%--    <%@include file="public/asked-questions.jsp" %>--%>
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

        // project data table
        $('#myProjectTable')
            .addClass( 'nowrap' )
            .dataTable( {
                responsive: true,
                columnDefs: [
                    { targets: [-1, -3], className: 'dt-body-right' }
                ]
            });

        $('#myProjectTable1')
            .addClass( 'nowrap' )
            .dataTable( {
                responsive: true,
                columnDefs: [
                    { targets: [-1, -3], className: 'dt-body-right' }
                ]
            });

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