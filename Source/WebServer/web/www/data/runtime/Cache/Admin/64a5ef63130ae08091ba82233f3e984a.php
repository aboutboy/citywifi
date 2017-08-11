<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->

	<link href="/statics/simpleboot/themes/<?php echo C('SP_ADMIN_STYLE');?>/theme.min.css<?php echo ($js_debug); ?>" rel="stylesheet">
    <link href="/statics/simpleboot/css/simplebootadmin.css<?php echo ($js_debug); ?>" rel="stylesheet">
    <link href="/statics/js/artDialog/skins/default.css<?php echo ($js_debug); ?>" rel="stylesheet" />
    <link href="/statics/simpleboot/font-awesome/4.1.0/css/font-awesome.min.css<?php echo ($js_debug); ?>"  rel="stylesheet" type="text/css">
    <style>
		.length_3{width: 180px;}
	</style>
	<!--[if IE 7]>
	<link rel="stylesheet" href="/statics/simpleboot/font-awesome/4.1.0/css/font-awesome-ie7.min.css<?php echo ($js_debug); ?>">
	<![endif]-->
<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "/",
    JS_ROOT: "statics/js/",
    TOKEN: ""
};
</script>
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/statics/simpleboot/js/jquery.js<?php echo ($js_debug); ?>"></script>
    <script src="/statics/js/wind.js<?php echo ($js_debug); ?>"></script>
    <script src="/statics/simpleboot/js/jquery.smooth-scroll.min.js<?php echo ($js_debug); ?>"></script>
    <script src="/statics/simpleboot/bootstrap/js/bootstrap.min.js<?php echo ($js_debug); ?>"></script>
<?php if(APP_DEBUG): ?><style>
		#think_page_trace_open{
			z-index:9999;
		}
	</style><?php endif; ?>
<script type="text/javascript">
    var catid = "12";
</script>
<style type="text/css">
.col-auto {
	overflow: hidden;
	_zoom: 1;
	_float: left;
	border: 1px solid #c2d1d8;
}
.col-right {
	float: right;
	width: 210px;
	overflow: hidden;
	margin-left: 6px;
	border: 1px solid #c2d1d8;
}

body fieldset {
	border: 1px solid #D8D8D8;
	padding: 10px;
	background-color: #FFF;
}
body fieldset legend {
    background-color: #F9F9F9;
    border: 1px solid #D8D8D8;
    font-weight: 700;
    padding: 3px 8px;
}
.list-dot{ padding-bottom:10px}
.list-dot li,.list-dot-othors li{padding:5px 0; border-bottom:1px dotted #c6dde0; font-family:"宋体"; color:#bbb; position:relative;_height:22px}
.list-dot li span,.list-dot-othors li span{color:#004499}
.list-dot li a.close span,.list-dot-othors li a.close span{display:none}
.list-dot li a.close,.list-dot-othors li a.close{ background: url("/statics/images/cross.png") no-repeat left 3px; display:block; width:16px; height:16px;position: absolute;outline:none;right:5px; bottom:5px}
.list-dot li a.close:hover,.list-dot-othors li a.close:hover{background-position: left -46px}
.list-dot-othors li{float:left;width:24%;overflow:hidden;}
</style>
</head>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <ul class="nav nav-tabs">
     <li><a href="<?php echo U('post/index');?>">所有文章</a></li>
     <li class="active"><a href="<?php echo U('post/add',array('term'=>empty($term['term_id'])?'':$term['term_id']));?>"  target="_self">添加文章</a></li>
  </ul>
  <form name="myform" id="myform" action="<?php echo u('post/add_post');?>" method="post" class="form-horizontal J_ajaxForms" enctype="multipart/form-data">
  <div class="col-right">
    <div class="table_full">
      <table width="100%">
         <tr>
          <td><b>缩略图</b></td>
        </tr>
        <tr>
          <td>
          	<div  style="text-align: center;"><input type='hidden' name='smeta[thumb]' id='thumb' value=''>
			<a href='javascript:void(0);' onclick="flashupload('thumb_images', '附件上传','thumb',thumb_images,'1,jpg|jpeg|gif|png|bmp,1,,,1','','','');return false;">
			<img src='/statics/images/icon/upload-pic.png' id='thumb_preview' width='135' height='113' style='cursor:hand' /></a>
			<!-- <input type="button" class="btn" onclick="crop_cut_thumb($('#thumb').val());return false;" value="裁减图片">  -->
            <input type="button"  class="btn" onclick="$('#thumb_preview').attr('src','/statics/images/icon/upload-pic.png');$('#thumb').val('');return false;" value="取消图片">
            </div>
			</td>
        </tr>
        <tr>
          <td><b>发布时间</b></td>
        </tr>
        <tr>
          <td><input type="text" name="post[post_modified]" id="updatetime" value="<?php echo date('Y-m-d H:i:s',time());?>" size="21" class="input length_3 J_datetime "></td>
        </tr>
        <tr>
          <td><b>状态</b></td>
        </tr>
        <tr>
          <td>
          	<span class="switch_list cc">
			<label><input type="radio" name="post[post_status]" value="1" checked><span>审核通过</span></label>
			<label><input type="radio" name="post[post_status]" value="0"  ><span>待审核</span></label>
		 	</span>
		 </td>
        </tr>
      </table>
    </div>
  </div>
  <div class="col-auto">
    <div class="table_full">
      <table width="100%" cellpadding="2" cellspacing="2">
            <tr>
              <th width="80">栏目</th>
              <td>
              	<select name="term[term_id]"  class="normal_select">
						<?php echo ($taxonomys); ?>
				</select>
              </td>
            </tr>
            <tr>
              <th width="80">标题 </th>
              <td>
              	<input type="text" style="width:400px;" name="post[post_title]" id="title" value="" style="color:" class="input input_hd J_title_color" placeholder="请输入标题" onkeyup="strlen_verify(this, 'title_len', 160)" />
              	<span class="must_red">*</span>
              </td>
            </tr>
            <tr>
              <th width="80">关键词</th>
              <td><input type='text' name='post[post_keywords]' id='keywords' value='' style='width:280px'   class='input' placeholder='请输入关键字'> 多关键词之间用空格隔开</td>
            </tr>
            <tr>
              <th width="80">摘要 </th>
              <td><textarea name='post[post_excerpt]' id='description' style='width:98%;height:50px;'  ></textarea> </td>
            </tr>
            <tr>
              <th width="80">内容</th>
              <td><span class="must_red">*</span><div id='content_tip'></div>
              <script type="text/plain" id="content" name="post[post_content]"></script>
                <script type="text/javascript">
                //编辑器路径定义
                var editorURL = GV.DIMAUB;
                </script>
                <script type="text/javascript"  src="/statics/js/ueditor/ueditor.config.js<?php echo ($js_debug); ?>"></script>
                <script type="text/javascript"  src="/statics/js/ueditor/ueditor.all.min.js<?php echo ($js_debug); ?>"></script>
				<script type="text/javascript">
    			var editorcontent;
                        UE.commands['attachments'] = {
                            execCommand : function(cmd){
                                flashupload('flashupload', '附件上传','content',ueAttachment,'10,,1,,,0','Contents','12','d909680d11bb7090136c35b9b9d4e66d');
                            },
                            queryCommandState : function(){
                                return this.highlight ? -1 :0;
                            }
                        };
		        </script> 
				<style type="text/css">
				.content_attr {
					border: 1px solid #CCC;
					padding: 5px 8px;
					background: #FFC;
					margin-top: 6px
				}
				</style>
				</td>
            </tr>
            
            <tr>
              <th width="80">相册图集 </th>
              <td>
				<fieldset class="blue pad-10">
		        <legend>图片列表</legend>
		        <ul id="photos" class="picList"></ul>
				</fieldset>
				<div class="bk10"></div>
				<a href='javascript:void(0);' onclick="javascript:flashupload('albums_images', '图片上传','photos',change_images,'10,gif|jpg|jpeg|png|bmp,0','','','')" class="btn">选择图片 </a> </td>
            </tr>
                        
        </tbody>
      </table>
    </div>
  </div>
  <div class="form-actions">
        <button class="btn btn_submit J_ajax_submit_btn"type="submit">提交</button>
        <a class="btn" href="/index.php/admin/post">返回</a>
  </div>
 </form>
</div>
<script type="text/javascript" src="/statics/js/common.js<?php echo ($js_debug); ?>"></script>
<script type="text/javascript" src="/statics/js/content_addtop.js<?php echo ($js_debug); ?>"></script>
<script type="text/javascript"> 
$(function () {
	//setInterval(function(){public_lock_renewal();}, 10000);
	$(".J_ajax_close_btn").on('click', function (e) {
	    e.preventDefault();
	    Wind.use("artDialog", function () {
	        art.dialog({
	            id: "question",
	            icon: "question",
	            fixed: true,
	            lock: true,
	            background: "#CCCCCC",
	            opacity: 0,
	            content: "您确定需要关闭当前页面嘛？",
	            ok:function(){
					setCookie("refersh_time",1);
					window.close();
					return true;
				}
	        });
	    });
	});
	/////---------------------
	 Wind.use('validate', 'ajaxForm', 'artDialog', function () {
			//javascript
	        
	            //编辑器
	            editorcontent = new baidu.editor.ui.Editor();
	            editorcontent.render( 'content' );
	            try{editorcontent.sync();}catch(err){};
	            //增加编辑器验证规则
	            jQuery.validator.addMethod('editorcontent',function(){
	                try{editorcontent.sync();}catch(err){};
	                return editorcontent.hasContents();
	            });
	            var form = $('form.J_ajaxForms');
	        //ie处理placeholder提交问题
	        if ($.browser.msie) {
	            form.find('[placeholder]').each(function () {
	                var input = $(this);
	                if (input.val() == input.attr('placeholder')) {
	                    input.val('');
	                }
	            });
	        }
	        //表单验证开始
	        form.validate({
				//是否在获取焦点时验证
				onfocusout:false,
				//是否在敲击键盘时验证
				onkeyup:false,
				//当鼠标掉级时验证
				onclick: false,
	            //验证错误
	            showErrors: function (errorMap, errorArr) {
					//errorMap {'name':'错误信息'}
					//errorArr [{'message':'错误信息',element:({})}]
					try{
						$(errorArr[0].element).focus();
						art.dialog({
							id:'error',
							icon: 'error',
							lock: true,
							fixed: true,
							background:"#CCCCCC",
							opacity:0,
							content: errorArr[0].message,
							cancelVal: '确定',
							cancel: function(){
								$(errorArr[0].element).focus();
							}
						});
					}catch(err){
					}
	            },
	            //验证规则
	            rules: {'post[post_title]':{required:1},'post[post_content]':{editorcontent:true}},
	            //验证未通过提示消息
	            messages: {'post[post_title]':{required:'请输入标题'},'post[post_content]':{editorcontent:'内容不能为空'}},
	            //给未通过验证的元素加效果,闪烁等
	            highlight: false,
	            //是否在获取焦点时验证
	            onfocusout: false,
	            //验证通过，提交表单
	            submitHandler: function (forms) {
	                $(forms).ajaxSubmit({
	                    url: form.attr('action'), //按钮上是否自定义提交地址(多按钮情况)
	                    dataType: 'json',
	                    beforeSubmit: function (arr, $form, options) {
	                        
	                    },
	                    success: function (data, statusText, xhr, $form) {
	                        if(data.status){
								setCookie("refersh_time",1);
								//添加成功
								Wind.use("artDialog", function () {
								    art.dialog({
								        id: "succeed",
								        icon: "succeed",
								        fixed: true,
								        lock: true,
								        background: "#CCCCCC",
								        opacity: 0,
								        content: data.info,
										button:[
											{
												name: '继续添加？',
												callback:function(){
													reloadPage(window);
													return true;
												},
												focus: true
											},{
												name: '返回列表页',
												callback:function(){
													location='/index.php/admin/post';
													return true;
												}
											}
										]
								    });
								});
							}else{
								isalert(data.info);
							}
	                    }
	                });
	            }
	        });
	    });
	////-------------------------
});
</script>
</body>
</html>