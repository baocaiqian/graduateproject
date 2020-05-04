<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>æ·»å åå®¹</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<script type="text/javascript">var basepath='statics/base/images';</script>
<script type="text/javascript" src="statics/base/js/metvar.js"></script>
<script type="text/javascript" src="statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="statics/base/js/iframes.js"></script>
<script type="text/javascript" src="statics/base/js/cookie.js"></script>
<script charset="utf-8" src="statics/lib/kind/kindeditor-min.js"></script>
<script charset="utf-8" src="statics/lib/kind/lang/zh_CN.js"></script>
<script type="text/javascript">
var gettagspath="";
var upload_json="statics/lib/kind/php/upload_json.php";
var file_manager_json="statics/lib/kind/php/file_manager_json.php";
KindEditor.ready(function(K) {
	var editor = K.create('textarea[name="info"]', {
		urlType : 'domain',
		allowFileManager : true
	});
	K('#image').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
				imageUrl : K('#pic').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#pic').val(url);
						$("#img").attr("src",url);
						editor.hideDialog();
					}
			});
		});
	});
	K('#insertfile').click(function() {
		editor.loadPlugin('insertfile', function() {
			editor.plugin.fileDialog({
				fileUrl : K('#files').val(),
				clickFn : function(url, title) {
					K('#files').val(url);
						editor.hideDialog();
				}
			});
		});
	});
});

</script>
<script type="text/javascript">
$(document).ready(function(){
	ifreme_methei();
});
</script>
</head>
<body>
	<div class="metinfotop">
	<div class="position">简体中文 > 企业应用 > <a href="index.php/admin/app">我的应用</a></div>
	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;è¿å</a></div>
	</div>
	<div class="clear"></div>
	
<form  method="post" name="myform" action="index.php/admin/video/add">
<div class="v52fmbx_tbmax">
<div class="v52fmbx_tbbox">
<div class="v52fmbx">
	
		
	
		
		
	
		
		
		
		
             <br/>
         <div style="width:80%;margin:auto;height:100px;border:#ddd solid 1px;text-align: center;">
         	<h1 style="font-size: 50px;">修改个人信息</h1>
         </div>
         <br/>
         
       <a href="${ctx }/upphoto.jsp">
			<img src="${ctx }/${user.icon}"class="photo"   alt="" width="15%" height="150px" style="margin: 10px;" />
		</a>  
         
         
        
		
 
	

	
		
		
	
		
	
		

		
		
		
		
		
		
		

		
		

	</div>
	
	<div class="v52fmbx_dlbox v52fmbx_mo" style="height:200px">
		 <dl>
			<dt></dt>
			<dd></dd>	
		</dl>	
	</div>
	
</div>
</div>
</div>      
</form>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.1116 seconds </div>
</body>
</html>