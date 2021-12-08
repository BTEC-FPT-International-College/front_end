<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Container  -->
    <div class="container-p">



      <div class="content">
            <div class="content1">
                <div class="content1-head">
                    <div class="content1-info">
                        <div class="content1-image">
                            <i  class="fas fa-camera-retro"></i>
                        </div>
                        
                        
                            <div class="content-description">
                                <div class="name">
                                  
                                </div>

                                <div class="wallet">
                                    BtecLand Wallet: 6789
                                    <div class="coin">Coin</div>
                                </div>
                            </div>
                
                    </div>

                </div>
                <div class="content1-below">
                    <div class="management">MANAGE POST
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-feather-alt"></i>
                              CREATE NEW POST
                            </a>
                        </div>
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-list-ol"></i>
                              LIST OF POST
                            </a>
                        </div>
                    </div>
                    <div class="management">MANAGEMENT PROFILE
                        <div class="management-des">
                            <a href=""><i class="far fa-user"></i>
                              ACCOUNT INFOMATION
                            </a>
                        </div>
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-key"></i>
                            CHANGE PASSWORD
                            </a>
                        </div>
                    </div>
                    <div class="management">MANAGEMENT WALLET
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-wallet"></i>
                            BALANCE 
                            </a>
                        </div>
                        <div class="management-des">
                            <a href="transaction-history.jsp">
                              <i class="fas fa-history"></i>
                            TRANSACTION HISTORY
                            </a>
                        </div>
                    </div>
                    <div class="content1-below-post">
                        <div class="post" >
                            <a href="" style="color: #fff;">
                              <i class="fas fa-feather-alt"></i>
                            CREATE POST
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content2" id="tabs">
                <!-- <div class="content2-title">
                  <i class="fas fa-history"></i>
                  Transaction History</div>
                <div class="content2-des"> -->
                  <div class="btn-group btn-group-toggle choose" data-toggle="buttons">
                    <!-- <a href="transaction-history.jsp"> -->
                      <label href="" class="btn btn-secondary btns " rel="panel1" onclick="Redirectf();">
                        <!-- <a href="transaction-history.jsp"> -->
                        <input type="radio" name="options" id="option1" autocomplete="off" > <h3>Transaction History</h3>
                        <!-- </a> -->
                      </label>
                    <!-- </a> -->
                    <!-- <a href="recharge-history.html" > -->
                      <label class="btn btn-secondary btns active"  rel="panel2" onclick="Redirect();">
                          <input type="radio" name="options" id="option2" autocomplete="off" checked> <h3>Recharge History</h3>
                        
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
                    <th>User Name</th>
                    <th>Content</th>
                    <th>Amount Day</th>
                    <th>Created_at</th>
                    </tr>
                    </thead>
                    <tbody>
                        
                    <c:if test="${empty requestScope['listR']}">
                        <jsp:forward page="RechargeController?ac=view" />
                    </c:if>
                    <c:forEach items="${listR}" var="x">
                    <tr>
                      <td>${x.getRechargeid()}</td>
                      <td>${x.getName()}</td>
                      <td>${x.getContent()}</td>
                      <td>${x.getAmount()}</td>
                      <td>${x.getCreate_date()}</td>
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