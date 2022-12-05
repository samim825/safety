<%@ page import="com.spring.safety.model.Department" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">


<!-- Mirrored from www.pixelwibes.com/template/ihealth/html/dist/department.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 24 Sep 2022 13:13:57 GMT -->
<%@include file="includes/head.jsp"%>
<body>

<div id="ihealth-layout" class="theme-tradewind">

    <!-- sidebar -->
   <%@include file="includes/sidebar.jsp"%>

    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <%@include file="includes/header.jsp"%>

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
                                        List<Department> departments = (List<Department>) request.getAttribute("departments");
                                        Integer cnt = 1;
                                        for(Department department: departments){
                                    %>
                                    <tr>
                                        <td>
                                            <span class="fw-bold"><%=cnt++%></span>
                                        </td>
                                        <td>
                                            <span class="fw-bold ms-1"><%=department.getHeadName()%></span>
                                        </td>
                                        <td>
                                            <%=department.getName()%>
                                        </td>
<%--                                        <td>--%>
<%--                                            40--%>
<%--                                        </td>--%>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="Basic outlined example">
                                                <button name="edit" data-id="<%=department.getId()%>" class="btn btn-outline-secondary edit" aria-disabled="true" data-bs-toggle="modal" data-bs-target="#depedit"><i class="icofont-edit text-success"></i></button>
                                                <button name="delete" data-bs-id="<%=department.getId()%>" class="btn btn-outline-secondary deptId" data-bs-toggle="modal" data-bs-target="#depDelete" value="<%=department.getId()%>" aria-disabled="true"><i class="icofont-ui-delete text-danger"></i></button>
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
        <%@include file="includes/settings.jsp"%>

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