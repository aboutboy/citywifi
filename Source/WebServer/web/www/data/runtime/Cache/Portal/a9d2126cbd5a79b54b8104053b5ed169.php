<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><?php echo ($post_title); ?>|<?php echo ($site_name); ?></title>
	<meta name="keywords" content="<?php echo ($post_keywords); ?>" />
	<meta name="description" content="<?php echo ($post_excerpt); ?>">
    	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->

    <link href="/tpl/simpleboot/Public/simpleboot/themes/flat/theme.min.css" rel="stylesheet">
    <link href="/tpl/simpleboot/Public/simpleboot/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/tpl/simpleboot/Public/simpleboot/font-awesome/4.1.0/css/font-awesome.min.css"  rel="stylesheet" type="text/css">
	<!--[if IE 7]>
	<link rel="stylesheet" href="/tpl/simpleboot/Public/simpleboot/font-awesome/4.1.0/css/font-awesome-ie7.min.css">
	<![endif]-->
	<link href="/tpl/simpleboot/Public/css/style.css" rel="stylesheet">
    
    <script src="http://api.map.baidu.com/api?v=1.3"></script>
    
	<style>
	img{
	max-width: none;
	}
	</style>
</head>
<body>
 <!-- Navbar
    ================================================== -->
 <div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
     <div class="container">
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </a>
       <a class="brand" href=""><?php echo ($site_name); ?></a>
       <div class="nav-collapse collapse" id="main-menu">
         <?php $effected_id=""; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a href='\$href' target='\$target' class='dropdown-toggle' data-toggle='dropdown'>\$label <b class='caret'></b></a>"; $ul_class="dropdown-menu" ; $li_class="" ; $style="nav"; $showlevel=6; $dropdown='dropdown'; echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>
        <ul class="nav pull-right" id="main-menu-right">
          <li><a rel="tooltip" target="_blank" href="javascript:void(0)" title="ThinkCMF">客服热线： 400-991-5618&nbsp;&nbsp;&nbsp;13072560581</a></li>
        </ul>
       </div>
     </div>
   </div>
 </div>

<div class="section slice no-padding">
        <div id="mapCanvas" class="map-canvas no-margin" style="height:300px;">
        	<script type="text/javascript">
			   var map = new BMap.Map("mapCanvas");            // 创建Map实例
			var point = new BMap.Point("118.906565", "31.919281");    // 创建点坐标
			map.centerAndZoom(point,15);                // 初始化地图,设置中心点坐标和地图级别。
			map.enableScrollWheelZoom();                  //启用滚轮放大缩小
			//添加缩放控件
			map.addControl(new BMap.NavigationControl());  
			map.addControl(new BMap.ScaleControl());  
			map.addControl(new BMap.OverviewMapControl()); 
			
			var marker = new BMap.Marker(point); // 创建标注 
			map.addOverlay(marker); // 将标注添加到地图中
			var infoWindow = new BMap.InfoWindow("南京宏信一网信息科技股份有限公司<br/><span class=''>地址：南京市江宁区科学园街道文鼎广场6幢218号</span>"); // 创建信息窗口对象
			marker.openInfoWindow(infoWindow);
			   </script>
        </div>
    </div>
<div class="container">
    <div class="slice bg-3 section">
        <div class="w-section inverse">
            <div class="container">
                <div class="row">
                    <div class="span6">
                        <h3 class="section-title">联系我们</h3>
                        <form class="form-light mt-20" role="form" method="post" action="<?php echo u('api/guestbook/addmsg');?>">
                            <div class="row">
                            	<div class="span3">
                                    <div class="form-group">
                                        <label>姓名</label>
                                		<input type="text" class="span3" placeholder="Your name" name="full_name">
                                    </div>
                                </div>
                                <div class="span3">
                                    <div class="form-group">
                                        <label>邮箱</label>
                                        <input type="email" class="span3" placeholder="Email address" name="email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>内容</label>
                                <textarea class="span6" id="message" placeholder="Write you message here..." style="height:100px;" name="msg"></textarea>
                            </div>
                             
                            <div class="row">
                            	<div class="span6">
                                    <div class="form-group">
		                                <label>验证码</label>
		                                <input type="text" class="span3" placeholder="please enter the code"  name="verify">
		                                <?php echo sp_verifycode_img();?>
		                            </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">发送留言</button>
                        </form>
                    </div>
                    <div class="span6">
                        <div class="row">
                        	<div class="span3">
                                <h3 class="section-title">联系方式</h3>
                                <div class="contact-info">
                                    <h5>地址</h5>
                                    <p>南京市江宁区科学园街道文鼎广场6幢218号</p>
                                    
                                    <h5>邮箱</h5>
                                    <!--p><?php echo ($site_admin_email); ?></p-->
                                    <p>service@live186.com</p>
                                    
                                    <h5>电话</h5>
                                    <p>13072560581</p>
                                </div>
                            </div>
                            <div class="span3">
                                <h3>Contact</h3>
                                <div class="contact-info">
                                    <h5>Address</h5>
                                    <p>NO.218 in Wen Ding Square, NanJing - China</p>
                                    
                                    <h5>Email</h5>
                                    <!--p><?php echo ($site_admin_email); ?></p-->
                                    <p>service@live186.com</p>
                                    
                                    <h5>Phone</h5>
                                    <p>13072560581</p>
                                </div>
                            </div>
                        </div>
                        <h3 class="section-title">快捷交流</h3>
                        <p>
                       点击以下QQ图标，免加好友即时洽谈合作
                        </p>
                        <div class="social-media">
                            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2573795051&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2573795051:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
                            <!--a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2573795051&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2573795051:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a-->
                            <!--a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2573795051&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2573795051:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    
    <br><br><br><br>
<!-- Footer
      ================================================== -->
      <hr>

      <footer id="footer">
        <p class="pull-right"><a href="#top">返回顶部</a></p>
        <!--div class="links">
          <a href="http://www.thinkcmf.com">ThinkCMF</a>
          <a href="http://bbs.thinkcmf.com">ThinkCMF技术社区</a>
        </div-->
        Made by <a href="http://www.live186.com">宏信一网</a>
        Code licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" rel="nofollow">Apache License v2.0</a>.<br/>
        苏ICP备14019686号
        </p>
      </footer>
</div>

<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/tpl/simpleboot/Public/simpleboot/js/jquery.js"></script>
    <script src="/tpl/simpleboot/Public/simpleboot/js/jquery.smooth-scroll.min.js"></script>
    <script src="/tpl/simpleboot/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>