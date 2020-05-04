<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/metinfo.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/base/css/newstyle.css" />
<script type="text/javascript">var basepath='${ctx}/statics/base/images';</script>
<script type="text/javascript" src="${ctx}/statics/base/js/metvar.js"></script>
<script type="text/javascript" src="${ctx}/statics/base/js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="${ctx}/statics/base/js/iframes.js"></script>
<script type="text/javascript" src="${ctx}/statics/base/js/cookie.js"></script>
<script type="text/javascript">
/*ajax执行*/
var lang = 'cn';
var metimgurl='../templates/met/images/';
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

<title>网站基本信息设置</title>
<style>
img{ behavior: url(${ctx}/statics/images/iepngfix.htc); }
</style>

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
	<div class="position"><a href="${ctx }/course/getcourse?id=${course.system.systemId}">${course.system.name }</a> <span> > </span> ${course.name }</div>
	<div class="return"></div>
	</div>
	<div class="clear"></div>
	<script type="text/javascript">
	$("html",parent.document).find('.returnover').remove();
	</script>
</div>

<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
<div class="v52fmbx_tbbox">
 
<div class="metv5box">
	<ul class="columnlist">
        
				<li class="contlist">
			<div class="box">
			          <a href='${ctx }/getfiledetail?courseid=${course.courseid}&type=PPT'>
					<img src="${ctx}/statics/base/images/PPT.png" width='64' height='64' />
					<h2>PPT</h2>
				</a>
			</div>
		</li>
        		
        		<li class="contlist">
			<div class="box">
				<a href='${ctx }/resource?courseid=${course.courseid}&type=视频'>
					<img src="${ctx}/statics/base/images/video.png" width='64' height='64' />
					<h2>视频</h2>
				</a>
			</div>
		</li>
			<li class="contlist">
			<div class="box">
				<a href='${ctx }/resource?courseid=${course.courseid}&type=音频'>
					<img src="${ctx}/statics/base/images/yinpin.png" width='64' height='64' />
					<h2>音频</h2>
				</a>
			</div>
		</li>
        		<li class="contlist">
			<div class="box">
				<a href='${ctx }/resource?courseid=${course.courseid}&type=图片'>
					<img src="${ctx}/statics/base/images/photo.png" width='64' height='64' />
					<h2>图片</h2>
				</a>
			</div>
		</li>
		
				<li class="contlist">
			<div class="box">
				<a href='${ctx }/resource?courseid=${course.courseid}&type=文本文档'>
					<img src="${ctx}/statics/base/images/word.png" width='64' height='64' />
					<h2>文本文档</h2>
				</a>
			</div>
		</li>
		
		<li class="contlist">
		<div class="box">
		  <a href='${ctx }/getfiledetail?courseid=${course.courseid}&type=练习demo'>
					<img src="${ctx}/statics/base/images/demo.png" width='64' height='64' />
					<h2>练习demo</h2>
				</a>
			</div>
		</li>
		
		<li class="contlist">
			<div class="box">
				<a href='${ctx }/resource?courseid=${course.courseid}&type=其他'>
					<img src="${ctx}/statics/base/images/soft.png" width='64' height='64' />
					<h2>其他</h2>
				</a>
			</div>
		</li>
</ul>
</div>
<div class="clear"></div>
</div>
</div>
<script type="text/javascript">
$('.contmorehver').hover(
	function () {
		$(this).find('div.contmore').show();
	},
	function () {
		$(this).find('div.contmore').hide();
	}
);
function metHeight(group,type) {
	tallest = 0;
	group.each(function() {
		thisHeight = $(this).height();
		if(thisHeight > tallest) {
			tallest = thisHeight;
		}
	});
	if(type==1){
		group.each(function(){
			if($(this).outerHeight(true)<tallest){
				var ht = (tallest - $(this).outerHeight(true))/2;
				$(this).css('padding-top',ht+'px');
				$(this).css('padding-bottom',ht+'px');
			}
		});
	}else{
		group.height(tallest);
		group.each(function(){
			var h = tallest - $(this).find('.img').outerHeight(true);
			var x = h - $(this).find('.title').outerHeight(true);
			if(x>0){
				var ht = (x/2)+3;
				$(this).find('.title').css('padding-top',ht+'px');
				$(this).find('.title').css('padding-bottom',ht+'px');
			}
		});
	}
}
metHeight($('.box'));
metHeight($('.contlist .text'),1);
</script>
<div class="clear"></div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.0943 seconds </div>
</body>
</html>