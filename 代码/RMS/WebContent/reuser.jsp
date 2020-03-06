<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<script src="statics/base/js/jquery.min.js"></script>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="cropper/cropper.min.css" rel="stylesheet"/>
	<link href="sitelogo/sitelogo.css" rel="stylesheet"/>
	<script src="cropper/cropper.min.js"></script>
	<script src="sitelogo/sitelogo.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">var basepath='statics/base/images';</script>
<script type="text/javascript" src="statics/base/js/metvar.js"></script>
<script type="text/javascript" src="statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="statics/base/js/iframes.js"></script>
<script type="text/javascript" src="statics/base/js/cookie.js"></script>
<script src="statics/lib/ufinder/lib/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="statics/lib/ufinder/themes/css/ufinder.css?s"/>
<script type="text/javascript">
/*ajax执行*/
var realUrl = '/data/upfile';
var lang = 'cn';
var metimgurl='statics/base/images/';
var depth='../';
$(document).ready(function(){
	ifreme_methei();
});
</script>
<!--[if lte IE 9]>
<SCRIPT language=JavaScript>  
function killErrors() {  
return true;  
}  
window.onerror = killErrors;  
</SCRIPT> 
<![endif]-->

</head>
<body>

<script type="text/javascript">
function metreturn(url){
	if(url){
		location.href=url;
	}else if($.browser.msie){
		history.go(-1);
	}else{
		history.go(-1);
	}
}
</script>
	<div class="metinfotop">
	<div class="position">简体中文 > 企业应用 > <a href="index.php/admin/app">我的应用</a></div>
	</div>
	<div class="clear"></div>

<script type="text/javascript">
$("html",parent.document).find('.returnover').remove();
</script>
	<!-- 
        <input type="text" value="请输入要查找的关键字" onfocus="if(value=='请输入要查找的关键字')value=''" onblur="if(!value)value='请输入要查找的关键字'" name="keyword"/> 
         -->
         <br/>
         <div style="width:80%;margin:auto;height:100px;border:#ddd solid 1px;text-align: center;">
         	<h1 style="font-size: 50px;">修改个人信息</h1>
         </div>
         <br/>
         <div style="width:80%;margin:auto;">
         	<div class="ibox-content" style="display: inline;float: left;">
				<div class="row">
					<div id="crop-avatar" class="col-md-6">
						<div class="avatar-view" title="点击修改头像">
							<img src="statics/base/images/logo.jpg" alt="Logo" class="icon"/>
						</div>
					</div>
				</div>
			</div>
			<div style="display: inline;float: left;">
				<div><font size="3">&nbsp;&nbsp;&nbsp;昵称:&nbsp;&nbsp;</font><input type="text"  value="当前用户昵称" style="width:813px; height:30px;border-radius:10px;padding-left:5px; outline: none; border: #ddd solid 1px;" /></div>
				<br/>
				<div><font size="3">&nbsp;&nbsp;&nbsp;学校:&nbsp;&nbsp;</font><input type="text"  value="学校" style="width:813px; height:30px;border-radius:10px;padding-left:5px; outline: none; border: #ddd solid 1px;" /></div>
				<br/>
				<div><font size="3">&nbsp;&nbsp;&nbsp;专业:&nbsp;&nbsp;</font><input type="text"  value="专业" style="width:813px; height:30px;border-radius:10px;padding-left:5px; outline: none; border: #ddd solid 1px;" /></div>
				<br/>
				<div><font size="3">&nbsp;&nbsp;&nbsp;方向:&nbsp;&nbsp;</font><input type="text"  value="教研方向" style="width:813px; height:30px;border-radius:10px;padding-left:5px; outline: none; border: #ddd solid 1px;" /></div>
			</div>
			<div style="clear: both;"></div>
			<br/>
			<div style="clear: both;">
			<h3>个人简介</h3>
			<textarea rows="6" cols="147">介绍一下自己</textarea>
			</div>
<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form class="avatar-form" action="{{url('admin/upload-logo')}}" enctype="multipart/form-data" method="post">
				<div class="modal-header">
					<button class="close" data-dismiss="modal" type="button">&times;</button>
					<h4 class="modal-title" id="avatar-modal-label">修改头像</h4>
				</div>
				<div class="modal-body">
					<div class="avatar-body">
						<div class="avatar-upload">
							<input class="avatar-src" name="avatar_src" type="hidden">
							<input class="avatar-data" name="avatar_data" type="hidden">
							<label for="avatarInput">图片上传</label>
							<input class="avatar-input" id="avatarInput" name="avatar_file" type="file"></div>
						<div class="row">
							<div class="col-md-9">
								<div class="avatar-wrapper"></div>
							</div>
							<div class="col-md-3">
								<div class="avatar-preview preview-lg"></div>
								<div class="avatar-preview preview-md"></div>
								<div class="avatar-preview preview-sm"></div>
							</div>
						</div>
						<div class="row avatar-btns">
							<div class="col-md-9">
								<div class="btn-group">
									<button class="btn" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"><i class="fa fa-undo"></i> 向左旋转</button>
								</div>
								<div class="btn-group">
									<button class="btn" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"><i class="fa fa-repeat"></i> 向右旋转</button>
								</div>
							</div>
							<div class="col-md-3">
								<button class="btn btn-success btn-block avatar-save" type="submit"><i class="fa fa-save"></i> 保存修改</button>
							</div>
						</div>
					</div>
				</div>
  		</form>
  	</div>
  </div>
</div>

<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
</div>
         
       
<div class="v52fmbx_tbmax">
<div class="v52fmbx_tbbox">
<div class="v52fmbx">	

<script src="statics/lib/ufinder/ufinder.config.js?2"></script>
<script src="statics/lib/ufinder/ufinder.js"></script>
<script src="statics/lib/ufinder/lang/zh-cn/zh-cn.js"></script>
<script>
    $(function () {
        window.uf = UF.getUFinder('container');
    });
</script>

<!--<div id="ckfinder"></div>-->
</div>
</div>
</div>

	<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.1438 seconds </div>

</body>
</html>
