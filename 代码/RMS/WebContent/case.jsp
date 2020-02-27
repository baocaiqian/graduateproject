<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>案例管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="statics/base/css/classstyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="statics/base/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css?5202" />
<link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
<script type="text/javascript" src="statics/base/js/jquery.min.js"></script>
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

	<div class="position">简体中文 > 内容管理 > <a href="content.html">内容管理</a> > <a href='case.html'>案例管理</a></div>


	<div class="return"><a href="javascript:;" onClick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>

	</div>
	<div class="clear"></div>
<div class="bg-white">
		<div style="width:88.5%;height:40px;margin-left:5%;margin-top:20px;border-left:#1e71b1 solid 3px;margin-bottom: 20px;padding-bottom:5px;">
			<font size="5">&nbsp;我的课程体系</font>
			<a class="buy-now" href="#">
			<img src="statics/base/images/add.png" style="margin-bottom: -4.5px;"/>&nbsp;&nbsp;添加课程体系
			</a>
		</div>
	<div class="developer-toolbag-block">
		<div class="AGrid-row  tool-package">
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">项目管理</h2>

					<div class="layer-text">
						<p class="dev-text">
							为敏捷开发团队提供简单高效的开发协作服务，包含多项目管理、敏捷迭代、需求管理、缺陷跟踪、文档管理、看板、报表统计分析等功能。
						</p>
						<div class="layer-btn">
							<a href="class.jsp">
								<p>打开体系</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">代码托管</h2>

					<div class="layer-text">
						<p class="dev-text">
							为软件开发者提供基于Git的在线代码托管服务，包括代码克隆/下载/提交/推送/比较/合并/分支等功能。
						</p>
						<div class="layer-btn">
							<a href="class.jsp">
								<p>打开体系</p>
							</a>
						</div>
					</div>

				</div>
			</div>
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">流水线</h2>

					<div class="layer-text">
						<p class="dev-text">
							提供可视化、可定制的自动交付流水线，帮助企业缩短交付周期，提升交付效率。
						</p>
						<div class="layer-btn">
							<a href="class.jsp">
								<p>打开体系</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">代码检查</h2>

					<div class="layer-text">
						<p class="dev-text">
							提供代码质量管理云服务，可在线进行多种语言的代码静态检查、代码安全检查、质量评分、代码缺陷改进趋势分析，辅助您管控代码质量。
						</p>
						<div class="layer-btn">
							<a href="class.jsp">
								<p>打开体系</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">编译构建</h2>

					<div class="layer-text">
						<p class="dev-text">
							提供配置简单的混合语言构建平台，实现编译构建云端化，自定制可视化的自动化交付流水线，支撑企业实现持续交付，提升交付效率。
						</p>
						<div class="layer-btn">
							<a href="class.jsp">
								<p>打开体系</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 ">
				<div class="tile center-layer">
					<div class="layer-figure">
						<img src="statics/base/images/classSystem.png"/>
					</div>
					<h2 class="dev-list">测试管理</h2>

					<div class="layer-text">
						<p class="dev-text">
							提供一体化测试解决方案，覆盖测试需求、用例管理、测试任务管理、缺陷管理，多维度评估产品质量，帮助您高效管理测试活动，保障产品高质量交付。
						</p>
						<div class="layer-btn">
							<a href="class.jsp">
								<p>打开体系</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.1058 seconds </div>
<div class="clear"></div>
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
		    alert('请选择要移动的文章！');
			return false;
		}
		if (confirm('确定移动吗?')) {
		    document.myform.submit();
		}
	});
});

</script>
</body>
</html>
