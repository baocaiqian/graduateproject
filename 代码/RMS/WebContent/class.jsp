<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>案例管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css?5202" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/tankuangstyle.css">
<link rel="stylesheet" type="text/css" href="statics/base/css/classstyle.css" />
<script type="text/javascript" src="statics/base/js/jquery.min.js"></script>
<script type="text/javascript">var basepath='statics/base/images';</script>
<script type="text/javascript" src="statics/base/js/metvar.js"></script>
<script type="text/javascript" src="statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="statics/base/js/iframes.js"></script>
<script type="text/javascript" src="statics/base/js/cookie.js"></script>
<script type="text/javascript">
/*ajax执行*/
var lang = 'cn';
var metimgurl='statics/base/images/';
var depth='';
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

	<div class="position">简体中文 > 内容管理 > <a href="content.html">内容管理</a> > <a href='case.html'>案例管理</a></div>


	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>

	</div>
<div class="bg-white">
		<div style="width:63%;height:40px;margin-left:5%;margin-top:20px;border-left:#1e71b1 solid 3px;margin-bottom: 20px;padding-bottom:5px;">
			<img alt="classlogo" src="statics/base/images/classlogo.png"/><font size="5" style="vertical-align:text-bottom">&nbsp;JAVA&nbsp;&nbsp;<a style="font-size: 10px;color:#1e71b1;cursor: pointer;" class="alter" data-toggle="modal"  href="#addclassSystem">修改体系</a></font>
			<a class="buy-now" data-toggle="modal" href="#forgetform">
			<img src="statics/base/images/add.png" style="margin-bottom: -4.5px;"/>&nbsp;&nbsp;添加课程
			</a>
			<div style="clear:both;"></div>
		</div>
		<!-- 弹框 -->
		<!-- 修改体系 -->
		<div class="modal" id="addclassSystem">
			<a class="close" data-dismiss="modal">×</a>
			<h1>修改课程体系</h1>
			<form class="signup-form clearfix" method="post" action="#">
				修改名称：<input name="classSystemname" value="" type="text" placeholder="名称" style="display: block;"/>
				修改描述：<textarea cols="36" rows="6" style="OVERFLOW:hidden;display: block;margin-bottom: 10px;border:#ddd solid 1px;"placeholder="体系描述"></textarea>
			<input type="submit" name="type" class="button-blue reg" value="立即修改"/>
			<div class="clearfix"></div>
			</form>
			<div style="clear:both;"></div>
		</div>
		<!-- 添加课程 -->
		<div class="modal" id="forgetform">
		<a class="close" data-dismiss="modal">×</a>
		<h1>添加课程</h1>
		<form class="forgot-form" method="post" action="#">
		课程名称:<input name="classname" value="" placeholder="课程名称" style="display: block;">
		授课班级:<input name="classes" value="" placeholder="授课班级" style="display: block;">
		课程封面：<input type="file" id="imagehead"  placeholder="选择课程图片" value=""/>
		<div class="clearfix"></div>
		<input type="submit" name="type" class="forgot button-blue" value="添加课程">
		
	</form>
	<div style="clear:both;"></div>
	</div>
		<script type="text/javascript" src="statics/base/js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="statics/base/js/modal.js"></script>
		<script type="text/javascript">
$(document).ready(function(){

	$("a.forgot").click(function(){
		$("#login-modal").modal("hide");
		$("#forgetform").modal({show:!0})
	});
	$("#forgetform").modal("hide");
	
});
</script>
		<!-- 弹框结束 -->
	<div style="width: 63%;display: inline;float: left;margin-left: 5%;border-right: #ddd solid 1px;">
		<div class="floor-side-body">
                        <ul>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad001.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                           	 软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad002.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad003.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad004.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad005.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad006.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad007.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad008.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                            软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                             <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad001.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                           	 软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                             <li>
                                <a href="#">
                                    <div class="image-ti">
                                        <img src="statics/base/images/ad001.jpg" alt="">
                                    </div>
                                    <p class="slide-title">焊工特种作业操作证</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                           	 软件学院2016级6班
                                        </span>
                                    </p>
                                </a>
                            </li>
                        </ul>
        	<div style="clear:both;"></div>
        </div>
	<div style="clear: both;"></div>
	</div>
	<div style="width: 29%;display: inline;float:left;">
	<!-- 推荐课程 -->
		<div style="width:90%;margin:auto;">
			<div style="border-left:#1e71b1 solid 3px;margin-bottom: 20px;"><font size="4">&nbsp;&nbsp;&nbsp;推荐添加课程</font></div>
			<div style="width:75%;margin:auto;height:150px;border:#ddd solid 1px;">
				<img style="width: 90%;margin-top:5%;margin-left:5%;margin-right:5%;height:100px;" src="statics/base/images/ad001.jpg;"/>
				<p style="text-align: center;font-size: 20px;margin: 0;">java基础</p>
			</div>
			<br>
			<div style="width:75%;margin:auto;height:150px;border:#ddd solid 1px;">
				<img style="width: 90%;margin-top:5%;margin-left:5%;margin-right:5%;height:100px;" src="statics/base/images/ad001.jpg;"/>
				<p style="text-align: center;font-size: 20px;margin: 0;">java基础</p>
			</div>
			<br>
			<div style="width:75%;margin:auto;height:150px;border:#ddd solid 1px;">
				<img style="width: 90%;margin-top:5%;margin-left:5%;margin-right:5%;height:100px;" src="statics/base/images/ad001.jpg;"/>
				<p style="text-align: center;font-size: 20px;margin: 0;">java基础</p>
			</div>
			<br>
			<div style="width:75%;margin:auto;height:150px;border:#ddd solid 1px;">
				<img style="width: 90%;margin-top:5%;margin-left:5%;margin-right:5%;height:100px;" src="statics/base/images/ad001.jpg;"/>
				<p style="text-align: center;font-size: 20px;margin: 0;">java基础</p>
			</div>
			<br>
		</div>
	</div>
</div>
	
<div class="clear"></div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.1058 seconds </div>
<script type="text/javascript">
$(function() { 
	$("#is_move").change( function() {
		var cid = $('#is_move').val();
		var arrchk = $("input[id='id']:checked");
		var idarr="";
		$(arrchk).each(function(){
			if (idarr=="") {
				idarr+=this.value
			} else {
				idarr+=","+this.value
			}                   
		}); 
		if (idarr=='') {
		    alert('请选择要移动的文章！');
			return false;
		}
		if (confirm('确定移动吗?')) {
		    document.myform.submit();
		}
	});
});

</script>
</body>
</html>
