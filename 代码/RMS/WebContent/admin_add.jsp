<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加用户</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<script type="text/javascript">var basepath='statics/base/images';</script>
<script type="text/javascript" src="statics/base/js/metvar.js"></script>
<script type="text/javascript" src="statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="statics/base/js/iframes.js"></script>
<script type="text/javascript" src="statics/base/js/cookie.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	ifreme_methei();
});
</script>
</head>
<body>
	<div class="metinfotop">
	<div class="position">简体中文：网站设置 > <a href="admin.html">用户管理</a> > 添加用户</div>

	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>

	</div>
	<div class="clear"></div>

	<div style="clear:both;"></div>



<p><font size="6"  color="#1e71b1"  style="margin-left:40px">密码修改</font></p>



<form action="${ctx }/changeController" method="post" name="myform" >	
<div class="v52fmbx_tbmax">
<div class="v52fmbx_tbbox">
<div class="v52fmbx">
		<div class="v52fmbx_dlbox">
		<dl>
			<dt>用户名：</dt>
			<dd><input name="name" type="text" class="text nonull"><span class="red"></span></dd>
		</dl>
		</div>


		




		<div class="v52fmbx_dlbox">
		<dl>
			<dt>新密码：</dt>
			<dd>
			<input name="password" type="password" class="text nonull" ><span id="pass1">
			</dd>
		</dl>
		</div>

		


		<div class="v52fmbx_dlbox">
		<dl>
			<dt>Email：</dt>
			<dd>
				<input name="email" type="text" class="text nonull" size="20" >
			
			</dd>
		</dl>
		</div>
		

		<div class="v52fmbx_dlbox v52fmbx_mo">
		<dl>
			<dt></dt>
			<dd>
			    <input type="submit"  value="保存" class="submit" onclick="return Smit($(this),'myform')" />
			</dd>
		</dl>
		</div>
	</div>
	
    
</div>
</div>
</div>      
</form>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.0900 seconds </div>
	
</body>
</html>