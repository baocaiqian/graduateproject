<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>群组管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css?5202" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<script type="text/javascript">var basepath='statics/base/images';</script>
<script type="text/javascript" src="statics/base/js/metvar.js"></script>
<script type="text/javascript" src="statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="statics/base/js/iframes.js"></script>
<script type="text/javascript" src="statics/base/js/cookie.js"></script>
<script type="text/javascript">
/*ajaxæ§è¡*/
var lang = 'cn';
var metimgurl='statics/base/images/';
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

	<div class="position">个人中心 > <a href="content.html">群管理</a> > <a href='video.html'>创建群众组</a></div>


	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;è¿å</a></div>

	</div>
	<div class="clear"></div>

	
</div>

	<form method="post" name="myform" action="${ctx }/changeInfoController">
		<div class="v52fmbx_tbmax">
			<div class="v52fmbx_tbbox">
				<div class="v52fmbx">


                    <!--<br />
					<div  style="width: 40%; height: 100px; border: #ddd solid 1px; text-align: center;">
						<h1 style="font-size: 25px;color:#1e71b1    ">创建群组</h1>
						<h1 style="font-size: 50px;color:#1e71b1    ">修改个人信息</h1>
					</div>
					<br />  -->
  
  
  
					<br />
					
						<h1 style="font-size: 25px;color:#1e71b1 ;margin-left:15%   ">创建群组</h1>

				
					<br />  





				</div>
				
				
		<%--<div class="v52fmbx_dlbox">
		<dl>
			<h1 style="font-size: 15px;color:#1e71b1    ">用户名</h1>
			<dd><input name="name"  style="width: 40%"      type="text" class="text nonull"><span class="red"></span></dd>
		</dl>
		</div> --%>
		
		
				
		<div class="v52fmbx_dlbox">
		<dl>
			<h1 style="font-size: 15px;color:#1e71b1    ">学校</h1>
			<dd><input name="school"  style="width: 40%"           type="text" class="text nonull"><span class="red"></span></dd>
		</dl>
		</div>


		<div class="v52fmbx_dlbox">
		<dl>
			<h1 style="font-size: 15px;color:#1e71b1    ">专业</h1>
			<dd>
				<input name="major" style="width: 40%"       type="text" class="text nonull" size="20" >
			
			</dd>
		</dl>
		</div>
		
		
		<div class="v52fmbx_dlbox">
		<dl>
			<h1 style="font-size: 15px;color:#1e71b1    ">方向</h1>
			<dd>
				<input name="mainmajor" style="width: 40%"       type="text" class="text nonull" size="20" >
			
			</dd>
		</dl>
		</div>
		
		
		<div class="v52fmbx_dlbox">
		<dl>
			<h1 style="font-size: 15px;color:#1e71b1    ">个人简介</h1>
			<dd>
				<input name="presondescribe" style="width: 40%"       type="text" class="text nonull" size="20" >
			
			</dd>
		</dl>
		</div>

     <br></br>
		<div class="v52fmbx_dlbox v52fmbx_mo">
		<dl>
			<dt></dt>
			<dd>
			    <input type="submit"  value="保存" class="submit"  />
			</dd>
		</dl>
		</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				


				<div class="v52fmbx_dlbox v52fmbx_mo" style="height: 200px">
					<dl>
						<dt></dt>
						<dd></dd>
					</dl>
				</div>

			</div>
		</div>
		</div>
	</form>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.0973 seconds </div>
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
		    alert('è¯·éæ©è¦ç§»å¨çæç« ï¼');
			return false;
		}
		if (confirm('ç¡®å®ç§»å¨å?')) {
		    document.myform.submit();
		}
	});
});

</script>
</body>
</html>
