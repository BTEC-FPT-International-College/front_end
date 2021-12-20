


<script>
        $(document).ready(function() {
            let id = '<%=request.getParameter("id")%>'
            console.log(id)
            $.ajax({
                    url: "ProfileController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $(".name").text(obj[0].fullName)
                        $("#pointvalue").val(obj[0].rewardPoint)
                    },
                    error: function () {
                        alert("error");
                    }
                });
             $.ajax({
                    url: "WalletController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $("#walletvalue").val(obj[0].surplus)
                    },
                    error: function () {
                        alert("error");
                    }
                });
})
    </script>
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
                        BtecLand Wallet: <input id="walletvalue" style="pointer-events: none; width: 98px; margin-left: 8px">
                        <div class="coin">Coin</div>
                    </div>
                    <div class="reward-point">
                        Reward Point: <input id="pointvalue" style="pointer-events: none; width: 116px; margin-left: 8px">
                        <div class="point">Point</div>
                    </div>
                    
                </div>
        </div>

    </div>
    <div class="content1-below">
        <div class="management">MANAGE POST
            <div class="management-des">
                <a href="newpost.jsp?id=<%=request.getParameter("id")%>">
                  <i class="fas fa-feather-alt"></i>
                  CREATE NEW POST
                </a>
            </div>
            <div class="management-des">
                <a href="manager-post.jsp?id=<%=request.getParameter("id")%>">
                  <i class="fas fa-list-ol"></i>
                  LIST OF POST
                </a>
            </div>
        </div>
        <div class="management">MANAGEMENT PROFILE
            <div class="management-des">
                <a href="profile.jsp?id=<%=request.getParameter("id")%>"><i class="far fa-user"></i>
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
                <a href="deposit-money.jsp?id=<%=request.getParameter("id")%>">
                  <i class="fas fa-wallet"></i>
                BALANCE 
                </a>
            </div>
            <div class="management-des">
                <a href="transaction-history.jsp?id=<%=request.getParameter("id")%>">
                  <i class="fas fa-history"></i>
                TRANSACTION HISTORY
                </a>
            </div>
        </div>
        <div class="content1-below-post">
            <div class="post" >
                <a href="newpost.jsp?id=<%=request.getParameter("id")%>" style="color: #fff;">
                  <i class="fas fa-feather-alt"></i>
                CREATE POST
                </a>
            </div>
        </div>
    </div>
</div>