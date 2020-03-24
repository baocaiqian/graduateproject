<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>文章管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/metinfo.css?5202" />
    <link rel="stylesheet" type="text/css" href="${ctx }/statics/base/css/newstyle.css" />
    <script type="text/javascript">var basepath = '${ctx }/statics/base/images';</script>
    <script type="text/javascript" src="${ctx }/statics/base/js/metvar.js"></script>
    <script type="text/javascript" src="${ctx }/statics/base/js/jQuery1.7.2.js"></script>
    <script type="text/javascript" src="${ctx }/statics/base/js/iframes.js"></script>
    <script type="text/javascript" src="${ctx }/statics/base/js/cookie.js"></script>
    <script type="text/javascript">
        /*ajax执行*/
        var lang = 'cn';
        var metimgurl = '${ctx }/statics/base/images/';
        var depth = '';
        $(document).ready(function () {
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
        function metreturn(url) {
            if (url) {
                location.href = url;
            } else if ($.browser.msie) {
                history.go(-1);
            } else {
                history.go(-1);
            }
        }
    </script>
    <div class="metinfotop">
        <div class="position">简体中文 > 内容管理 > <a href="content.html">内容管理</a> > <a href='news.html'>文章管理 </a></div>
        <div class="return"><a href="javascript:;" onclick="location.href='javascript:history.go(-1)'">&lt;&lt;返回</a></div>
    </div>
    <div class="clear"></div>
    <h1 style="font-size:40px;text-align: center;">${error }</h1>
    <div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.2122 seconds </div>
</body>
</html>