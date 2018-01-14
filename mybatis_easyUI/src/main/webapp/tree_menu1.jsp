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
<div style="margin-bottom:10px;">
		<a href="javascript:;" onclick="appendnodes()">append nodes</a>
	</div>
	 <ul class="easyui-tree" id="tt" checkbox="true">
        <li>
            <span>Folder</span>
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
        <li><span>File21</span></li>
    </ul>
<script>
	function appendnodes(){
		alert('hello');
		var node = $('#tt').tree('getSelected');
		if (node){
		    var nodes = [{
		        "id":13,
		        "text":"Raspberry"
		    },{
		        "id":14,
		        "text":"Cantaloupe"
		    }];
		    $('#tt').tree('append', {
		        parent:node.target,
		        data:nodes
		    });
		}
	}
</script>
</body>
</html>