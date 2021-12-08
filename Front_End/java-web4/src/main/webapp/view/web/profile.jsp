<%@include file="/common/taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!-- Container  -->
    <div class="container-p">
        <div class="content">
            <%@ include file="./content1.jsp" %>
            <div class="content2">
                <div class="content2-title">
                  <i class="fas fa-id-card"></i>
                  Account Info</div>
                <div class="content2-des">
                  <div class="content2-alert">
                    Please fill in all information to use the function
                  </div>
                  <c:forEach items="${listP}" var="x">
                    <div class="form-info">
                      <div class="form-group form-row">
                        <label for="name">
                          Full Name
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" value="${x.getFullname()}" style="width: 532px;">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Phone
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" style="width: 532px;" value="${x.getPhone()}">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Email
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" style="width: 532px;" value="${x.getEmail()}">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Date Of Bird
                          <span class="required"></span>
                        </label>
                        <input class="form-control date-control input-masked" value="${x.getDateofbirth()}" data-toggle="date-picker" style="width: 242px;">
                      </div>
                      <div class="form-group form-row" style="display: flex;">
                        <label for="name">
                          Gender
                          <span class="required"></span>
                        </label>
                          <div class="">
                           Male <input type="radio" name="R1" value="Male" <c:if test="${x.getGender()=='0'}">checked</c:if>>
                           Female <input type="radio" name="R1" value="Female" <c:if test="${x.getGender()=='1'}">checked</c:if>>
                        </div>
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Address
                          <span class="required"></span>
                        </label>
                        <input class="form-control" style="width: 532px;" value="${x.getAddress()}">
                      </div>
                    </div>
                  </c:forEach>
                  <div class="update-button">
                    <div class="update-info">
                      UPDATE INFO
                    </div>
                  </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!--End of container--> 
   