<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Container  -->
    <div class="container-p">

      <div class="content">
           <%@ include file="./content1.jsp" %>
            <div class="content2" id="tabs">
                <!-- <div class="content2-title">
                  <i class="fas fa-history"></i>
                  Transaction History</div>
                <div class="content2-des"> -->  
                  <div class="btn-group btn-group-toggle choose" data-toggle="buttons">
                    <!-- <a href="transaction-history.jsp"> -->
                      <label href="" class="btn btn-secondary btns active" rel="panel1" onclick="Redirectf();">
                        <!-- <a href="transaction-history.jsp"> -->
                        <input type="radio" name="options" id="option1" autocomplete="off" checked> <h3>Transaction History</h3>
                        <!-- </a> -->
                      </label>
                    <!-- </a> -->
                    <!-- <a href="recharge-history.html" > -->
                      <label class="btn btn-secondary btns"  rel="panel2" onclick="Redirect();">
                          <input type="radio" name="options" id="option2" autocomplete="off" > <h3>Recharge History</h3>
                        
                      </label>
                    <!-- </a> -->

                  </div> 
                  <div class="row" style="margin-bottom: 12px;">
                    <div class="col l-4" style="padding-left: 16px;">
                      <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" >
                    </div>
                    <div class="col l-6" style=" ">
                      <div class="input-daterange input-group" style="height: 34px;" id="datepicker">
                        <input type="date" class="input-sm form-control" style="height: 34px; z-index: 0;" name="from" placeholder="From date"/>
                        <span class="input-group-addon">to</span>
                        <input type="date" class="input-sm form-control" style="height: 34px; z-index: 0;" name="to" placeholder="To date"/>
                      </div>
                    </div>
                    <div class="col l-2">
                      <h4 id="button-search"><i class="fas fa-search"></i></h4>
                    </div>
                  </div>
                
                  <table class="table table-bordered tbs active" id="tab1">
                    <thead>
                    <tr>
                    <th>ID</th>
                    <th>Content</th>
                    <th>Amount Day</th>
                    <th>Created_at</th>
                    </tr>
                    </thead>
                    <tbody>
                        
                    <c:if test="${empty requestScope['listT']}">
                        <jsp:forward page="TransactionController?ac=view" />
                    </c:if>
                    <c:forEach items="${listT}" var="x">
                    <tr>
                        <td>${x.getPostID()}</td>
                        <td>${x.getWalletID()}</td>
                        <td>${x.getPrice()}</td>
                        <td>${x.getCreateDay()}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                  </table>

                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- End of container -->
