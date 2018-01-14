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
	<div class="easyui-window" title="Layout Window" icon="icon-help" style="width:500px;height:250px;padding:5px;background: #fafafa;">
        <div class="easyui-layout" fit="true">
            <div region="west" split="true" style="width:120px;">
                <ul class="easyui-tree">
                    <li>
                        <span>Library</span>
                        <ul>
                            <li><span>easyui</span></li>
                            <li><span>Music</span></li>
                            <li><span>Picture</span></li>
                            <li><span>Database</span></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div region="center" border="false" border="false">
                <div class="easyui-tabs" fit="true">
                    <div title="Home" style="padding:10px;">
                        jQuery easyui framework help you build your web page easily.
                    </div>
                    <div title="Contacts">
                        No contact data.
                    </div>
                </div>
            </div>
            <div region="south" border="false" style="text-align:right;height:30px;line-height:30px;">
                <a class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)">Ok</a>
                <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">Cancel</a>
            </div>
        </div>
    </div>
</body>
</html>