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
	 <div style="padding:5px;background:#fafafa;width:500px;border:1px solid #ccc">
        <a  class="easyui-linkbutton" iconCls="icon-cancel">Cancel</a>
        <a  class="easyui-linkbutton" iconCls="icon-reload">Refresh</a>
        <a class="easyui-linkbutton" iconCls="icon-search">Query</a>
        <a  class="easyui-linkbutton">text button</a>
        <a  class="easyui-linkbutton" iconCls="icon-print">Print</a>
    </div>
     
    <div style="padding:5px;background:#fafafa;width:500px;border:1px solid #ccc">
        <a id="btn" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-cancel">Cancel</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-reload">Refresh</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-search">Query</a>
        <a href="#" class="easyui-linkbutton" plain="true">text button</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">Print</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-help"></a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-save"></a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-back"></a>
    </div>
   <script>
   $(function(){
		$("#btn").linkbutton('disable'); 
   });
   
   </script>
</body>
</html>