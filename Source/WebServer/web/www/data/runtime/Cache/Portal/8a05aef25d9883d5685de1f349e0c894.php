<?php if (!defined('THINK_PATH')) exit(); $Portal_index= array( 'Article'=>array( 'ThinkCMF' => '99', ), 'Page'=>array(), 'Cat'=>array( 'Advantage' => '9', 'Presentation' => '1', 'Lastnews' => '7', 'Product' =>'1', ), 'Slide'=>array( 'mid_slide' => 'mid_slide' ), ); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo ($site_name); ?></title>
	<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
	<meta name="description" content="<?php echo ($site_seo_description); ?>">
	<meta name="author" content="ThinkCMF">
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
		#myCarousel .carousel-caption{position: relative;}
	</style>
</head>

<body class="preview" id="top" data-spy="scroll" data-target=".subnav"
	data-offset="80">


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
	<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="/tpl/simpleboot/Public/images/carousel/carousel-img-1.png" alt="">
					<div class="carousel-caption">
						<h4>专业定制WiFi工程解决方案</h4>
						<p>技术人员占90%的团队，轻松为您定制研发和实施各种网络解决方案</p>
					</div>
				</div>
				<div class="item">
					<img src="/tpl/simpleboot/Public/images/carousel/carousel-img-2.png" alt="">
					<div class="carousel-caption">
						<h4>WiFi广告系统</h4>
						<p>【186生活网】是为商户利益研发的WiFi广告系统，可以帮助不同商户利用WiFi互相推广自己。客户走到哪儿，您的广告就跟到哪儿。</p>
					</div>
				</div>
				<div class="item">
					<img src="/tpl/simpleboot/Public/images/carousel/carousel-img-3.png" alt="">
					<div class="carousel-caption">
						<h4>手机点餐系统</h4>
						<p>二维码扫描即可点餐，使用安卓APP替代服务员手中的点餐宝，软件免费</p>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="right carousel-control" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
	<div class="container">

		<div class="slice bg-5 section">
			<div class="w-section inverse">
				<div class="row">
					<div class="span3">
						<div class="w-box white">
							<div class="thmb-img">
								<i class="fa fa-lightbulb-o"></i>
							</div>

							<h2>WiFi广告系统</h2>
							<p class="text-center">帮助不同商户利用WiFi互相推广自己。一个小路由器即可实现，免费提供，轻松安装
							</p>
						</div>
					</div>

					<div class="span3">
						<div class="w-box white">
							<div class="thmb-img">
								<i class="fa fa-cloud"></i>
							</div>

							<h2>手机点餐系统</h2>
							<p class="text-center">客户扫描二维码扫描即可点餐，无需安装APP。服务员可使用安卓客户端替代点餐宝。软件免费提供，可绑定微信
							</p>
						</div>
					</div>

					<div class="span3">
						<div class="w-box white">
							<div class="thmb-img">
								<i class="fa fa-code"></i>
							</div>

							<h2>微信公众号定制</h2>
							<p class="text-center">定制微信公众号解决方案，成熟基础框架，快速开发模型
							</p>
						</div>
					</div>

					<div class="span3">
						<div class="w-box white">
							<div class="thmb-img">
								<i class="fa fa-rocket"></i>
							</div>

							<h2>WiFi方案定制</h2>
							<p class="text-center">技术人员占90%的团队，轻松为您定制研发和实施各种网络解决方案
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>

		<?php  $Portal_index= array( 'Article'=>array( 'ThinkCMF' => '99', ), 'Page'=>array(), 'Cat'=>array( 'Advantage' => '9', 'Presentation' => '1', 'Lastnews' => '7', 'Product' =>'1', ), 'Slide'=>array( 'mid_slide' => 'mid_slide' ), ); ?>

		<?php $post=sp_sql_post($Portal_index['Article']['ThinkCMF'],'field:post_title,post_content,smeta;'); $pic=json_decode($post['smeta'],true); $advantage=sp_sql_posts('cid:'.$Portal_index['Cat']['Advantage'].';field:post_title,post_content,tid;order:listorder
		asc;limit:3;'); ?>
		<div class="slice bg-5 section">
			<div class="w-section inverse">
				<div class="container">
					<div class="row">
						<div class="span7">
							<h3 class="section-title">
								<span><?php echo ((isset($post["post_title"]) && ($post["post_title"] !== ""))?($post["post_title"]):'ThinkCMF'); ?></span>
							</h3>
							<div class="row">
								<div class="span3">
									<?php if(empty($pic[thumb])): ?><img src="/tpl/simpleboot/Public/images/prv/col-img-4.jpg" alt="<?php echo ($post_title); ?>" class="img-responsive img-thumbnail">
									<?php else: ?> 
										<img src="<?php echo sp_get_asset_upload_path($pic['thumb']);?>" alt="<?php echo ($post_title); ?>" class="img-responsive img-thumbnail"><?php endif; ?>

								</div>
								<div class="span4"><?php echo ((isset($post["post_content"]) && ($post["post_content"] !== ""))?($post["post_content"]):'当你在后台添加后内容将自动被替换！'); ?></div>
							</div>
							<blockquote class="blockquote-1">
								<!--p>ThinkCMF力求成为国内最优秀的开源内容管理框架，长期以来ThinkCMF官方团队一直致力于核心维护，虽在应用丰富性上尚且有些欠缺但已获得相当一部分的忠实用户。</p-->
								<small>宏信一网</small>
							</blockquote>
						</div>
						<div class="span5">
							<h3 class="section-title">业内优势</h3>

							<div class="widget">
								<div class="accordion" id="accordion2">
									<?php if(is_array($advantage)): foreach($advantage as $key=>$vo): ?><div class="accordion-group">
										<div class="accordion-heading">
											<a class="accordion-toggle collapsed" data-toggle="collapse"
												data-parent="#accordion2" href="#accordion_child<?php echo ($vo["tid"]); ?>">
												<?php echo ((isset($vo["post_title"]) && ($vo["post_title"] !== ""))?($vo["post_title"]):'当你在后台添加后内容将自动被替换！'); ?> </a>
										</div>
										<div id="accordion_child<?php echo ($vo["tid"]); ?>"
											class="accordion-body collapse" style="height: 0px;">
											<div class="accordion-inner">
												<?php echo ((isset($vo["post_content"]) && ($vo["post_content"] !== ""))?($vo["post_content"]):'当你在后台添加后内容将自动被替换！'); ?></div>
										</div>
									</div><?php endforeach; endif; ?>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<?php $Presentation=sp_sql_posts('cid:'.$Portal_index['Cat']['Presentation'].';field:post_title,post_excerpt,tid,smeta;order:listorder asc;'); ?>
		<?php if(!empty($Presentation)): ?><div class="slice relative animate-hover-slide bg-3 section">
			<div class="w-section inverse">
				<div class="container">
					<h3 class="section-title">相关展示</h3>

					<div id="carouselWork" class="carousel slide animate-hover-slide">
						<!-- 相关展示轮播 -->
						<div class="carousel-inner">
							<?php $group_count = ceil(count($Presentation)/4); $group_last = intval(count($Presentation)%4); for($i=0;$i<$group_count; $i++){ $num = $i*4; $j_len = $i==$group_count-1 ? $group_last :4; ?>
							<div class="item <?php if($i==0){echo 'active';} ?>">
								<div class="row">
									<?php for($j=0; $j<$j_len; $j++){ $o = $Presentation[$num+$j]; $pic=json_decode($o['smeta'],true); ?>
									<div class="span3">
										<div class="w-box inverse">
											<div class="figure">
												<img src="<?php echo sp_get_asset_upload_path($pic['thumb']);?>" class="img-responsive">
											</div>
											<div>
												<h4><?php echo ($o["post_title"]); ?></h4>
												<small><?php echo ($o["post_excerpt"]); ?></small>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
							<?php } ?>
						</div>
						<a class="left carousel-control" href="#carouselWork"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#carouselWork" data-slide="next">&rsaquo;</a>
					</div>

				</div>
			</div>
		</div>
		<?php else: endif; ?>

		<div class="slice bg-banner-1 section well" style="margin-bottom: 20px;">
			<div class="w-section inverse">
				<div class="text-center">
					<h4>
						<i class="fa fa-quote-left fa-3x"></i>
					</h4>
					<h2>这会是一次从未有过的体验</h2>
					<p>
						把不能变成可能，把可能变成你能
					</p>
					<span class="clearfix"></span>

					<div class="text-center">
						<a href="http://www.thinkcmf.com/index.php?g=topic"
							target="_blank" class="btn btn-primary mt-20">参与官方交流</a>
					</div>
				</div>
			</div>
		</div>

		<?php $slide=sp_getslide($Portal_index['Slide']['mid_slide']); ?>
		<?php if(!empty($slide)): ?><div id="companyCarousel" class="carousel slide bg-3 section"
			data-ride="carousel">
			<div class="carousel-inner">
				<?php if(is_array($slide)): foreach($slide as $k=>$vo): $slide_active=$k==0?"active":""; ?>
				<div class="item <?php echo ($slide_active); ?>">
					<div class="container">
						<div class="row">
							<div class="span6">
								<h2><?php echo ($vo["slide_name"]); ?></h2>
								<?php echo ($vo["slide_content"]); ?>
							</div>
							<div class="span6">
								<img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" class="img-responsive" alt="">
							</div>
						</div>
					</div>
				</div><?php endforeach; endif; ?>
			</div>
			<a class="left carousel-control" href="#companyCarousel"
				data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
				href="#companyCarousel" data-slide="next">&rsaquo;</a>
		</div>
		<?php else: endif; ?>
		<?php $Lastnews=sp_sql_posts('cid:'.$Portal_index['Cat']['Lastnews'].";field:post_title,post_content,tid,smeta,post_date,post_excerpt;order:post_date
		DESC;limit:4"); ?>
		<div class="slice animate-hover-slide bg-5 section">
			<div class="w-section inverse">
				<div class="container">
					<h3 class="section-title">WiFi广告服务-案例</h3>
					<div class="row">

						<?php if(is_array($Lastnews)): foreach($Lastnews as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>

						<div class="span3">
							<div class="w-box">
								<div class="figure">
									<?php if(!empty($smeta['thumb'])): ?><img width="263" height="197" src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive" alt=""> 
									<?php else: ?> 
										<img width="263" height="197" src="/tpl/simpleboot/Public/images/default/list.jpg" class="img-responsive" alt=""><?php endif; ?>
									<!--span class="date-over small"><strong><?php echo date("M d,Y",strtotime($vo['post_date']));?></strong></span-->
									<div class="figcaption bg-2"></div>
								</div>
								<h5><b><?php echo ($vo["post_title"]); ?></b></h5>
								<?php echo ($vo["post_content"]); ?>
								<div class="figcaption-btn">
										<a href="http://www.live186.com/index.php?g=portal&m=page&a=index&id=13" class="btn btn-small btn-primary"><i class="fa fa-link"></i>详细介绍...</a>
									</div>
							</div>
						</div><?php endforeach; endif; ?>

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
	<!-- /container -->

	<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/tpl/simpleboot/Public/simpleboot/js/jquery.js"></script>
    <script src="/tpl/simpleboot/Public/simpleboot/js/jquery.smooth-scroll.min.js"></script>
    <script src="/tpl/simpleboot/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>