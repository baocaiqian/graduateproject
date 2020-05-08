﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>文件详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="statics/base/css/metinfo.css?5202" />
    <link rel="stylesheet" type="text/css" href="statics/base/css/newstyle.css" />
    <script type="text/javascript">var basepath = 'statics/base/images';</script>
    <script type="text/javascript" src="${ctx}/statics/base/js/metvar.js"></script>
    <script type="text/javascript" src="${ctx}statics/base/js/jQuery1.7.2.js"></script>
    <script type="text/javascript" src="${ctx}statics/base/js/iframes.js"></script>
    <script type="text/javascript" src="${ctx}statics/base/js/cookie.js"></script>
    <script type="text/javascript">
        /*ajax执行*/
        var lang = 'cn';
        var metimgurl = 'statics/base/images/';
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

    <div class="v52fmbx_tbmax">
        <div class="v52fmbx_tbbox">

            <div class="clear"></div>

            <table cellpadding="2" cellspacing="1" class="table">
                <tr>
                    <td colspan="8" class="centle" style=" height:20px; line-height:30px; font-weight:normal; padding-left:10px;">
                        <div style="float:left;">
                            <a href="${ctx }/combobox">+添加</a>
                            <span style="font-weight:normal; color:#999; padding-left:10px;">排序数值越大越靠前</span>
                        </div>
                        <div class="formright">
                            <!-- 文件搜索 -->
                            <form method="post" name="search" action="${ctx }/fileserarch" target="_self">
                                <input type="hidden" name="courseid" value="${courseid }"></input> <!-- 将课程参数再次传入 -->
                                <input type="hidden" name="filetype" value="${filetype }"></input>
                                <input name="keyword" type="text" class="text100" placeholder="请输入搜索词" value="" />
                                <input type="submit" name="searchsubmit" value="搜索" class="bnt_pinyin" />
                            </form>
                        </div>
                    </td>
                </tr>
                <tr id="list-top">
                    <td width="30" class="list">选择</td>
                    <td width="250" class="list list_left">文件名</td>
                    <td width="30" class="list">类型</td>
                    <td width="30" class="list">大小</td>
                    <td width="30" class="list">分享</td>
                    <td width="80" class="list">更新时间</td>
                    <td width="70" style="padding:0px; text-align:center;" class="list">分享小组</td>
                    <td width="70" class="list" style="padding:0px; text-align:center;">操作</td>
                </tr>
                
                <c:forEach items="${resourcelist }" var="rst">
                <tr class="mouse click">
                    <td class="list-text">
                        <input name='id[]' type='checkbox' id="id" value='30' />
                        <input name="data[id][]" type="hidden" value="30" />
                    </td>
               <td class="list-text alignleft">&nbsp;&nbsp;<a href="show-30" title='预览：测试' target="_blank">${rst.name }</a></td>
                    <td class="list-text"><a href="index.php/admin/news/doset?act=isnice&id=30&&page=1">${rst.type }</a></td>
                    <td class="list-text"><a href="index.php/admin/news/doset?act=istop&id=30&&page=1">${rst.size }KB</a></td>
                    <td class="list-text"><a href="index.php/admin/news/doset?act=nostatus&id=30&&page=1"><img src="statics/base/images/ok_1.gif" /></a></td>
                    <td class="list-text color999">${rst.time }</td>
                    <td class="list-text color999"><a href="#">软件学院组</a></td>
                    <td class="list-text">
                        <a href="http://view.officeapps.live.com/op/view.aspx?src=${rst.path }">浏览</a>&nbsp;&nbsp;
                        <a href="${ctx }/filedownload?filepath=${rst.path }&filename=${rst.name }&resourceid=${rst.id }" rel="external nofollow">下载</a>&nbsp;&nbsp;
                        <a href="javascript:;" onclick="{if(confirm('确定删除吗?')){window.location='${ctx }/filedeleteController?resourcesid=${rst.id }&resourcespath=${rst.path }&courseid=${courseid }&filetype=${filetype }';return true;}return false;}">删除</a>
                    </td>                  
                </tr>
                 </c:forEach>

                <tr>
                    <td class="all"><input name="chkAll" type="checkbox" id="chkAll" onclick=CheckAll(this.form) value="checkbox" /></td>
                    <td class="all-submit" colspan="7" style="padding:5px;">

                        <input type='submit' value='删除' class="submit li-submit" onclick="{if(confirm('确定删除吗?')){document.myform.action='index.php/admin/news/delsome?&page=1';return true;}return false;}" />


                        <div class="li-submit">
                            <select name="cid" id="is_move">
                                <option value="">移动至...</option>
                                <option value="45">艺术品展示</option>
                                <option value="55">企业形象网站</option>
                                <option value="74">品牌网站设计</option>
                                <option value="96">互动专题设计</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="8" class="page_list">
                        <form method='post' action='index.php/admin/news/index?&page=1'>
                            <style>
                                .digg4 a {
                                    border: 1px solid #ccdbe4;
                                    padding: 2px 8px 2px 8px;
                                    background: #fff;
                                    background-position: 50%;
                                    margin: 2px;
                                    color: #666;
                                    text-decoration: none;
                                }

                                    .digg4 a:hover {
                                        border: 1px solid #999;
                                        color: #fff;
                                        background-color: #999;
                                    }

                                    .digg4 a:active {
                                        border: 1px solid #000099;
                                        color: #000000;
                                    }

                                .digg4 span.current {
                                    padding: 2px 8px 2px 8px;
                                    margin: 2px;
                                    text-decoration: none;
                                }

                                .digg4 span.disabled {
                                    border: 1px solid #ccc;
                                    background: #fff;
                                    padding: 1px 8px 1px 8px;
                                    margin: 2px;
                                    color: #999;
                                }
                            </style>
                            <div class='digg4'>
                                <span class="disabled" style="font-family: Tahoma, Verdana;"><b>«</b></span><span class="disabled" style="font-family: Tahoma, Verdana;">‹</span><span class="current">1</span><span class="disabled" style="font-family: Tahoma, Verdana;">›</span><span class="disabled" style="font-family: Tahoma, Verdana;"><b>»</b></span>  共${filecount }条 		 转到
                                <input name='page' class='page_input' value="1" />页
                                <input type='submit' value=' go ' class="bnt_pinyin" />
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="footer">Powered by <b><a href="http://www.phpci.com" target="_blank">phpci 6.0.0 </a></b> &copy;2008-2015 &nbsp;<a href="http://www.phpci.com" target="_blank">phpci Inc.</a> in 0.2122 seconds </div>
    <script type="text/javascript">
        $(function () {
            $("#is_move").change(function () {
                var cid = $('#is_move').val();
                var arrchk = $("input[id='id']:checked");
                var idarr = "";
                $(arrchk).each(function () {
                    if (idarr == "") {
                        idarr += this.value
                    } else {
                        idarr += "," + this.value
                    }
                });
                if (idarr == '') {
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