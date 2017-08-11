<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><?php echo ($name); ?>|<?php echo ($site_seo_title); ?></title>
	<meta name="keywords" content="<?php echo ($name); ?>,<?php echo ($site_seo_keywords); ?>" />
	<meta name="description" content="<?php echo ($site_seo_description); ?>">
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
    <style>
		.listing{
			margin-bottom: 20px;
		}
		.listing h3{
			margin: 0 0 10px 0;
			line-height: 100%;
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
<div class="container">
	
	
    <div class="pg-opt pin">
        <div class="container">
            <h2><?php echo ($name); ?></h2>
        </div>
    </div>
    
    <div class="slice bg-3 section">
        <div class="w-section inverse">
            <div class="container">
                <div>
                     <?php $lists = sp_sql_posts_paged("cid:$cat_id;order:post_date DESC;",10); ?>
                     	<?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                         <div class="row listing">
                             <div class="listing-image span3">
                             	<?php if(!empty($smeta['thumb'])): ?><img width="263" height="197" src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive" alt="">
                             	<?php else: ?>
                             		<img width="263" height="197" src="/tpl/simpleboot/Public/images/default/list.jpg" class="img-responsive" alt=""><?php endif; ?>
                             </div>
                             <div class="listing-body span9">
                                 <h3><a href="<?php echo U('article/index',array('id'=>$vo['tid']));?>"><?php echo ($vo["post_title"]); ?></a></h3>
                                 <h4><?php echo ($vo["post_date"]); ?></h4>
                                 <p>
                                 <?php echo ($vo["post_excerpt"]); ?>
                                 </p>
                                 <div class="listing-actions">
                                 
                                 <a href="<?php echo U('article/index',array('id'=>$vo['tid']));?>" class="btn btn-success pull-right">阅读详细</a>
                             	</div>
                             </div>
                             <div class="clearfix"></div>
                         </div><?php endforeach; endif; else: echo "" ;endif; ?>
                     <div class="pagination">
                      <ul>
                          <?php echo ($lists['page']); ?>
                      </ul>
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
    
<!-- JavaScript -->
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/tpl/simpleboot/Public/simpleboot/js/jquery.js"></script>
    <script src="/tpl/simpleboot/Public/simpleboot/js/jquery.smooth-scroll.min.js"></script>
    <script src="/tpl/simpleboot/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>