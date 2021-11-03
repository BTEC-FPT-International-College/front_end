<%-- 
    Document   : viewDetailUser
    Created on : 21-10-2021, 10:56:19
    Author     : nguyenbamang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View user detail Page</title>
  <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../images/favicon.png" />
    </head>
    <body>
    <div class="container-scroller">
                    <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <%@ include file="../inc/plugins.jsp" %>
        <div class="container rounded bg-white mt-5">
        <h4 class="card-body" style="text-align: center;">View detail</h4>
        <div class="row">
            <div class="col-md-4 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="https://i.imgur.com/0eg0aG0.jpg" width="90"><span class="font-weight-bold">John Doe</span><span class="text-black-50">john_doe12@bbb.com</span><span>United States</span></div>
            </div>
            <div class="col-md-8">
                <div class="p-3 py-5">
                    <div class="row mt-2">
                        <div class="col-md-6">FullName: <input type="text" class="form-control" placeholder="first name" value="John"></div>
                        <div class="col-md-6" >Email: <input type="text" class="form-control" value="Doe" placeholder="Doe"></div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-12"> Address<input type="text" class="form-control" placeholder="Email" value="john_doe12@bbb.com"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"> Date of Birth<input type="text" class="form-control" placeholder="Email" value="john_doe12@bbb.com"></div>
                        <div class="col-md-6"> Gender<input type="text" class="form-control" value="+19685969668" placeholder="Phone number"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"> Total Purchases<input type="text" class="form-control" placeholder="address" value="D-113, right avenue block, CA,USA"></div>
                        <div class="col-md-6"> Create Day<input type="text" class="form-control" value="USA" placeholder="Country"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"> Reward Point<input type="text" class="form-control" placeholder="Bank Name" value="Bank of America"></div>
                        <div class="col-md-6"> Rank<input type="text" class="form-control" value="043958409584095" placeholder="Account Number"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-4"> Wallet ID<input type="text" class="form-control" placeholder="Bank Name" value="Bank of America"></div>
                        <div class="col-md-4"> Surplus<input type="text" class="form-control" value="043958409584095" placeholder="Account Number"></div>
                        <div class="col-md-4"> Total Post<input type="text" class="form-control" value="043958409584095" placeholder="Account Number"></div>
                    </div>
                    <div class="mt-5 text-right"><button class="btn btn-danger profile-button" type="button">Delete</button></div>
                </div>
            </div>
        </div>
    </div>
    </div>
   <%@ include file="../inc/nvarbar.jsp" %>
   <%@ include file="../inc/sidebar.jsp" %>
   <%@ include file="../inc/plugins.jsp" %>
    </body>
</html>