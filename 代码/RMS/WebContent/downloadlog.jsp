<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理员</title>
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

	<div class="position">简体中文 > 网站设置 > <a href="admin.html">用户管理</a></div>


	</div>
	<div class="clear"></div>

	
</div>
<div style="height:50px;width:100%;margin: auto;background-color: #1c86ee;">
	<font size="3" color="#FFF" style="padding-left:10px;">下载记录</font>
	<a href="#"><img src="statics/base/images/search.png" style="margin-bottom: -11px;margin-left: 23%;background-color: #1874cd;margin-right:0;height:32px;"/></a><input type="text" value="搜索下载记录" style="width:40%;margin-top:8px;height:30px;margin-left:0px;;background-color: #1874cd;border: #1e71b1 solid 1px; color:#fff;" onfocus="if(value=='搜索下载记录')value=''" onblur="if(!value)value='搜索下载记录'"/>
</div>
<div style="clear:both;"></div>
<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
<div class="v52fmbx_tbbox">
<table cellpadding="2" cellspacing="1" class="table">
              <tr>
                <td width="50" class="list" style="padding:0px; text-align:center;">选择</td>
                <td width="300" class="list alignleft" >文件名</td>
                <td width="100" class="list" style="padding:0px; text-align:center;">上传人</td>
               	<td width="70" class="list" style="padding:0px; text-align:center;">文件大小</td>
                <td width="70" class="list" style="padding:0px; text-align:center;">所属课程</td>
				<td width="150" class="list" style="padding:0px; text-align:center;">下载时间</td>
				<td width="100" class="list" style="padding:0px; text-align:center;">操作</td>
              </tr>
			  <form name="myform" method="post" id="myform">
		        <tr class="mouse click">
                <td class="list-text"><input id="id" type="checkbox" value="5" name="id[]"/></td>
                <td class="list-text color999 alignleft" ><a href="admin_edit.html" title="查看详细">Java基础.pptx</a></td>
                <td class="list-text color999">鲍彩倩</td>
                <td class="list-text color999">3.45MB</td>
                <td class="list-text color999">软件工程</td>
				<td class="list-text color999">2014-01-08 16:03:13</td>
				<td class="list-text">
				<a href="admin_edit.html">删除记录</a>
								</td>
				
              </tr>
              	<tr>
				  <td class="all-submit" colspan="9" style="padding:5px 10px;text-align: center;">
				  <input type='submit' style="margin:auto;" value='批量删除' class="submit li-submit" onclick="{if(confirm('确定删除吗?')){document.myform.action='index.php/admin/admin/delsome';return true;}return false;}"/>
				  </td>
			  </tr>

			  </form>
</table>
</div>
</div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.0862 seconds </div>
</body>
</html>
