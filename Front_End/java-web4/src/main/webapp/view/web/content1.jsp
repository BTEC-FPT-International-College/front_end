<div class="content1">
    <div class="content1-head">
        <div class="content1-info">
            <div class="content1-image">
                <i  class="fas fa-camera-retro"></i>
            </div>
            <c:if test="${empty requestScope['listP']}">
                <jsp:forward page="profile?action=profile" />
            </c:if>
            <c:forEach items="${listP}" var="x">
                <div class="content-description">
                    <div class="name">
                        ${x.getFullname()}
                    </div>

                    <div class="wallet">
                        BtecLand Wallet: ${x.getRewardpoint()}
                        <div class="coin">Coin</div>
                    </div>
                </div>
            </c:forEach>
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
                <a href="<c:url value ='/transaction?action=transaction' />">
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