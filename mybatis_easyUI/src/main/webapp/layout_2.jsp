<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="keywords" content="jquery,ui,easy,easyui,web">
<meta name="description"
	content="easyui help you build your web page easily!">
<title>RSS Reader Demo - jQuery EasyUI</title>
<link rel="stylesheet" type="text/css"
	href="css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/demo.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

</head>
<body>
	 <div class="easyui-accordion" style="width:300px;height:200px;">
        <div title="About Accordion" iconCls="icon-ok" style="overflow:auto;padding:10px;">
            <h3 style="color:#0099FF;">Accordion for jQuery</h3>
            <p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily.</p>
        </div>
        <div title="About easyui" iconCls="icon-reload" selected="true" style="padding:10px;">
            easyui help you build your web page easily
        </div>
        <div title="Tree Menu">
            <ul id="tt1" class="easyui-tree">
                <li>
                    <span>Folder1</span>
                    <ul>
                        <li>
                            <span>Sub Folder 1</span>
                            <ul>
                                <li><span>File 11</span></li>
                                <li><span>File 12</span></li>
                                <li><span>File 13</span></li>
                            </ul>
                        </li>
                        <li><span>File 2</span></li>
                        <li><span>File 3</span></li>
                    </ul>
                </li>
                <li><span>File2</span></li>
            </ul>
        </div>
    </div>
    
    <script>
    function showcontent(language){
        $('#content').html('Introduction to ' + language + ' language');
    }
    </script>
</body>
</html>