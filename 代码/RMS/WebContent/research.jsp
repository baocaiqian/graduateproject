<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/newstyle.css" />

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
	<div class="position">资源检索 <a href="index.php/admin/app/lists">高级检索</a></div>
	</div>
	<div class="clear"></div>

<script type="text/javascript">
$("html",parent.document).find('.returnover').remove();
</script>
<div style="width:86.5%;margin-left:3%;background:url(${ctx}/statics/base/images/bgs.png)">
<br/><br/><br/><br/><br/><br/>
	<div style="margin-left:8%;high:30px;border:1px;">
	<form action="">
	<font size="3">资源类型：</font>
	<select name="type">
		<option value="word文档">word文档</option>
		<option value="图片" >图片</option>
		<option value="视频" >视频</option>
		<option value="课程软件" >课程软件</option>
 		<option value="PPT" >PPT</option>
		<option value="练习demo" >练习demo</option>
		<option value="课程作业" >课程作业</option>
		<option value="消息通知" >消息通知</option>
	</select>
	<font size="3">所属学科：</font>
	<select name="course">
		<c:forEach var="name" items="${names }">
		<option value="${name }">${name }</option>
		</c:forEach>
	</select >
	<font size="3">关键字: </font><input name="title" style="width=20px;"  type="text"/>
	<input type="submit" value="检索" style="width:40px;high:100%"/>
	</form>
</div>
<br/><br/><br/><br/><br/><br/>
</div>
<!-- 三个推荐 -->
<div style="width:85.55%;margin-left:3.9%;margin-top:20px;height:30px;">
	<div style="display:inline;float:left;border-left:#1e71b1 solid 3px;width:31%;margin-right:1%;"><font color="#1e71b1" size="4">&nbsp;&nbsp;&nbsp;热门搜索&nbsp;&nbsp;&nbsp;</font><img src="${ctx}/statics/base/images/huo.png""/></div>
	<div style="display:inline;float:left;border-left:#1e71b1 solid 3px;width:31%;margin-right:1%;"><font color="#1e71b1" size="4">&nbsp;&nbsp;&nbsp;猜你想搜&nbsp;&nbsp;&nbsp;</font><img src="${ctx}/statics/base/images/huo.png"/></div>
	<div style="display:inline;float:left;border-left:#1e71b1 solid 3px;width:31%;margin-right:1%;"><font color="#1e71b1" size="4">&nbsp;&nbsp;&nbsp;热门下载&nbsp;&nbsp;&nbsp;</font><img src="${ctx}/statics/base/images/huo.png"/></div>
</div>
<div style="width:85.55%;margin-left:3.9%;margin-top:5px;">
	<div style="display:inline;float:left;width:31%;margin-right:1%;">
		<ol>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="#" class="remen1">java基础语法</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="login.html" class="remen1">类的继承</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_ad.html" class="remen1">多态</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_ad_add.html" class="remen1">数据挖掘</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="app_lists.html" class="remen1">多线程</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="app.html" class="remen1">数据分析</a></li>
		</ol>
	</div>
	<div style="display:inline;float:left;width:31%;margin-right:1%;">
	<ol>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="#1" class="remen1">数据分析</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="#2" class="remen1">数据挖掘</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_adcat.html" class="remen1">爬虫</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_adcad_add.html" class="remen1">Hadoop</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="app.html" class="remen1">spark</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="case.html" class="remen1">协同过滤</a></li>
		</ol>
	</div>
		<div style="display:inline;float:left;width:31%;margin-right:1%;">
	<ol>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="#3" class="remen1">java基础语法</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="content.html" class="remen1">类的继承</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_adcat_edit.html" class="remen1">java基础语法</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_book_add.html" class="remen1">类的继承</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_book.html" class="remen1">java基础语法</a></li>
			<li style="font-size: 15px;color:#8a8a8a;list-style-image: url(${ctx}/statics/base/images/jiantou.png)"><a href="expand_book_edit.html" class="remen1">类的继承</a></li>
		</ol>
	</div>
</div>

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
