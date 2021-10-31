<%-- 
    Document   : suppervisor
    Created on : 21-10-2021, 10:55:18
    Author     : nguyenbamang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Suppervisors Management Page</title>
<link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="../css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="../images/favicon.png" />
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
        <script>
             $(document).ready(function () {
                 $('#example').dataTable({
                    "language": {
                        "sProcessing": "Processing...",
                        "sLengthMenu": "View _MENU_ item",
                        "sZeroRecords": "No matching lines found",
                        "sInfo": "Viewing _START_ to _END_ of total _TOTAL_ entries",
                        "sInfoEmpty": "Viewing 0 to 0 out of 0 entries",
                        "sInfoFiltered": "(filtered from _MAX_ entries)",
                        "sInfoPostFix": "",
                        "sSearch": "Search now:",
                        "sUrl": "",
                        "oPaginate": {
                            "sFirst": "Head",
                            "sPrevious": "Previous",
                            "sNext": "Nex",
                            "sLast": "End"
                        }
                    }
                });
             });
        </script>
    </head>
    <body>
    <div class="container-scroller">
   <%@ include file="../inc/nvarbar.jsp" %>
   <%@ include file="../inc/sidebar.jsp" %>
   <div class="main-panel">
        <div class="content-wrapper">
        <div class="row">
          <div class="col-md-12 stretch-card">
            <div class="card">
              <div class="card-body">
                  <h2 class="card-body" style="text-align: center;">Supervisor Management</h2>
                  <br/>
                  <br/>
                  <div  class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" >
                      <thead>
                        <tr>
                          <th>
                            ID
                          </th>
                          <th>
                            Fullname
                          </th>
                          <th>
                            Gender
                          </th>
                          <th>
                            Email
                          </th>
                          <th>
                            Phone
                          </th>
                          <th>
                            View detail
                          </th>
                          <th>
                            Update
                          </th>
                          <th>
                            Delete
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>
                            <a href="viewDeatilSup.html" class="btn btn-primary a-btn-slide-text">
                              <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                              <i class="mdi mdi-account-card-details"></i>
                              <span> <strong> View</strong></span>            
                              </a>
                          </td>
                          <td>                          
                            <a href="updateSup.html" class="btn btn-warning a-btn-slide-text">
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <i class="mdi mdi-border-color"></i>
                            <span> <strong> Update</strong></span>            
                            </a>
                          </td>
                          <td>
                            <div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal${x.getCateID()}"><i class="mdi mdi-delete"></i>Delete</button>
                                                            <div id="my-modal${x.getCateID()}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                    <div class="modal-content border-0">
                                                                        <div class="modal-body p-0">
                                                                            <div class="card border-0 p-sm-3 p-2 justify-content-center">
                                                                                <div class="card-header pb-0 bg-white border-0 ">
                                                                                    <div class="row">
                                                                                        <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                                                                                    </div>
                                                                                    <p class="font-weight-bold mb-2"> Are you sure you wanna delete ${x.getCateID()} category ?</p>
                                                                                    <p class="text-muted "> This change may affect other data. Be sure !!!</p>
                                                                                </div>
                                                                                <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                                                                                    <div class="row justify-content-end no-gutters">
                                                                                        <div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>
                                                                                        <div class="col-auto"><div class="col-auto"><button title="${x.getCateID()}" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                          </td>
                        </tr>
                      </tbody>
                      <tfoot>
                          <tr>
                          <th>
                            ID
                          </th>
                          <th>
                            Fullname
                          </th>
                          <th>
                            Gender
                          </th>
                          <th>
                            Email
                          </th>
                          <th>
                            Phone
                          </th>
                          <th>
                            View detail
                          </th>
                          <th>
                            Update
                          </th>
                          <th>
                            Delete
                          </th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   </div>
    </div>
   <%@ include file="../inc/plugins.jsp" %>
    </body>
</html>
