<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>拣选系统</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="icon" 
          type="image/png" 
          href="/images/logo_pure.png"> 
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">    
    <style type="text/css">
    .spinner {
      margin: 20px auto;
      width: 50px;
      height: 60px;
      text-align: center;
      font-size: 10px;
    }
     
    .spinner > div {
      background-color: #67CF22;
      height: 100%;
      width: 6px;
      display: inline-block;
       
      -webkit-animation: stretchdelay 1.2s infinite ease-in-out;
      animation: stretchdelay 1.2s infinite ease-in-out;
    }
     
    .spinner .rect2 {
      -webkit-animation-delay: -1.1s;
      animation-delay: -1.1s;
    }
     
    .spinner .rect3 {
      -webkit-animation-delay: -1.0s;
      animation-delay: -1.0s;
    }
     
    .spinner .rect4 {
      -webkit-animation-delay: -0.9s;
      animation-delay: -0.9s;
    }
     
    .spinner .rect5 {
      -webkit-animation-delay: -0.8s;
      animation-delay: -0.8s;
    }
     
    @-webkit-keyframes stretchdelay {
      0%, 40%, 100% { -webkit-transform: scaleY(0.4) } 
      20% { -webkit-transform: scaleY(1.0) }
    }
     
    @keyframes stretchdelay {
      0%, 40%, 100% {
        transform: scaleY(0.4);
        -webkit-transform: scaleY(0.4);
      }  20% {
        transform: scaleY(1.0);
        -webkit-transform: scaleY(1.0);
      }
    }

        .time {
            text-align: center;
            width:400px;
            font-family: "Book Antiqua",Palatino,serif;
            font-size: 40px;
            font-weight: bold;
            text-shadow: 1px 1px 3px #333;
            position:absolute;
        }
        .time em {
            background: white;
            position: absolute;
            top: 5px;
            left: 130px;
            height: 18px;
            width: 140px;
            opacity: 0.4;
        }
    </style>

    <script src="/javascripts/jquery.min.js" type="text/javascript"></script> 
    <script src="/bootstrap/js/bootstrap.min.js"></script>
  </head>
  <body >

      <nav class="navbar navbar-default navbar-fixed-top" style="text-align: center;background-color: rgba(0,128,0,0.8);">
        <div class="container">
          <div class="row" id = "subNavBar" style="">
            <div class="col-xs-3 col-sm-3 col-md-3 col-md-lg-3" style="text-align: left;" >
                <img src="/images/logo_pure.png" class="img-responsive" alt="Responsive image" style="width: 35px; margin-top: 6px;float: left;margin-right: 10px;">
                <div  style="color: rgba(256,256,256,1); padding-top: 10px; font-size: 18px; margin-left: -50px;">订单拣选系统
                  <span id="updateTip" style="font-size: 14px; color: red; font-weight: bold;cursor:pointer;" onclick="startUpdateWaiting()">升级</span>
                </div>
            </div>
            <div class="col-xs-1 col-sm-1 col-md-1 col-md-lg-1">
                <a class="btn btn-link" href="/OrderListIndex" target="_blank"  role="button" style="width: 100%;color: rgba(256,256,256,0.6); padding-top: 10px; font-size: 16px;margin-left: -80px;">订单管理</a>   
            </div>    
            <div class="col-xs-1 col-sm-1 col-md-1 col-md-lg-1">
                <a class="btn btn-link" href="/MergeOrderManagementIndex"  target="_blank" role="button" style="width: 100%;color: rgba(256,256,256,0.6); padding-top: 10px; font-size: 16px;margin-left: -80px;">集合单管理</a>   
            </div>    

            <div class="col-xs-1 col-sm-1 col-md-1 col-md-lg-1">
                <a class="btn btn-link" href="/ProductManagementIndex" target="_blank"  role="button" style="width: 100%; color: rgba(256,256,256,0.6); padding-top: 10px; font-size: 16px;margin-left: -80px;">产品管理</a>  
            </div>                
            <div class="col-xs-4 col-sm-4 col-md-4 col-md-lg-4" style="text-align: left;"> </div>

             <!-- <div class="col-xs-1 col-sm-1 col-md-1 col-md-lg-1">
               <a class="btn btn-link" href="/m"  target="_blank" role="button" style="width: 100%; color: rgba(256,256,256,0.9); padding-top: 10px; font-size: 16px;"><span class="glyphicon glyphicon-sort-by-attributes" aria-hidden="true" style="margin-right: 5px; top: 3px;"></span>集合单拣选</a> 
            </div>-->
            <div class="col-xs-2 col-sm-2 col-md-2 col-md-lg-2">
                <a class="btn btn-link" href="/PickUpIndex" target="_blank" role="button" style="width: 100%; color: rgba(256,256,256,0.9); padding-top: 10px; font-size: 16px;"><span class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true" style="margin-right: 5px; top: 3px;"></span>订单拣选</a>
            </div>
                         

          </div>
      </nav>


      <div class="container" style="margin-top:65px;">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12 col-md-lg-12"  style="text-align:center;">
              <img src="/images/clock.png" class="img-responsive" alt="Responsive image" style="max-width: 450px; margin-top: 0px;margin-right: 10px;display: inline;">
          </div>
          <div class="col-xs-12 col-sm-12 col-md-12 col-md-lg-12"  style="text-align: center; font-size: 22px; margin-top: 10px; border-top: solid 1px rgba(111,111,111,0.3); padding-top: 15px;">
            忙碌和紧张，能带来高昂的工作情绪；只有全神贯注时，工作才能产生高效率
          </div>
          
          <div class="col-xs-2 col-sm-2 col-md-2 col-md-lg-2"  style="text-align:center;font-size:16px;margin-top:10px;"></div>
          <div class="col-xs-8 col-sm-8 col-md-8 col-md-lg-8"  style="text-align:right;font-size:14px;margin-top:10px;">
            ——松下幸之助
          </div>
          <div class="col-xs-2 col-sm-2 col-md-2 col-md-lg-2"  style="text-align:center;font-size:16px;">
          </div>
          <!-- <div class="time" style="text-align:center;"><span id="currtime">00:00:00</span><em></em></div> -->
        </div>
      </div>

      <nav class="navbar navbar-default navbar-fixed-bottom">
        <div class="container">
              <div class="col-xs-12 col-sm-12 col-md-12 col-md-lg-12">
                <div id="blurAlert" class="alert " role="alert" style="text-align: center;font-size:20px;"></div>
              </div>
        </div>
      </nav> 

    <script>
        //1.13
    $(document).ready(function() {
      var updateTip = $("#updateTip")
      updateTip.hide()
      setInterval(checkUpdate, 5000)
    });

    function checkUpdate() {
      var updateTip = $("#updateTip")
        $.get("/NewUpdate", function(data) {
            if (data.Code == 0) {
               console.log("发现升级信息")
                updateTip.show()
            }else{
               console.log("没有升级信息")
              updateTip.hide()
            }
        })
    }
    function startUpdateWaiting() {
        var r = confirm("系统可以升级了，是否现在升级？")
        if (r == true) {
            $.get("/UpdateNow", function(data) {
                if (data.Code == 0) {
                    $('#myModal').modal('show')
                    setInterval(function() {
                        $.get("/TestAlive", function(data, status) {
                            console.log(status)
                            if (status == "success") {
                                console.info("升级完毕")
                                $('#myModal').modal('hide')
                            }
                        })
                    }, 2000)
                }else{
                  alert("升级失败，请联系系统管理员")
                }
            })
        }
    }
    function ShowAlertMessage(msg){
        $("#blurAlert").text(msg).show()
    }
    function HideAlertMessage(){
        $("#blurAlert").hide()
    }    
    </script>

    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="margin-top: 200px;">
          <div class="modal-content">
            <div class="modal-header">
              <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
              <h4 class="modal-title" id="gridSystemModalLabel" style="text-align: center;">系统升级中</h4>
            </div>
            <div class="modal-body">
                <div class="spinner">
                  <div class="rect1"></div>
                  <div class="rect2"></div>
                  <div class="rect3"></div>
                  <div class="rect4"></div>
                  <div class="rect5"></div>
                </div>              
              
            </div>

          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->

  </body>
</html>
