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
	<table id="dg" class="easyui-datagrid"
		style="width: 550px; height: 350px" url="good/selectAll"
		toolbar="#toolbar" rownumbers="true" fitColumns="true"
		singleSelect="true" pagination="true">
		<thead>
			<tr>
				<th field="id" width="50">主键id</th>
				<th field="name" width="50">名称</th>
				<th field="num" width="50">销量</th>
				<th field="proTime" width="50">月份</th>
			</tr>
		</thead>
	</table>
    <div id="toolbar">
		<a class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editUser()">alert single</a> 
		<a class="easyui-linkbutton"
		iconCls="icon-edit" plain="true" onclick="mul()">alert multiply</a> 
	</div>
    <script>
    function editUser(){
	    var row = $('#dg').datagrid('getSelected');
	    if (row){
	        alert('Item ID:'+row.id+"\nname:"+row.name);
	    }
    }
    function mul(){
    	 var ids = [];
   	    var rows = $('#dg').datagrid('getSelections');
   	    for(var i=0; i<rows.length; i++){
   	        ids.push(rows[i].name);
   	    }
   	    alert(ids.join('\n'));
    }
    </script>
</body>
</html>