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
<script type="text/javascript" src="${ctx }/statics/base/js/jquery.min.js"></script>
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

	<div class="position">简体中文 > 内容管理 > <a href="content.html">内容管理</a> > <a href='case.html'>案例管理</a></div>


	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>

	</div>
<div class="bg-white" style="height:auto;">
		<div style="width:88.5%;height:40px;margin-left:5%;margin-top:20px;border-left:#1e71b1 solid 3px;margin-bottom: 20px;padding-bottom:5px;">
			<font size="5">&nbsp;我的课程体系</font>
			<a class="buy-now" data-toggle="modal"  href="#addclassSystem">
			<img src="${ctx }/statics/base/images/add.png" style="margin-bottom: -4.5px;"/>&nbsp;&nbsp;添加课程体系
			</a>
		</div>
		<!-- 弹框 -->
		<div class="modal" id="addclassSystem">
			<a class="close" data-dismiss="modal">×</a>
			<h1>添加课程体系</h1>
			<form class="signup-form clearfix" method="post" action="${ctx }/system/add">
				体系名称：<input name="name" value="" type="text" placeholder="名称" style="display: block;"/>
				体系描述：<textarea name="systemdescribe" cols="36" rows="6" style="OVERFLOW:hidden;display: block;margin-bottom: 10px;border:#ddd solid 1px;"placeholder="体系描述"></textarea>
			<input type="submit" name="type" class="button-blue reg" value="添加体系"/>
			<div class="clearfix"></div>
			</form>
		</div>
		<script type="text/javascript" src="${ctx }/statics/base/js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="${ctx }/statics/base/js/modal.js"></script>
		<!-- 弹框结束 -->
		<div class="clear"></div>
	<div class="developer-toolbag-block">
		<div class="AGrid-row  tool-package">
			<c:forEach var="system" items="${user.classsystem }">
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="${ctx }/statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">${ system.name}</h2>

					<div class="layer-text">
						<p class="dev-text">
						${ system.systemdescribe}
						</p>
						<div class="layer-btn">
							<a href="${ctx }/course/getcourse?id=${system.systemId}">
								<p>打开体系</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			
		</div>
	</div>
</div>
<div class="clear"></div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.1058 seconds </div>
<div class="clear"></div>
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
