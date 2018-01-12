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
<style type="text/css">
.dd-demo {
	width: 60px;
	height: 60px;
	border: 2px solid #d3d3d3;
	position: absolute;
}

.proxy {
	border: 1px dotted #333;
	width: 60px;
	height: 60px;
	text-align: center;
	background: #fafafa;
}

#dd1 {
	background: #E0ECFF;
	left: 20px;
	top: 20px;
}

#dd2 {
	background: #8DB2E3;
	left: 100px;
	top: 20px;
}

#dd3 {
	background: #FBEC88;
	left: 180px;
	top: 20px;
}
</style>
</head>
<body class="easyui-layout">
	<div id="dd1" class="dd-demo"></div>
	<div id="dd2" class="dd-demo"></div>
	<div id="dd3" class="dd-demo"></div>
	<script type="text/javascript">
		$(function() {
			$('#dd1').draggable();
			$('#dd2').draggable({
				proxy : 'clone'
			});
			$('#dd3').draggable({
				proxy : function(source) {
					var p = $('<div class="proxy">proxy</div>');
					p.appendTo('body');
					return p;
				}
			});
		});
	</script>
</body>
</html>