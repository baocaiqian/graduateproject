<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Purple_loginform Website Template | Home :: w3layouts</title>
<link href="statics/base/css/mylogin.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="statics/base/js/jquery.min.js"></script>
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
		<img src="statics/base/images/2.png" style="width:80%;margin:auto"/>
	</div>
		<form>
			<ul>
			<li>
				<input type="text" class="text" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="statics/base/images/icon/usrimg.jpg"></div>
			</li>
            
            <li>
				<input type="text" class="text" value="邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="statics/base/images/icon/email.jpg"></div>
			</li>

			<li>
				<input type="text" class="text" value="电话号码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话号码';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="statics/base/images/icon/tell.jpg"></div>
			</li>

				<div class="clear"> </div>
			<li>
				<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="statics/base/images/icon/password.jpg"></div>
			</li>
			<li>
				<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"><div style="float: right;width: 30px;height: 30px"><img  style="margin-top: 8px;   width: 30px;height: 30px"   src="statics/base/images/icon/password.jpg"></div>
			</li>
			</ul>
			<div class="submit">
				<input type="submit" onclick="myFunction()" value="Login" >
			    <br>
			    <br>	
			</div>
				
		</form>
		</div>					
	</div>
	</div>
	<div class="clear"> </div>
<!--- footer --->

<div class="footer">
	<p>Copyright &copy; 2014.</p>
</div>

</body>
</html>