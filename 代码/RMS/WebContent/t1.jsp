<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<script type="text/javascript">var basepath='statics/base/images';</script>
<script type="text/javascript" src="statics/base/js/metvar.js"></script>
<script type="text/javascript" src="statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="statics/base/js/iframes.js"></script>
<script type="text/javascript" src="statics/base/js/cookie.js"></script>
<script type="text/javascript">
/*ajax执行*/
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

	<div class="position">简体中文 > 网站设置 > <a href="index.php/admin/theme">模板管理</a></div>

    <div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>
	</div>
	<div class="clear"></div>


</div>

<div class="clear"></div>

 <div style="margin-left:10px;margin-top:10px"><a href="upphoto.jsp"><font style="font-size:30px">上传文件</font></a></div>
<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
<div class="v52fmbx_tbbox">

<table cellpadding="2" cellspacing="1" class="table uploadfile">
	<!--<tr> 
        <td colspan="5" class="input" style="padding:2px 5px;">
			<div style="float:left;">
			当前路径:./data/themes/cn			 <span class="tips"></span>
			</div>
			 
		</td>
    </tr>-->
	<tr>	
        <td width="120" class="list">目录/名称</td>	
		<td width="130" class="list" style="padding:0px; text-align:center;">模板名称</td>
        <td width="80" class="list" style="padding:0px; text-align:center;">文件大小</td>
		<td width="150" class="list" style="padding:0px; text-align:center;">上传时间</td>
		<td class="list" width="80" style="padding:0px; text-align:center;">操作</td>
    </tr>

	
	
        <tr class="mouse click">
        <td class="list-text alignleft">
		        				    &nbsp;<img class="small" src="statics/base/images/botton/Filey.png" />
					<a href="index.php/admin/theme/lists?path=./data/themes/cn/css" title="查看详细">白盒测试</a>
						</td>
		<td class="list-text">测试代码</td>
        <td class="list-text">2000 Bytes</td>
		<td class="list-text">2020-5-6 17:22:19</td>
		<td class="list-text">
		    				    <a href="index.php/admin/theme/lists?path=./data/themes/cn/spoken">查看</a>
						</td>
    </tr> 
        <tr class="mouse click">
        <td class="list-text alignleft">
		        				    &nbsp;<img class="small" src="statics/base/images/botton/Filey.png" />
					<a href="index.php/admin/theme/lists?path=./data/themes/cn/flash" title="查看详细">测试用例</a>
						</td>
		<td class="list-text"></td>
        <td class="list-text">1000 Bytes</td>
		<td class="list-text">2020-5-7 12:22:19</td>
		<td class="list-text">
		    				    <a href="index.php/admin/theme/lists?path=./data/themes/cn/flash">查看</a>
						</td>
    </tr> 
        <tr class="mouse click">
        <td class="list-text alignleft">
		        				    						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="theme_edit_show.html" title="查看详细">foot.php</a>
											</td>
		<td class="list-text">测试工程</td>
        <td class="list-text">3.6 KB</td>
		<td class="list-text">2020-05-08 16:55:54</td>
		<td class="list-text">
		    				    					    <a href="theme_edit_show.html">查看</a> 
											</td>
    </tr> 
        
    	

    <tr class="click">
        <td class="list-text" colspan="5"></td>
    </tr>

	
	<tr>
		<td class="footer" colspan="5">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.4231 seconds </td>
	</tr>
</table>
<script type="text/javascript">
    var tdfile = $("#files");
	    tdfile.attr("rowspan",$('tr.click').length+1);
</script>

</body>
</html>

