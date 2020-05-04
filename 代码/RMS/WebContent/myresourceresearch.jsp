<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>资源检索</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

	<div class="position">资源检索 > <a href="expand_ad.html">高级检索</a></div>


	</div>
	<div class="clear"></div>

	</div>

<div style=" width:80%;high:30px;border:1px;margin:auto;">
	<form action="${ctx }/mysearched" method="post">
	<font size="3">资源类型：</font>
	<select name="type">
		<option value="文本文档">文本文档</option>
		<option value="图片" >图片</option>
		<option value="视频" >视频</option>
		<option value="音频" >音频</option>
 		<option value="PPT" >PPT</option>
		<option value="练习demo" >练习demo</option>
		<option value="其他" >其他</option>
	</select>
	<font size="3">所属学科：</font>
	<select name="course">
		<c:forEach var="name" items="${names }">
		<option value="${name }">${name }</option>
		</c:forEach>
	</select>
	<font size="3">关键字: </font><input name="title" style="width=20px;"  type="text"/>
	<input type="submit" value="检索" style="width:40px;high:100%"/>
	</form>
</div>
<div style="clear:both;"></div>

<div class="v52fmbx_tbmax">
<div class="v52fmbx_tbbox">
<table cellpadding="2" cellspacing="1" class="table">
              <tr>
			    <td width="20" class="list" style="padding:0px; text-align:center;">选择</td>
				<td width="20" class="list" style="padding:0px; text-align:center;">ID</td>
                <td width="50" class="list" style="padding:0px; text-align:center;">所属学科</td>
                <td width="100"class="list" >文件名称</td>
                <td class="list" width="50" style="padding:0px; text-align:center;">文件类型</td>
				<td width="50" class="list" style="padding:0px; text-align:center;">查看</td>
				<td width="50" class="list" style="padding:0px; text-align:center;">下载</td>
				<td width="50" class="list" style="padding:0px; text-align:center;">浏览次数</td>
				<td width="50" class="list" style="padding:0px; text-align:center;">下载次数</td>
				<td width="50" class="list" style="padding:0px; text-align:center;">上传人</td>
				<td width="50" class="list" style="padding:0px; text-align:center;">上传时间</td>
              </tr>
			  <form name="myform" method="post" id="myform">
			  <c:if test="${resources!=null}">
			  <c:forEach var="resource" items="${ resources}">
                 <tr class="mouse click">
                <td class="list-text"><input name="id[]" type='checkbox' id="id" value="${resource.id }" /></td>
                <td class="list-text">${resource.id }</td>
				<td class="list-text">${resource.course.name }</td>
			    <td class="list-text alignleft">${resource.name }</td>
				<td class="list-text">${resource.postfix}</td>
                <td class="list-text"><a href="#">在线预览</a></td>      
				<td class="list-text">
				<a href="expand_ad_edit.html">点击下载</a>
				<!--
				<a href="javascript:;" onclick="{if(confirm('确定删除吗?')){window.location='index.php/admin/expand_ad/del?id=3&&page=1';return true;}return false;}" >删除</a>
				-->
				</td>
				<td class="list-text">${resource.looktimes}</td>
			    <td class="list-text">${resource.downtimes}</td>
				<td class="list-text">${resource.owner.name}</td>
				<td class="list-text">${resource.time}</td>
              </tr>
              </c:forEach>
              </c:if>
   	  		 <tr> 
			 <td class="all-submit" colspan="11" style="padding:5px 10px;">
			 <input type='submit' value='删除选定内容' class="submit li-submit" onclick="{if(confirm('确定删除吗?')){document.myform.action='index.php/admin/expand_ad/delsome?&page=1';return true;}return false;}"/>
			 <input type='submit' value='下载全部内容' class="submit li-submit" onclick="{if(confirm('确定下载全部吗?')){document.myform.action='index.php/admin/expand_ad/delsome?&page=1';return true;}return false;}"/>
			  <div class="li-submit">
			  </div>
			  <div class="li-submit">
			 </div>
			  </td>
          </tr>
		  </form>
		 <tr>
		  <td class="page_list" colspan="12">
		  <form method='post' action='index.php/admin/user/index?&page=1'>
		  <style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
			.digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
			.digg4 a:active {border:1px solid #000099; color:#000000;}
			.digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
			.digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
		 </style>
		 <div class='digg4'>
		 <span class="disabled" style="font-family: Tahoma, Verdana;"><b>«</b></span><span class="disabled" style="font-family: Tahoma, Verdana;">‹</span><span class="current">1</span><span class="disabled" style="font-family: Tahoma, Verdana;">›</span><span class="disabled" style="font-family: Tahoma, Verdana;"><b>»</b></span>  共2条 		 转到<input name='page' class='page_input' value="1" />页 <input type='submit' value=' go ' class="bnt_pinyin"/></form></div>
		 </td>
	  </tr>
</table>
</div>
</div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.1193 seconds </div>
<script type="text/javascript">
$(document).ready(function(){
	seachinput($('#searchtext'),'用户名查询');
});
</script>
</body>
</html>
