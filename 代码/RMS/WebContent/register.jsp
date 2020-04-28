<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Purple_loginform Website Template | Home :: w3layouts</title>
<link href="${ctx}/statics/base/css/mylogin.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="${ctx}/statics/base/js/jquery.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
</head>
<body>
<!-- contact-form -->	
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<img src="${ctx}/statics/base/images/2.png" style="width:80%;margin:auto"/>
	</div>
	
	
	
		<form action="${ctx }/RegisterController" method="post" name="RegisterForm" id="registerForm">
			<ul>
			<li>
				<input type="text" class="text" value="用户名" name="name"   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="${ctx}/statics/base/images/icon/usrimg.jpg"></div>
			</li>    
			
			<li>
				<input type="password" value="Password" name="password"    onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="${ctx}/statics/base/images/icon/password.jpg"></div>
			</li>
			        
            <li>
				<input type="text" class="text" value="邮箱"  name="email"   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="${ctx}/statics/base/images/icon/email.jpg"></div>
			</li>
			
			<li>
				<input type="text" class="text" value="学校"  name="school" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '学校';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="${ctx}/statics/base/images/icon/tell.jpg"></div>
			</li>
				<div class="clear"></div>
			
			
			
			</ul>
			
			<div class="submit">
				<input type="submit" value="注册" >
				<h4><a href="mylogin.jsp">返回登录页面</a></h4>
						  <div class="clear">  </div>
			    <br>
			    <br>	
			</div>
				
		</form>
		
		
		
		</div>					
	</div>
	</div>
	<div class="clear"> </div>
<!--- footer --->


</body>
</html>