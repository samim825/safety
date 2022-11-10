<%@ page import="com.spring.safety.model.Department" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">


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



<div id="ihealth-layout" class="theme-tradewind">

    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <!-- Body: Body -->
        <div class="body d-flex py-lg-3 py-md-2">
            <div class="container-xxl">
                <div class="row align-items-center">
                    <div class="border-0 mb-4">
                        <div class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
                            <h3 class="fw-bold mb-0">Departments</h3>
                            <div class="col-auto d-flex w-sm-100">
                                <button type="button" class="btn btn-primary btn-set-task w-sm-100" data-bs-toggle="modal" data-bs-target="#depadd"><i class="icofont-plus-circle me-2 fs-6"></i>Add Departments</button>
                            </div>
                        </div>
                    </div>
                </div> <!-- Row end  -->
                <div class="row clearfix g-3">
                    <div class="col-sm-12">
                        <div class="card mb-3">
                            <div class="card-body">
                                <table id="myProjectTable" class="table table-hover align-middle mb-0" style="width:100%">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Department Head</th>
                                        <th>Department Name</th>
                                        <%--                                        <th>Staff UnderWork</th>--%>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
//                                        List<Department> departments = (List<Department>) request.getAttribute("departments");
//                                        Integer cnt = 1;
//                                        for(Department department: departments){
                                        for(int cnt = 1; cnt<15; cnt++){
                                    %>
                                    <tr>
                                        <td>
                                            <span class="fw-bold"><%=cnt%></span>
                                        </td>
                                        <td>
                                            <img class="avatar rounded-circle" src="assets/images/xs/avatar1.jpg" alt="">
                                            <span class="fw-bold ms-1"><department.getHeadName()%></span>
                                        </td>
                                        <td>
                                            department.getName()%>
                                        </td>
                                        <%--                                        <td>--%>
                                        <%--                                            40--%>
                                        <%--                                        </td>--%>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="Basic outlined example">
                                                <button name="edit" data-id="department.getId()%>" class="btn btn-outline-secondary edit" aria-disabled="true" data-bs-toggle="modal" data-bs-target="#depedit"><i class="icofont-edit text-success"></i></button>
                                                <button name="delete" data-bs-id="department.getId()%>" class="btn btn-outline-secondary deptId" data-bs-toggle="modal" data-bs-target="#depDelete" value="department.getId()%>" aria-disabled="true"><i class="icofont-ui-delete text-danger"></i></button>
                                            </div>
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

        <!-- Modal Custom Settings-->
<%--        <%@include file="includes/settings.jsp"%>--%>

        <!-- Add Department-->
        <div class="modal fade" id="depadd" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title  fw-bold" id="depaddLabel"> Department Add</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="/admin/department/save" method="post">
                        <div class="modal-body">

                            <div class="mb-3">
                                <label for="departmentName" class="form-label">Department Name</label>
                                <input type="text" name="name" class="form-control" id="departmentName">
                            </div>
                            <div class="mb-3">
                                <label for="departmentHeadName" class="form-label">Department Head Name</label>
                                <input type="text" name="headName" class="form-control" id="departmentHeadName">
                            </div>
                            <%--                        <div class="deadline-form">--%>
                            <%--                            <form>--%>
                            <%--                                <div class="row g-3 mb-3">--%>
                            <%--                                    <div class="col-sm-6">--%>
                            <%--                                        <label for="depone" class="form-label">Department Head</label>--%>
                            <%--                                        <input type="text" class="form-control" id="depone">--%>
                            <%--                                    </div>--%>
                            <%--                                    <div class="col-sm-6">--%>
                            <%--                                        <label for="deptwo" class="form-label">Staff UnderWork</label>--%>
                            <%--                                        <input type="text" class="form-control" id="deptwo">--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </form>--%>
                            <%--                        </div>--%>
                        </div>
                        <div class="modal-footer">
                            <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Reset</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Edit Department-->
        <div class="modal fade" id="depedit" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title  fw-bold" id="depeditLabel"> Department Edit</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="/admin/department/update" method="post">
                        <div class="modal-body">
                            <div class="mb-3">
                                <input type="hidden" name="id" id="edit-id">
                                <label for="name" class="form-label">Department Name</label>
                                <input type="text" name="name" class="form-control" id="name">
                            </div>
                            <div class="mb-3">
                                <label for="headName" class="form-label">Department Name</label>
                                <input type="text" name="headName" class="form-control" id="headName">
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Back</button>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Delete Department -->
        <div class="modal fade" id="depDelete" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title  fw-bold" id="depDeleteLabel"> Are you sure you want to delete?</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                        <button class="btn btn-primary" id="dept-delete">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




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
    });
</script>

</body>


</html>