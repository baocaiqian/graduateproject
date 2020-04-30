<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>案例管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/metinfo.css?5202" />
<link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/newstyle.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/tankuangstyle.css">
<link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/classstyle.css" />
<script type="text/javascript" src="${ctx }/statics/base/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/tagcss.css"/>
<script src="${ctx }/statics/base/js/tagsinput.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">var basepath='${ctx }/statics/base/images';</script>
<script type="text/javascript" src="${ctx }/statics/base/js/metvar.js"></script>
<script type="text/javascript" src="${ctx }/statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="${ctx }/statics/base/js/iframes.js"></script>
<script type="text/javascript" src="${ctx }/statics/base/js/cookie.js"></script>
<script type="text/javascript">
/*ajax执行*/
var lang = 'cn';
var metimgurl='${ctx }/statics/base/images/';
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

	<div class="position"> <a href="${ctx }/course/getcourse?id=${system.systemId}">${system.name }</a></div>


	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>

	</div>
<div class="bg-white">
		<div style="width:83%;height:40px;margin-left:3%;margin-top:20px;border-left:#1e71b1 solid 3px;margin-bottom: 20px;padding-bottom:5px;">
			<img alt="classlogo" src="${ctx }/statics/base/images/classlogo.png"/><font size="5" style="vertical-align:text-bottom">&nbsp;${system.name }&nbsp;&nbsp;<a style="font-size: 10px;color:#1e71b1;cursor: pointer;" class="alter" data-toggle="modal"  href="#addclassSystem">修改体系</a></font>
			<a class="buy-now" data-toggle="modal" href="#forgetform">
			<img src="${ctx }/statics/base/images/add.png" style="margin-bottom: -4.5px;"/>&nbsp;&nbsp;添加课程
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
		<form class="forgot-form" method="post" action="${ctx }/course/addcourse">
		课程名称:<input name="name" value="" placeholder="课程名称" style="display: block;">
		授课班级:<input name="classes" value="" placeholder="授课班级" style="display: block;">
		授课学期:<input name="term" value="" placeholder="授课学期" style="display: block;">
		<div class="tagsinput-primary form-group">
	   	课程标签:<input name="tag" id="tagsinputval" class="tagsinput" data-role="tagsinput" placeholder="输入标签后回车"/>
	    <!-- button class="btn" onClick="getinput()">获取输入的值</button -->
		</div>

<!--  script type="text/javascript">
function getinput(){
	alert($('#tagsinputval').val());
}
</script-->
		<!--  课程封面：<input type="icon" id="imagehead"  placeholder="选择课程图片" value=""/>-->
		<div class="clearfix"></div>
		<input type="submit" name="type" class="forgot button-blue" value="添加课程">
		
	</form>
	<div style="clear:both;"></div>
	</div>
		<script type="text/javascript" src="${ctx }/statics/base/js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="${ctx }/statics/base/js/modal.js"></script>
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
	<div style="width: 75%;display: inline;float: left;margin-left: 2%;border-right: #ddd solid 1px;">
		<div class="floor-side-body">
                        <ul>
                        <c:forEach var="course" items="${system.courses }">
                            <li>
                                <a href="${ctx }/course/content?id=${course.courseid}">
                                    <div class="image-ti">
                                        <img src="${ctx }/${course.icon }" alt="">
                                    </div>
                                    <p class="slide-title">${ course.name}</p>
                                    <p class="slide-body">
                                        <span class="slide-body-nub">
                                            <i class="slide-body-nub-icon"></i>
                                           	 ${course.classes }
                                        </span>
                                    </p>
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
        	<div style="clear:both;"></div>
        </div>
	<div style="clear: both;"></div>
	</div>
	<div style="width: 20%;display: inline;float:left;">
	<!-- 推荐课程 -->
		<div style="width:85%;margin:auto;">
			<div style="border-left:#1e71b1 solid 3px;"><font size="4">&nbsp;&nbsp;&nbsp;推荐添加课程</font></div>
			<!--
			<div style="width:75%;margin:auto;height:150px;border:#ddd solid 1px;">
				<img style="width: 90%;margin-top:5%;margin-left:5%;margin-right:5%;height:100px;" src="${ctx }/statics/base/images/ad001.jpg;"/>
				<p style="text-align: center;font-size: 20px;margin: 0;">java基础</p>
			</div>
			  -->
			  <div style="width:90%;margin:auto;">
				<ol>
					 <c:forEach var="recommendcourse" items="${recommendcourse }">
					<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx }/statics/base/images/jiantou.png)"><a href="#3" class="remen1">${recommendcourse }</a></li>
					</c:forEach>
		</ol>
			</div>
			 
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
