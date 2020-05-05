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
<script type="text/javascript">
            function change()
            {
            	console.log("hfkajhfkjahfkajjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjd");
                var img=document.getElementById("image");
                //切换验证码的原理是点击就重新将src设置一下，但是浏览器有缓存，所以我们需要在后面添加                     一个参数来让浏览器不断发送请求，后面加的参数为时间，因为时间是不断变化的
                img.src="VerificodeServlet?a="+new Date().getTime();
            }
        </script>



<script>


$(document).ready(function(c) {
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
				<input type="text" class="text" name="email" value="邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}"><a href="#" class=" icon user"></a>
			</li>
			</ul>
				<div class="clear"> </div>
			<ul>
			<li>
				<input type="password" name="password" value="Password"    onfocus="this.value ='';" onblur="if (this.value == '') {this.value = 'Password';}"> <a href="#" class="icon lock"></a>
			</li>
			</ul>
			
	
			
			<!-- <img src="VerificodeServlet" id="image"><a href="javascript:change()">看不清，换一张</a>    -->
		      <!-- 请求Servlet获取验证码 -->
                     <!-- 点击即刷新 -->
            <br/> 
			
			
			 <ul>
			<li  style="   width: 50%;">
			    
				 <input type="text" name="vcode" value="验证码"     onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '验证码';}">  
				 
				 
			</li>
			<li  style="float:right;width: 35%;margin-top:-65px;" ><a href="javascript:change()"> <img src="VerificodeServlet" id="image"> </a> </li>
			</ul> 
			
			
			
			
			
	   
        
       
        <!-- 获取信息和显示错误信息 -->
        <%
            String message="";
            String msg=(String)request.getAttribute("msg");
            if(msg!=null)
            {
                message=msg;
            }
        %>
        <font color="red">
        <%=message %>
        </font>

			
			
			
			
			
			
			
			
			
			
			
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