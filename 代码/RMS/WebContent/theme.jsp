<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
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

<script type="text/javascript">
pre = new function(el)
{
el.style.color = "black";
} 

</script>
	<div class="metinfotop">

	<div class="position">简体中文 > 网站设置 > <a href="index.php/admin/theme">模板管理</a></div>


	</div>
	<div class="clear"></div>

<script type="text/javascript">
$("html",parent.document).find('.returnover').remove();
</script>


</div>

<div class="clear"></div>
<div style="width:15%;margin-top:15px;float:right;background-color:#d2e9ff;"     >
		<form action="${ctx }/addGroupController" method="post"       name="loginForm" id="loginForm"> <!-- 看看这样是否能将下拉框内容传入后台 -->
			<br />

		<dl>
			<h1 style="font-size: 15px;color:#1e71b1;margin-left:45px    ">新的群组名称</h1>


			<dd>
			    
				<input name="name" style="width: 100px;color: gray;margin-left:40px     "        type="text" class="text nonull" size="20" >
			    
			</dd>
		</dl>
		
		<br />
			<div class="clear"> </div>
			<div class="submit">
				<input type="submit"  style="width: 80px;height:40px;background-color:#1e71b1;margin-left:45px"          value="创建"/>

						  <div class="clear">  </div>	
			</div>
				
		</form>

</div>




<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
<div class="v52fmbx_tbbox">



<table cellpadding="2" cellspacing="1" class="table skin_manager" style="width:80%;">
        <tr >
            <td width="100" class="list">我创建的群组</td>
			<td width="40" class="list">头像</td>
            <td width="40" class="list">建立者</td>
			<td width="60" class="list">群设置</td>
			<td width="60" class="list" style="padding:0px; text-align:center;">查看文件</td>
        </tr>
          
		  
		  
		  
		  	<c:forEach  items="${listgroupsetter}" var="ls">
		  	<tr>
		  	
		  	      <td class="list-text " style="height: 40px;width:100px;">
			   <span style="font-size:20px;">${ls.name}</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/people.jpg" width="70" height="70" 
			      style="border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">${ls.owner.name}</span>
						<p style="color:#666;"></p>
			</td>
			
            <td class="list-text"><a href="groupxiangqing?id=${ls.id}"  title="模板设置">查看</a></td>
			<td class="list-text"><a href="t1.jsp" title="模板设置">文件目录</a></td>
		  	
		  	
		  	</tr>
		
			
		</c:forEach>
		  
		  
	
</table>
</div>
</div>


















<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
<div class="v52fmbx_tbbox">



<table cellpadding="2" cellspacing="1" class="table skin_manager" style="width: 80%;">
        <tr >
            <td width="100" class="list">我管理的群组</td>
			<td width="40" class="list">头像</td>
            <td width="40" class="list">建立者</td>
			<td width="60" class="list">查看小组人员</td>
			<td width="60" class="list" style="padding:0px; text-align:center;">查看文件</td>
        </tr>
          
		  
		  
        <tr >
            <td class="list-text " style="height: 40px;width:100px">
			   <span style="font-size:20px;">英语学习交流</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/qunzu/44.jpg" width="70" height="70" 
			      style="border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">刘贝贝</span>
						<p style="color:#666;"></p>
			</td>
			
            <td class="list-text"><a href="safe1.jsp" title="模板设置">查看</a></td>
			<td class="list-text"><a href="theme_edit.jsp" title="模板设置">文件目录</a></td>
        </tr>

         <tr >
            <td class="list-text " style="height: 40px;width:100px">
			   <span style="font-size:20px;">智能设备方向</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/qunzu/33.jpg" width="70" height="70" 
			      style=" border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">李晓明</span>
						<p style="color:#666;"></p>
			</td>
			
           
            <td class="list-text"><a href="safe.jsp" title="模板设置">查看</a></td>
			<td class="list-text"><a href="theme_edit.jsp" title="模板设置">文件目录</a></td>
        </tr>


          
       
           
		
</table>
</div>
</div>




































<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
<div class="v52fmbx_tbbox">



<table cellpadding="2" cellspacing="1" class="table skin_manager" style="width: 80%;">
        <tr >
            <td width="100" class="list">我加入的群组</td>
			<td width="40" class="list">头像</td>
            <td width="40" class="list">建立者</td>
			<td width="60" class="list">群设置</td>
			<td width="60" class="list" style="padding:0px; text-align:center;">查看文件</td>
        </tr>
          
		  
		  
        <tr >
            <td class="list-text " style="height: 40px;width:100px">
			   <span style="font-size:20px;">机器学习方向</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/qunzu/22.jpg" width="70" height="70" 
			      style="border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">刘晓涵</span>
						<p style="color:#666;"></p>
			</td>
			
            <td class="list-text"><a href="safe2.jsp" title="模板设置">查看</a></td>
			<td class="list-text"><a href="t2.jsp" title="模板设置">文件目录</a></td>
        </tr>

         <tr >
            <td class="list-text " style="height: 40px;width:100px">
			   <span style="font-size:20px;">人工智能方向</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/qunzu/11.jpg" width="70" height="70" 
			      style=" border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">马图南</span>
						<p style="color:#666;"></p>
			</td>
			
           
            <td class="list-text"><a href="safe.jsp" title="模板设置">查看</a></td>
			<td class="list-text"><a href="theme_edit.jsp" title="模板设置">文件目录</a></td>
        </tr>

           <tr >
            <td class="list-text " style="height: 40px;width:100px">
			   <span style="font-size:20px;">市场营销方向</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/qunzu/55.jpg" width="70" height="70" 
			      style=" border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">李美好</span>
						<p style="color:#666;"></p>
			</td>
			
           
            <td class="list-text"><a href="safe.jsp" title="模板设置">查看</a></td>
			<td class="list-text"><a href="theme_edit.jsp" title="模板设置">文件目录</a></td>
        </tr>
          
          <tr >
            <td class="list-text " style="height: 40px;width:100px">
			   <span style="font-size:20px;">思想品德教育</span>
			</td>
            
			<td class="list-text "><img src="statics/base/images/qunzu/66.jpg" width="70" height="70" 
			      style=" border:1px solid #ddd;" />
			</td>

            <td class="list-text " >
			   <span style="font-size:14px;">马图南</span>
						<p style="color:#666;"></p>
			</td>
			
           
            <td class="list-text"><a href="safe.jsp" title="模板设置">查看</a></td>
			<td class="list-text"><a href="theme_edit.jsp" title="模板设置">文件目录</a></td>
        </tr>
           
		
</table>
</div>
</div>








<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.0941 seconds </div>
<script type="text/javascript">
var d=$("input[name='id']:checked");
function fenggeok(id,file,type){
	var v=$("select[name='met_skin_css_"+id+"']").val();
	var text=type==1?'确定启用选中的风格吗？':'确定启用选中的模板吗？';
	if(confirm(text)){
		$.ajax({
		url : 'index.php/admin/theme/aply?dir='+id, 
		type: "POST",
		success: function(data){
			location.reload();
		}
		});
	}else{
		$("input[name='id']").attr('checked',false);
		var tid = "#"+d.attr("id");
		$(tid).attr('checked',true);
	}
}



</script>

</body>
</html>

