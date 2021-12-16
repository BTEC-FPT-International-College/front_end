
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
  <!-- End of Header  -->

  <!-- Container  -->
  <div class="container-p">

    <input type="checkbox" name="" id="nav-input">
    <label class="nav__overlay" for="nav-input"></label>
    <div class="content1 nav__content">
      <label class="nav__close nav__bars-btn" for="nav-input">
        <i class="fas fa-chevron-circle-left"></i>
      </label>
      <div class="content1-head">
          <div class="content1-info">
              <div class="content1-image">
                  <i  class="fas fa-camera-retro"></i>
              </div>
              <div class="content-description">
                  <div class="name">
                      Minh Minh
                  </div>
                  
                  <div class="wallet">
                      BtecLand Wallet:
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
                  <a href="">
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
    <div class="nav__content2">
      <label class="open nav__bars-btn" for="nav-input">
        <i class="fas fa-chevron-circle-right"></i>
      </label>
      <ul>
        <li>
          <a href="">
            <i class="fas fa-feather-alt list-icon"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fas fa-list-ol list-icon"></i>
          </a>
        </li>
        <li>
          <a href=""><i class="far fa-user list-icon"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fas fa-key list-icon"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fas fa-wallet list-icon"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fas fa-history list-icon"></i>
          </a>
        </li>
      </ul>
    </div>
    <div class="row content3">
      <!-- <div class="row"> -->
        <div class="col l-8 content3__con1">
          <div class=" content3__child content3__basic">
            <h2 style="margin-bottom: 10px;">Basic Infomation</h2>
            <div class="btn-group btn-group-toggle choose" data-toggle="buttons">
              <label class="btn btn-secondary active">
                <input type="radio" name="options" id="option1" autocomplete="off" checked> Buy
              </label>
              <label class="btn btn-secondary">
                <input type="radio" name="options" id="option2" autocomplete="off"> Rent
              </label>
            </div> 
            <h4>Real estate type*</h4> 
            <select class="form-control">
              <option>Apartment</option>
              <option>Private house, street house</option>
              <option>Villa, adjacent houses</option>
              <option>The ground</option>
              <option>Residential land</option>
              <option>Office building</option>
              <option>Apartment condotel</option>
              <option>Officetel apartment</option>
              <option>Restaurant</option>
              <option>Warehouse, factory, kiot</option>
              <option>Other house and land</option>
            </select> 
            <h3>Address</h3>
            <h4>Provice / City</h4>
            <select class="form-control" name="ls_province"></select>
            <h4>District</h4>
            <select class="form-control" name="ls_district"></select>
            <h4>Wards</h4>
            <select class="form-control" name="ls_ward"></select>
            <script src="vietnamlocalselector.js"></script>
            <script>
              var localpicker = new LocalPicker({
                province: "ls_province",
                district: "ls_district",
                ward: "ls_ward"
                  });
            </script>
            <h4>Detail address</h4>
            <textarea class="form-control" placeholder="Enter detail address"></textarea>
            
          </div>
          <div class=" content3__child content3__post">
            <h2>Post Info</h2>
            <h4>Title*</h4>
            <input class="form-control" type="text" placeholder="Input title">
            <h4>Description*</h4>
            <textarea class="form-control" placeholder="Enter description"></textarea>
          </div>
          <div class=" content3__child content3__estate">
            <h2>Real estate information </h2>
            <h3 style="margin-top: 10px;">Specific description</h3>
            <h4>Area*</h4>
            <input class="form-control" type="text" placeholder="Input area (mÂ²)">
            <h4>Price*</h4>
            <input class="form-control" type="text" placeholder="Input price / mÂ²">
            <h4>Bedroom</h4>
            <div class="bedroom">
              <button onclick="increment()"><h1><i class="fas fa-plus"></i></h1></button>
              <button onclick="decrement()"><h1><i class="fas fa-minus"></i></h1></button>
              <script>
                function increment() {
                    document.getElementById('demoInput').stepUp();
                }
                function decrement() {
                    document.getElementById('demoInput').stepDown();
                }
              </script>
              <input class="form-control" id="demoInput" type="number" min=0 max=110>
            </div>
            <h4>Bathroom</h4>
            <div class="bathroom">
              <button onclick="incrementBr()"><h1><i class="fas fa-plus"></i></h1></button>
              <button onclick="decrementBr()"><h1><i class="fas fa-minus"></i></h1></button>
              <script>
                function incrementBr() {
                    document.getElementById('demoInputBr').stepUp();
                }
                function decrementBr() {
                    document.getElementById('demoInputBr').stepDown();
                }
              </script>
              <input class="form-control" id="demoInputBr" type="number" min=0 max=110>
            </div>
            <h4>Number of floors</h4>
            <input class="form-control" type="number" placeholder="Number of floors">
            <h3>More description</h3>
            <h4>The direction of the house</h4>
            <select class="form-control">
              <option>East</option>
              <option>West</option>
              <option>South</option>
              <option>North</option>
              <option>Northeast</option>
              <option>Northwest</option>
              <option>Southeast</option>
              <option>Southwest</option>
            </select>
            <h4>Balcony direction</h4>
            <select class="form-control">
              <option>East</option>
              <option>West</option>
              <option>South</option>
              <option>North</option>
            </select>
            <h4>Furniture</h4>
            <input class="form-control" type="text" placeholder="Furniture info">
            <h4>Facade</h4>
            <input class="form-control" type="text" placeholder="Facade (mÂ²)">
            <h4>Front of the entrance road</h4>
            <input class="form-control" type="text" placeholder="Font of the entrance road (mÂ²)">

          </div>
          <div class=" content3__child content3__image">
            <h2 style="margin-bottom: 10px;">Picture</h2>
            <div id="drag-drop-area"></div>
 
            <script src="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.js"></script>
            <script>
              var uppy = Uppy.Core()
                .use(Uppy.Dashboard, {
                  inline: true,
                  target: '#drag-drop-area'
                })
                .use(Uppy.Tus, {endpoint: 'https://master.tus.io/files/'}) //you can put upload URL here, where you want to upload images
        
              uppy.on('complete', (result) => {
                console.log('Upload complete! Weâve uploaded these files:', result.successful)
              })
            </script>
          </div>
          <div class=" content3__child content3__contact">
            <h2>Contact Info</h2>
            <h4>Contact name*</h4>
            <input placeholder="Nháº­p tÃªn liÃªn há»"  type="text" style="width: 344px;" class="input-exist" value="Tran Minh Minh (BTEC HN)">
            <h4>Phone number*</h4>
            <input placeholder="Nháº­p tÃªn liÃªn há»"  type="text" class="input-exist" value="9999999999">
            <h4>Email</h4>
            <input placeholder="Nháº­p tÃªn liÃªn há»"  type="text" class="input-exist" value="minhminh@gmail.com">
            <h4>Address</h4>
            <textarea class="form-control" placeholder="Enter address"></textarea>
          </div>
        </div>
        <div class="col l-4 content3__con2">
          <div class="content3__con2-child">
            <h4>Type of post</h4>
            <select class="form-control" id="type-post" onChange="calTypes();">
              <option value="10">Regular post</option>
              <option value="20">Vip 1</option>
              <option value="30">Vip 2</option>
              <option value="40">Vip 3</option>
            </select>
            <h4>Start date</h4>
            <div class="input-daterange input-group" style="height: 34px;" id="datepicker">
              <input type="date" class="input-sm form-control start-date" id="pick_date" onchange="cal(); calTypes();"  style="height: 34px; width:170px;font-size: 13px; z-index: 0;" name="from" placeholder="From date"/>
              <span class="input-group-addon">to</span> 
              <input type="date" class="input-sm form-control" id="drop_date" onchange="cal(); calTypes(); " style="height: 34px; width:154px;font-size: 13px; z-index: 0;" name="to" placeholder="To date"/>
            </div>
            
            <script type="text/javascript">
              // for cost
              function calTypes() {
                // var a = parseInt(sel.options[sel.selectedIndex].value)
                a = document.getElementById("type-post").value
                document.getElementById("postCost").value = a
                // document.getElementById("sumAll").value = parseInt(a * GetDays())
                if(document.getElementById("drop_date")){
                  document.getElementById("sumAll").value = a * GetDays();
                }
              }
              
              // for sumDay
              function GetDays(){
                var dropdt = new Date(document.getElementById("drop_date").value);
                var pickdt = new Date(document.getElementById("pick_date").value);
                // console.log(parseInt((dropdt - pickdt) / (24 * 3600 * 1000)))
                var b = parseInt((dropdt - pickdt) / (24 * 3600 * 1000))
                return b;
              }
              function cal(){
                if(document.getElementById("drop_date")){
                    document.getElementById("sumDay2").value=GetDays();
                    document.getElementById("sumDay22").value=GetDays();
                }  
              }
              
              //for sum all
              function tSum() {
                let a = parseInt(sel.options[sel.selectedIndex].value)
                document.getElementById("postCost").value = a
                var dropdt = new Date(document.getElementById("drop_date").value);
                var pickdt = new Date(document.getElementById("pick_date").value);
                // console.log(parseInt((dropdt - pickdt) / (24 * 3600 * 1000)))
                var b = parseInt((dropdt - pickdt) / (24 * 3600 * 1000))
                var c = a * b
                console.log(a)
                return c;
              }
              function sum(){
                let a = document.getElementById("postCost");
                let b = document.getElementById("sumDay22").value;
                console.log(a)
                let sum = a + b;
            
                document.getElementById('sumAll').value = sum;
              }
            </script>
            <div class="total-posting-date">
              <h4>Total posting date</h4>
              <input type="number" class="form-control" id="sumDay2" >
            </div>
            <div class="payment">
              <div class="payment-title">
                <div class="cost-day">
                  Posting cost / day
                  <input  id="postCost" onchange="sum()" />
                  <div class="money">
                    USD
                  </div>
                </div> 
                <div class="total-day">
                  Total days<input id="sumDay22" onchange="sum()"/>
                  <div class="day">
                    Day
                  </div>
                </div>
              </div>
              <div class="payment-price">
                Total prices
                <input id="sumAll" onchange="Sum()"/>
              </div>
              
            </div>
            <button id="submit" onClick="numberOfNightsBetweenDates()">Next</button>
            
          </div>
        <!-- </div> -->
      </div>
      
    </div>
  </div>
  <!-- End of container -->

">


  