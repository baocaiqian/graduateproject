<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
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

        <div  style="width: 30%;height: 100px;border:1px solid #E0E0E0;margin-left: 40px;margin-top:20px;">
        	<img  style="width:70px;height: 70px;margin-top: 15px;margin-left: 15px;float: left;"   src="statics/base/images/people.jpg">
        	<div style="float: left;margin-left: 20px;margin-top:35px"><h1>清风明月</h1></div>
        </div>



          <p><font size="5"  color="#1e71b1"  style="margin-left:40px">重置您的用户名或头像</font></p>
		 <form style="margin-left:100px  "  >
			<p><font size="3" >新的用户名</font></p>
			<input   style="line-height:35px"  type="text"   name="name"  value="name" />
			<br>
			<br>


          <p><font size="3" >更换头像</font></p>
          <p>支持jpg、jpeg、gif、png、bmp格式的图片</p>
          <a href="javascript:;" class="filemm"><h5>选择图像</h5>
           <input type="file" name="" id="">
          </a>

          <br>
          <br>
          <br>

          <input  class="buttona"   type="submit" name="submit"   value="确   定">


		</form>
























	


<!--<script type="text/javascript" src="statics/lib/ckfinder/ckfinder.js?1426038859"></script>-->
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
