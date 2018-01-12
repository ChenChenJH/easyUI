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
	 <div style="background:#fafafa;padding:5px;width:200px;border:1px solid #ccc">
        <a href="#" class="easyui-menubutton" menu="#mm1" iconCls="icon-edit">Edit</a>
        <a href="#" class="easyui-menubutton" menu="#mm2" iconCls="icon-help">Help</a>
    </div>
    <div id="mm1" style="width:150px;">
        <div iconCls="icon-undo">Undo</div>
        <div iconCls="icon-redo">Redo</div>
        <div class="menu-sep"></div>
        <div>Cut</div>
        <div>Copy</div>
        <div>Paste</div>
        <div class="menu-sep"></div>
        <div iconCls="icon-remove">Delete</div>
        <div>Select All</div>
    </div>
    <div id="mm2" style="width:100px;">
        <div>Help</div>
        <div>Update</div>
        <div>About</div>
    </div>
</body>
</html>