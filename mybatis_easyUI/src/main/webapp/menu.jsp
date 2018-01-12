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
	  <div>
		Click <a href="javascript:;" onclick="showmenu()">here</a> to show the menu.
	</div>
	
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div onclick="javascript:alert('new')">New</div>
		<div>
			<span>Open</span>
			<div style="width:150px;">
				<div><b>Word</b></div>
				<div>Excel</div>
				<div>PowerPoint</div>
			</div>
		</div>
		<div iconCls="icon-save">Save</div>
		<div class="menu-sep"></div>
		<div>Exit</div>
	</div>
   <script>
  
	function showmenu(){
		$('#mm').menu('show', {
			left: 200,
			top: 100
		});
	}
   </script>
</body>
</html>