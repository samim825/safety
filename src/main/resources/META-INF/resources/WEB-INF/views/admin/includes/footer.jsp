
<!-- Jquery Core Js -->
<script src="assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js -->
<script src="assets/bundles/apexcharts.bundle.js"></script>
<script src="assets/plugin/jqueryuicalandar/jquery-ui.min.js"></script>
<script src="assets/plugin/owlcarousel/owl.carousel.js"></script>
<script src="assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="../js/template.js"></script>
<script src="../js/page/index.js"></script>
<script>
    $('#myDataTable')
        .addClass( 'nowrap' )
        .dataTable( {
            responsive: true,
            columnDefs: [
                { targets: [-1, -3], className: 'dt-body-right' }
            ]
        });
</script>

</body>

<!-- Mirrored from www.pixelwibes.com/template/ihealth/html/dist/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 24 Sep 2022 13:13:22 GMT -->
</html>