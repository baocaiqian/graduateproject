<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录</title>
<link href="${ctx }/statics/base/css/mylogin.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="${ctx }/statics/base/js/jquery.min.js"></script>
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
		<img src="${ctx }/statics/base/images/2.png" style="width:80%;margin:auto"/>
	</div>
		<form action="${ctx }/loginController" method="post" name="loginForm" id="loginForm"> <!-- 看看这样是否能将下拉框内容传入后台 -->
			<ul>
			<li>
				<input type="text" class="text" name="email" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"><a href="#" class=" icon user"></a>
			</li>
			</ul>
				<div class="clear"> </div>
			<ul>
			<li>
				<input type="password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <a href="#" class="icon lock"></a>
			</li>
			</ul>
			
			<!-- <ul>
			<li>
			    <input type="password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <div style="float: right;width: 40px;height: 30px"><img  style="margin-top: 8px;   width: 40px;height: 30px"   src="${ctx}/statics/base/images/icon/ma.jpg"></div>
                
			</li>
			</ul> -->
			
			
			
			<div class="clear"> </div>
			<div class="submit">
				<input type="submit" value="登录"/>
				<h4><a href="register.jsp">没有账号？去注册</a></h4>
				<h4><a href="#">忘记密码</a></h4>
						  <div class="clear">  </div>	
			</div>
				
		</form>
		</div>					
	</div>
	<div class="clear"> </div>
<!--- footer --->
<div class="footer">
	<p>Copyright &copy; 2014.</p>
</div>

</body>
</html>