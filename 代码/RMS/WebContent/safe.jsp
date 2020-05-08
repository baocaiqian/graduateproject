<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>网站安全</title>
<!-- 添加新人的弹框 -->
<style type="text/css">
    
        #contes { /* 弹框的页面*/
            width: 500px; /*宽度*/
            height: 500px; /*高度*/
            background:#97CBFF; /*背景色*/
            display: none; /*隐藏*/
            z-index: 2; /*覆盖*/
            position: absolute;
            top: 100px;
            left:65%; /* 定位*/
        }
        input{
            margin-bottom: 10px;
        }

    </style>
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
	var editor = K.create('textarea[name="txxxx"]', {
		allowFileManager : true
	});
	var editor = K.editor({
		allowFileManager : true
	});
	K('#image').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
				imageUrl : K('#jpeg_photo').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#jpeg_photo').val(url);
						editor.hideDialog();
					}
			});
		});
	});
	
	var colorpicker;
	K('#colorpicker').bind('click', function(e) {
		e.stopPropagation();
		if (colorpicker) {
			colorpicker.remove();
			colorpicker = null;
			return;
		}
		var colorpickerPos = K('#colorpicker').pos();
		colorpicker = K.colorpicker({
			x : colorpickerPos.x,
			y : colorpickerPos.y + K('#colorpicker').height(),
			z : 19811214,
			selectedColor : 'default',
			noColor : '无颜色',
			click : function(color) {
				    K('#color').val(color);
				    $("#fontZoom").css("color", color); 
					colorpicker.remove();
					colorpicker = null;
				}
			});
		});
		K(document).click(function() {
			if (colorpicker) {
				colorpicker.remove();
				colorpicker = null;
			}
	});
});


</script>
<script type="text/javascript">
/*ajax执行*/
var lang = 'cn';
var metimgurl='statics/base/images/';
var depth='../';
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

	<div class="position">简体中文 > 网站设置 > <a href="safe.html">网站安全</a></div>


	</div>
	<div class="clear"></div>

	</div>


 <div  style="width: 80%;height: 100px;border:1px solid #E0E0E0;margin-left: 10%">
        	   <div style="width:70px;height: 70px;margin-top: 15px;margin-left: 15px;float: left;">
            	  <div id="div1"><img style="width: 70px;height: 70px"   src="statics/base/images/people.jpg" id="avatar" tapmode onclick="getPicture()"  style="cursor: hand"/></div>
     <input type="file" name="user.photo" onchange="setImage(this,div1,avatar);" id="photo" style="display: none"/>
              </div>
        	<div style="float: left;margin-left: 20px;margin-top:35px"><span style="color: grey" id="1" ondblclick="edit(this)">点击修改您的昵称</span></div>
        	<p style="float: left;margin-left: 20%"><font size="7" >群  &nbsp  设  &nbsp   置</font></p>
        </div>







<!--  弹框的div -->
<div id="contes" style="width: 300px;height: 150px;">
    <div style="width:500px;height:40px;">
              <h1 style="margin-left:10px;">  添加用户</h1>               
        <hr>
        <form   action="${ctx }/addGroupputongmember" method="post"   style=" margin-left: 100px;">
            用户邮箱<br />
    <input type="text" value="" name="member" ><br>
    <br></br>
            <input type="submit" value="确认添加">
        </form>
    </div>
</div>







<div class="v52fmbx_tbmax">
<div class="v52fmbx_tbbox">
<table cellpadding="2" cellspacing="1" class="table">
	<form name="myform" method="post" id="myform">
	      <tr> 
			 <td class="all-submit" colspan="12" style="padding:5px 10px;">
			 

			 
			 <div class="submit li-submit" style="width: 30px;height: 30px;margin-left:70%">
			    <a     href="javascript:void(0)" onclick="add()"><img style="width: 30px;height: 30px"
			       src="statics/base/images/jia.jpg"></img></a>
			 </div>
              
			
			  
			  <div class="li-submit">
			  </div>
			  <div class="li-submit">
			 </div>

			  </td>
          </tr>
	
              <tr>
			    
				<td width="20" class="list" style="padding:0px; text-align:center;">名称</td>
                <td width="50" class="list" style="padding:0px; text-align:center;">头像</td>
                <td width="50"class="list" >角色</td>
 
                <td width="50" class="list" style="padding:0px; text-align:center;">邮箱</td>
				<td width="20" class="list" style="padding:0px; text-align:center;">选择</td>
              </tr>


<c:forEach  items="${lgoupmember}" var="gm">




  <tr class="mouse click">
                
                <td class="list-text">${gm.member.name}</td>
				<td class="list-text"><img  class="small" style="width: 30px;height: 30px;"   src="${gm.member.icon}" /></td>
				<td class="list-text">${gm.role}</td>
				<td class="list-text">${gm.member.email}</td>  
                <td class="list-text"><a href="addGadminmember?memrid=${gm.member.id}">设为管理</a></td>     	
			
    </tr>






<!--	<div class="cart-header">
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						 <img src="${carts.cartcake.bigimg}" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
						<ul class="qty">
							<li><p>Min. order value:</p></li>
							<li><p>FREE delivery</p></li>
						</ul>
						<div class="delivery">
						    <h3><p>price: ${carts.cartcake.price}  ${carts.cartcake.id}</p><br></h3>
							<h3><p>count:${carts.count}</p></h3><br>
							<a href="cartconaddtroller?id=${carts.cartcake.id}"><font   size="7">+</font></a>&nbsp&nbsp&nbsp
							 <a href="cartconreducetroller?id=${carts.cartcake.id}"><font   size="7">-</font></a>
							<span>Delivered in 1-1:30 hours</span>
							<div class="clearfix"></div>
						</div>	
					</div>
					<div class="clearfix"></div>
				</div>
			</div>  -->







		
			
		</c:forEach>











            
               
              <!--  
                <tr class="mouse click">
                <td class="list-text"><input name="id[]" type='checkbox' id="id" value="3" /></td>
                <td class="list-text">lalalla</td>
				<td class="list-text"><img  class="small" style="width: 30px;height: 30px;"   src="statics/base/images/people.jpg" /></td>
				<td class="list-text">管理员</td>
				<td class="list-text">3726374897@qq.com</td>
                <td class="list-text">2014-10-21 17:22:19</td>      	
			
              </tr>
                 <tr class="mouse click">
                <td class="list-text"><input name="id[]" type='checkbox' id="id" value="3" /></td>
                <td class="list-text">lalalla</td>
				<td class="list-text"><img  class="small" style="width: 30px;height: 30px;"   src="statics/base/images/people.jpg" /></td>
				<td class="list-text">管理员</td>
				<td class="list-text">3726374897@qq.com</td>
                <td class="list-text">2014-10-21 17:22:19</td>      	
			
              </tr>
                 <tr class="mouse click">
                <td class="list-text"><input name="id[]" type='checkbox' id="id" value="3" /></td>
                <td class="list-text">lalalla</td>
				<td class="list-text"><img  class="small" style="width: 30px;height: 30px;"   src="statics/base/images/people.jpg" /></td>
				<td class="list-text">管理员</td>
				<td class="list-text">3726374897@qq.com</td>
                <td class="list-text">2014-10-21 17:22:19</td>      	
			
              </tr>
              
              
              
              
              
              
              
              
                <tr class="mouse click">
                <td class="list-text"><input name="id[]" type='checkbox' id="id" value="3" /></td>
                <td class="list-text">lalalla</td>
				<td class="list-text"><img  class="small" style="width: 30px;height: 30px;"   src="statics/base/images/people.jpg" /></td>
				<td class="list-text">管理员</td>
				<td class="list-text">3726374897@qq.com</td>
                <td class="list-text">2014-10-21 17:22:19</td>      	
			
              </tr>  -->
             
              
              <!--     <tr class="mouse click">
                <td class="list-text"><input name="id[]" type='checkbox' id="id" value="3" /></td>
                <td class="list-text">lalalla</td>
				<td class="list-text"><img  class="small" style="width: 30px;height: 30px;"   src="statics/base/images/people.jpg" /></td>
				<td class="list-text">管理员</td>
				<td class="list-text">3726374897@qq.com</td>
                <td class="list-text">2014-10-21 17:22:19</td>      	
			
              </tr> -->
             
	  
	 
 
  
		  </form>
	
</table>
</div>
</div>







<div class="clear"></div>

<div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.0761 seconds </div>
<script type="text/javascript">
	metuploadify('#file_upload','upimage','met_wate_img');
	metuploadify('#file_upload1','upimage','met_wate_bigimg');
	
	function do_color(vobject,vvar,valor){ 
	$(vobject).css('color',vvar);
	$(valor).val(vvar);
	}
	
	checkthis('met_wate_class');


</script>
<!-- 群名修改 -->
	<script type="text/javascript">

function edit(element){

　var oldhtml = element.innerHTML;//获得元素之前的内容
　var newobj = document.createElement('input');//创建一个input元素
　newobj.type = 'text';//为newobj元素添加类型
  newobj.value=oldhtml;
　element.innerHTML = '';　　 //设置元素内容为空
　element.appendChild(newobj);//添加子元素
　newobj.focus();//获得焦点
  //设置newobj失去焦点的事件
　newobj.onblur = function(){
   //下面应该判断是否做了修改并使用ajax代码请求服务端将id与修改后的数据提交
   // alert(element.id);
  
      //当触发时判断newobj的值是否为空，为空则不修改，并返回oldhtml
      element.innerHTML = this.value ? this.value : oldhtml;
   }
}
</script>

<!-- 图片点击修改 -->
<script type="text/javascript">

 function getPicture(){
    $("#photo").click();
    }

function setImage(docObj, localImagId, imgObjPreview) {
    var f = $(docObj).val();
    f = f.toLowerCase();
    var strRegex = ".bmp|jpg|jpeg$";
    var re=new RegExp(strRegex);
    if (re.test(f.toLowerCase())){
         //return true;
    }
    else{
        alert("请选择正确格式的图片");
         file = $("#photo");
         file.after(file.clone());
         file.remove();
        return false;
    }
    if (docObj.files && docObj.files[0]) {
        //火狐下，直接设img属性
        //imgObjPreview.style.display = 'block';
        //imgObjPreview.style.width = '140px';
        //imgObjPreview.style.height = '187px';
        //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
        imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);

    } else {
        //IE下，使用滤镜
        docObj.select();
        var imgSrc = document.selection.createRange().text;
        //必须设置初始大小
        //localImagId.style.width = "140px";
        //localImagId.style.height = "187px";
        //图片异常的捕捉，防止用户修改后缀来伪造图片
        try {
            localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
        } catch(e) {
            alert("您上传的图片格式不正确，请重新选择!");
            return false;
        }
        imgObjPreview.style.display = 'none';
        document.selection.empty();
    }
    return true;
}

</script>
<!-- 添加新成员 -->
<script>
    function add() {
        document.getElementById('contes').style.display = 'block';
    }
</script>
</body>
</html>
