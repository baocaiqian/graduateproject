<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>基于Bootstrup 3可预览的HTML5文件上传插件</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="statics/upload/css/default.css">
<link href="statics/upload/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />	
<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
<![endif]-->

<style type="text/css">
.div1{
	width: 150px;
	height: 30px;
	line-height: 30px;
}
</style>


</head>
<body>

	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>文件上传 </h1>
		</header>
		<div class="container kv-main">
            <form method="post" enctype="multipart/form-data" >
            <!-- 如果你这用的是表单的话，你可以在创建一个这样的实体，应该是可以对应上的，不用建表，建一个这样的类就行，select的name的值要跟类的字段名字一样 -->
                <hr>
                <!-- 下拉框 -->
                <div style="display: inline;">
                
                课程体系：<select>
              <c:forEach items="${allcs }" var="acs">
                  <option value="${acs }">${acs }</option>
                  ${acs }
              </c:forEach> 
               
              </select>
                
                </div>
                 <div style="display: inline;">
                
                课程名称：<select>
              <c:forEach items="${allcource }" var="acs">
                  <option value="${acs }">${acs }</option>
                  ${acs }
              </c:forEach> 
               
              </select>
               <div style="display: inline;">
                
                是否公开：<select>
               <option value="不公开">不公开</option>
                <option value="公开">公开</option>
                <!-- 这个在插入数据库的时候用一个判断语句，因为数据库里存储的是整数类型，1表示公开，0表示不公开，不能直接改value的值，因为获取下来的value都是string类型 -->
              </select>
                
                </div>
                
                </div>
                <hr>
            
            
                <!-- 文件提交 -->
                <div class="form-group">
                    <input id="file-5" class="file" type="file" multiple data-preview-file-type="any" name="files" data-upload-url="${ctx }/upload/uploadingfile" data-preview-file-icon="">  <!-- 输入数据上传的url -->
                </div>
            </form>
        </div>	
	</div>
	
	<script src="statics/upload/js/jquery.min.js"></script>
    <script src="statics/upload/js/fileinput.js" type="text/javascript"></script>
    <script src="statics/upload/js/fileinput_locale_zh.js" type="text/javascript"></script>
    <script src="statics/upload/js/bootstrap.min.js" type="text/javascript"></script>
    
      
    <!-- 其他几种方式文件上传样式 -->
    <script>
	    $("#file-0").fileinput({
	        'allowedFileExtensions' : ['jpg', 'png','gif'],
	    });
	    $("#file-1").fileinput({
	        uploadUrl: '#', // you must set a valid URL here else you will get an error
	        allowedFileExtensions : ['jpg', 'png','gif'],
	        overwriteInitial: false,
	        maxFileSize: 1000,
	        maxFilesNum: 10,
	        //allowedFileTypes: ['image', 'video', 'flash'],
	        slugCallback: function(filename) {
	            return filename.replace('(', '_').replace(']', '_');
	        }
		});
	    /*
	    $(".file").on('fileselect', function(event, n, l) {
	        alert('File Selected. Name: ' + l + ', Num: ' + n);
	    });
	    */
		$("#file-3").fileinput({
			showUpload: false,
			showCaption: false,
			browseClass: "btn btn-primary btn-lg",
			fileType: "any",
	        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
		});
		$("#file-4").fileinput({
			uploadExtraData: {kvId: '10'}
		});
	    $(".btn-warning").on('click', function() {
	        if ($('#file-4').attr('disabled')) {
	            $('#file-4').fileinput('enable');
	        } else {
	            $('#file-4').fileinput('disable');
	        }
	    });    
	    $(".btn-info").on('click', function() {
	        $('#file-4').fileinput('refresh', {previewClass:'bg-info'});
	    });
	    /*
	    $('#file-4').on('fileselectnone', function() {
	        alert('Huh! You selected no files.');
	    });
	    $('#file-4').on('filebrowse', function() {
	        alert('File browse clicked for #file-4');
	    });
	    */
	    $(document).ready(function() {
	        $("#test-upload").fileinput({
	            'showPreview' : false,
	            'allowedFileExtensions' : ['jpg', 'png','gif'],
	            'elErrorContainer': '#errorBlock'
	        });
	        /*
	        $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
	            alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
	        });
	        */
	    });
		</script>
		
		
		
		
		
</body>
</html>