<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>software教学资料管理系统</title>
<link href="favicon.ico" rel="shortcut icon" />
<link href="${ctx }/statics/base/css/metinfo_box.css" rel="stylesheet" />
<link href="${ctx }/statics/lib/asyncbox/skins/ZCMS/asyncbox.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript" src="${ctx }/statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="${ctx }/statics/base/js/cookie.js"></script>
<script type="text/javascript" src="${ctx }/statics/lib/asyncbox/AsyncBox.v1.4.5.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#kzqie").click(function(){
		var my = $(this);
		if(my.text()=='窄版'){
			$('#content,#top .topnbox').animate({ width: '1000px'}, 80);
			$.ajax({url : '',type: "post"});
			my.attr('title','切换到宽版');
			my.text('宽版');
			setTimeout("topwidth(100)",100);
		}else{
			$('#content,#top .topnbox').animate({ width: '99%'}, 80);
			$.ajax({url : '',type: "post"});
			my.attr('title','宽版');
			my.text('宽版');
			setTimeout("topwidth(100)",100);
		}
	});
});
$(function() {
    $("#cache").click( function () { 
	    if(confirm('确定清除吗?')){
			$.ajax({
				type: "post",
				cache: !1,
				url: "index.php/admin/home/clear",
				data: "",
				timeout: 1e4,
				error: function() {},
				success: function(e) {
					if (e>0) {
					    asyncbox.tips("清除成功",'success');
					} else {
					    asyncbox.tips('清除失败','error');
					}
				}
			})
		}
	});  
})
</script>


<style>
#content,#top .topnbox{ width:1000px;}
#top .floatr li a span{ behavior: url(${ctx }/statics/images/iepngfix.htc); }
</style>
<body id="indexid">
<div id="metcmsbox">
<div id="top"> 
	<div class="topnbox" style="width: 99%;">
    <div class="floatr">
		<div class="top-r-box">
		<div class="top-right-boxr">
			<div class="top-r-t">
				<ol class="rnav">
					<li class="list">您好 <a href="usercenter.jsp" id="mydata" target="main" title="编辑 admin" class='tui'>${user.name }</a></li>
					<li class="line">|</li>
					<li class="list"><a target="_top" onclick="{if(confirm('确定退出吗?')){window.location='index.php/admin/login/loginout';return true;}return false;}" href="javascript:;" id="outhome" title="退出" class='tui'>退出</a></li>
					<li class="line">|</li>
					<li class="list"><a href="javascript:;" id="kzqie" title="切换到窄版">窄版</a></li>
                    <li id="langcig" class="list langli">
					    <a id="cache" href="#">清理缓存</a>
						<span>|</span>
						<a href="index.php/admin/api_login/qq_login" target="_blank">绑定QQ</a>						<div class="langlist" style="display:none;"></div>
					</li>
					
				</ol>
				<div class="clear"></div>
			</div>
		</div>
		<div></div>
		<div class="nav">
            <ul id="topnav">
                                <li id="metnav_1" class="list">
					<a href="javascript:;" id="nav_1" class="onnav" hidefocus="true">
					<span class="c1"></span>
					<p>我的文档</p>
					</a>
				</li>
				                <li id="metnav_10" class="list">
					<a href="javascript:;" id="nav_10"  hidefocus="true">
					<span class="c2"></span>
					<p>资源上传</p>
					</a>
				</li>
				                <li id="metnav_37" class="list">
					<a href="javascript:;" id="nav_37"  hidefocus="true">
					<span class="c3"></span>
					<p>资源检索</p>
					</a>
				</li>
				                <li id="metnav_12" class="list">
					<a href="javascript:;" id="nav_12"  hidefocus="true">
					<span class="c4"></span>
					<p>资源共享</p>
					</a>
				</li>
				                <li id="metnav_20" class="list">
					<a href="javascript:;" id="nav_20"  hidefocus="true">
					<span class="c5"></span>
					<p>个人中心</p>
					</a>
				</li>
				
            </ul>
		</div>
		</div>
    </div>
    <div class="floatl">
	    <a href="" hidefocus="true" id="met_logo"><img src="${ctx }/statics/base/images/2.png" alt="phpci企业网站管理系统" title="phpci企业网站管理系统" width = 155px high = 30px/></a>
	</div>
	</div>
</div>
<div id="content" style="width: 99%;">
    <div class="floatl" id="metleft">
		<div class="floatl_box">
	    <div class="nav_list" id="leftnav">
			<div class="fast">
				<a target="_blank" href="${ctx }/index" id="qthome" title="网站首页">网站首页</a>
			</div>
                        <ul  id="ul_1">
										<li ><a href="classSystem.jsp" id="nav_1_2" target="main" class="on" title="系统信息" hidefocus="true">课程体系</a></li>
			       			</ul>
                        <ul style="display:none;" id="ul_10">
										<li ><a href="${ctx }/combobox" id="nav_10_58" target="main"  title="内容管理" hidefocus="true">内容管理</a></li>  <!-- 上传文件的页面，需要改 -->
			       					 
			       					<li ><a href="recycle.html" id="nav_10_59" target="main"  title="内容回收站" hidefocus="true">内容回收站</a></li>
			       			</ul>
                        <ul style="display:none;" id="ul_37">
									 
			       					<li ><a href="${ctx }/research" id="nav_37_13" target="main"  title="友情链接" hidefocus="true">资源库高级检索</a></li>
			       					<li ><a href="${ctx }/myresourceresearch" id="nav_37_63" target="main"  title="站内广告" hidefocus="true">我的资源检索</a></li>
			       					 
			       			</ul>
                        <ul style="display:none;" id="ul_12">
										<li ><a href="share.jsp" id="nav_12_54" target="main"  title="我的应用" hidefocus="true">资源库动态</a></li>
			       					<li ><a href="myshare.jsp" id="nav_12_79" target="main"  title="应用市场" hidefocus="true">我的上传动态</a></li>
			       			</ul>
                        <ul style="display:none;" id="ul_20">
									<li ><a href="usercenter.jsp" id="nav_20_9" target="main"  title="栏目管理" hidefocus="true">个人资料</a></li>
			       					<li ><a href="theme.jsp" id="nav_20_21" target="main"  title="界面风格" hidefocus="true">我的小组</a></li>
			       					<li ><a href="collect.jsp" id="nav_20_48" target="main"  title="水印缩图" hidefocus="true">我的收藏</a></li>
			       					<li ><a href="downloadlog.jsp" id="nav_20_47" target="main"  title="网站安全" hidefocus="true">下载记录</a></li>
			       					<li ><a href="searchlog.jsp" id="nav_20_5" target="main"  title="管理员管理" hidefocus="true">浏览记录</a></li>
			       					<li ><a href="expand_backup.html" id="nav_20_35" target="main"  title="数据备份" hidefocus="true">数据备份</a></li>
			       			</ul>
	    </div>
		<div class="claer"></div>
	
		<div class="left_footer"><div class="left_footer_box"><a href="http://www.phpci.com" target="_blank">我要提建议</a></div></div>
		
		</div>
	</div>
    <div class="floatr" id="metright">
        <div class="iframe">
		    <div class="min"><iframe frameborder="0" id="main" name="main" src="classSystem.jsp" scrolling="no"></iframe></div>
		</div>
    </div>
	<div class="clear"></div>
	</div>
</div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 3.0590 seconds </div>
<script src="${ctx }/statics/base/js/metinfo.js" type="text/javascript"></script>
</body>
</html>
