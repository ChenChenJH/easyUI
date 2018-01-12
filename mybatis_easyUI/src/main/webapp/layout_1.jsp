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
	<div class="easyui-layout" style="width:400px;height:200px;">
        <div region="west" split="true" title="Navigator" style="width:150px;">
            <p style="padding:5px;margin:0;">Select language:</p>
            <ul>
                <li><a href="javascript:;" onclick="showcontent('java')">Java</a></li>
                <li><a href="javascript:;" onclick="showcontent('cshape')">C#</a></li>
                <li><a href="javascript:;" onclick="showcontent('vb')">VB</a></li>
                <li><a href="javascript:;" onclick="showcontent('erlang')">Erlang</a></li>
            </ul>
        </div>
        <div id="content" region="center" title="Language" style="padding:5px;">
        </div>
    </div>
    
    <script>
    function showcontent(language){
        $('#content').html('Introduction to ' + language + ' language');
    }
    </script>
</body>
</html>