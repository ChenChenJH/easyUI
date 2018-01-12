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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/demo.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery.edatagrid.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
</head>

<body>

	<!-- 显示列表 -->
	<table id="dg" class="easyui-datagrid"
		style="width: 550px; height: 550px" url="good/selectAll"
		toolbar="#toolbar" rownumbers="true" fitColumns="true"
		singleSelect="true" >
		<thead>
			<tr>
				<th field="id" width="50" editor="text">主键 ID</th>
				<th field="name" width="50" editor="{type:'validatebox',options:{required:true}}">名称</th>
				<th field="num" width="50" align="center" editor="{type:'numberbox'}">销量</th>
				<th field="proTime" width="50" align="center" editor="text">月份</th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar">
    <a  class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#dg').edatagrid('addRow')">New</a>
    <a  class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteUser()">Destroy</a>
    <a  class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="saveUser()">Save</a>
    <a  class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">Cancel</a>
</div>

<script type="text/javascript">
$('#dg').edatagrid({
    url: 'good/selectAll',
    saveUrl: 'good/insert',
    updateUrl: 'good/update',
    destroyUrl: 'good/delete'
});

//添加或修改
function saveUser(){
	$('#dg').edatagrid('saveRow');
	$('#dg').datagrid('reload'); 
}
//删除
function deleteUser(){
	$('#dg').edatagrid('destroyRow');
	
}
</script>
</body>
</html>