<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/newstyle.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/mycss.css" />
<script type="text/javascript">var basepath='${ctx}/statics/base/images';</script>
<script type="text/javascript" src="${ctx}/statics/base/js/metvar.js"></script>
<script type="text/javascript" src="${ctx}/statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="${ctx}/statics/base/js/iframes.js"></script>
<script type="text/javascript" src="${ctx}/statics/base/js/cookie.js"></script>
<script type="text/javascript">
/*ajax执行*/
var lang = 'cn';
var metimgurl='${ctx}/statics/base/images/';
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

<title>网站基本信息设置</title>
</head>
<body style="background:#f5f5f5">

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
	<div class="position">简体中文 > 企业应用 > <a href="index.php/admin/app/lists">应用市场</a></div>
	</div>
	<div class="clear"></div>

<script type="text/javascript">
$("html",parent.document).find('.returnover').remove();
</script>
<!-- 上传动态 -->
<div>
	<!-- 动态块 -->
	<div style="width:65%;margin-left:30px;margin-top:20px;display:inline;float:left">
		<!-- 一个动态 -->
		<c:forEach items="${share }" var="resource">
		<div style="width:95%;margin:20px;border-top:#d3d3d3 solid 1px;padding:10px;">
			<!-- 个人信息 -->
			<div>
			<div style="display:inline;float:left;">
			<img src="${ctx}/${resource.owner.icon}" style="width:40px;height:40px;"/>
			</div>
			<div style="display:inline;float:left;margin-left:2.5%;margin-top:7px;"><span id="user" style="font-weight: bold;">${resource.owner.name }</span>
			上传文件<span id="name" style="font-weight: bold;">${resource.name }</span>到<span id="mulu" style="font-weight: bold;">${resource.path } </span>
			</div>
			</div>
			<div style="width:90%;margin-left:7.5%;margin-top:15px;border:#d3d3d3 solid 1px;background:#fff;clear: both;">
				<a class="name"><span id="name" style="font-weight: bold;font-size:15px;">&nbsp;&nbsp;${resource.name }&nbsp;&nbsp; </span></a>
				<button style="float:right;=background-image: linear-gradient(-180deg,#fafbfc,#eff3f6 90%border:#fff);margin-top:7px;margin-right:5px;height:25px;width:40px;font-size: 15px;"><img src="${ctx}/statics/base/images/chakan.png"/></button>
				<br/>
				<div style="margin-left: 12px;margin-top: 12px;font-size: 15px; padding-right:10px;"><img style="margin-bottom:-5px;" src="${ctx}/statics/base/images/class.png" />&nbsp;&nbsp;${resource.course.name }
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${ctx }/filedownload?filepath=${resource.path }&filename=${resource.name }&resourceid=${resource.id }" rel="external nofollow"><img style="margin-bottom:-5px;" src="${ctx}/statics/base/images/down.png" /></a>&nbsp;&nbsp;${resource.downtimes }
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${ctx }/lookController?resourceid=${resource.id }"> <img style="margin-bottom:-5px;" src="${ctx}/statics/base/images/kan.png" /></a>&nbsp;&nbsp;${resource.looktimes }
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${ctx }/collectController?resourceid=${resource.id }"><img style="margin-bottom:-1px;" src="${ctx}/statics/base/images/shoucang.png" /></a>&nbsp;&nbsp;${resource.collecttimes }
				<span style="float: right;">${resource.time }</span>
				</div>
			</div>
		</div>
		</c:forEach>
		<!-- 一个动态结束 -->
	</div>
	<!-- 左侧推荐 -->
	<div style="width:25%;margin-left:20px;border-left:#d3d3d3 solid 1px;margin-top:40px;display:inline;float:left">
		<div style="width:80%;margin-left:20px;">
			<h1 style="font-size: 20px;color: #1e71b1;border-left:#1e71b1 solid 2px;">&nbsp;猜你喜欢</h1>
			<ol style="margin-left:5px;">
			<c:if test="${recommendresource!=null }">
			<c:forEach items="${recommendresource }" var="recommendresource">
				<li style="font-size: 15px;color:#8a8a8a;white-space: nowrap;overflow:hidden;text-overflow:ellipsis;list-style-image: url(${ctx}/statics/base/images/jiantou.png);"><a href="#" class="remen1"><span id="name">${recommendresource.name }</span></a></li>
			</c:forEach>
			</c:if>
			<c:if test="${recommendresource==null }">
			recommendresourc==null
			<c:forEach items="${hotlook}" var="look">
				<li style="font-size: 15px;color:#8a8a8a;white-space: nowrap;overflow:hidden;text-overflow:ellipsis;list-style-image: url(${ctx}/statics/base/images/jiantou.png);"><a href="#" class="remen1"><span id="name">${look.name }</span><!--  &nbsp;shared&nbsp;by&nbsp;<span id="zuozhe">${look.owner.name }</span></a></li>-->
			</c:forEach>
			</c:if>
			</ol>
		</div>
		<!-- 最热浏览 -->
		<div style="width:80%;margin-left:20px;margin-top:20px;">
			<h1 style="font-size: 20px;color: #1e71b1;border-left:#1e71b1 solid 2px;">&nbsp;最热浏览</h1>
			<ol style="margin-left:5px;">
			<c:forEach items="${hotlook}" var="look">
				<li style="font-size: 15px;color:#8a8a8a;white-space: nowrap;overflow:hidden;text-overflow:ellipsis;list-style-image: url(${ctx}/statics/base/images/jiantou.png);"><a href="#" class="remen1"><span id="name">${look.name }</span><!--  &nbsp;shared&nbsp;by&nbsp;<span id="zuozhe">${look.owner.name }</span></a></li>-->
			</c:forEach>
			</ol>
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</div>
</div>

<div class="clear"></div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.2438 seconds </div>
<script type="text/javascript">
function dplistjs(){
	var	wdth   = ($('.applist').width() - 10)/2;
	$('.applist li').width(wdth);
	$('.applist li div.text').width(wdth-96);
}
dplistjs();
$(window).resize(function() {
	dplistjs();
});
</script>
</body>
</html>
