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
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
</head>

<body>
	<!-- 显示列表 -->
	<table id="dg" class="easyui-datagrid"
		style="width: 550px; height: 390px" url="good/selectAll"
		toolbar="#toolbar" rownumbers="true" fitColumns="true"  
		 pagination="true"  title="Load Data" iconCls="icon-tip">
		<thead>
			<tr>
			  	<th field="ck" checkbox="true">全选</th>
				<th field="id" width="50">主键id</th>
				<th field="name" width="50">名称</th>
				<th field="num" width="50">销量</th>
				<th field="proTime" width="50" >月份</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="newUser()">New User</a> 
		<a class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a> 
		<a class="easyui-linkbutton" iconCls="icon-remove" plain="true"
			onclick="destroyUser()">Remove User</a><br/>
		 <span>名称:</span>
        <input id="productid" style="line-height:20px;border:1px solid #ccc">
        <a   class="easyui-linkbutton"  onclick="doSearch()">Search</a>
	</div>

	<!-- 新增页面 -->
	<div id="dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		<br />
		<form id="fm" method="post">
			<div class="fitem">
				<label>名 称:</label>&nbsp;&nbsp;&nbsp; <input name="name"
					class="easyui-validatebox" required="true">
			</div>
			<br />
			<div class="fitem">
				<label>销 量:</label>&nbsp;&nbsp;&nbsp; <input name="num"
					class="easyui-validatebox" required="true">
			</div>
			<br />
			<div class="fitem">
				<label>月 份:</label>&nbsp;&nbsp;&nbsp; <input name="proTime">
			</div>
			<br />
			<!--   <div class="fitem">
            <label>Email:</label>
            <input name="email" class="easyui-validatebox" validType="email">
        </div> -->
		</form>
	</div>
	<div id="dlg-buttons">
		<a class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#dlg').dialog('close')">Cancel</a><br/>
	</div>

	<script>
	//设置行背景颜色
	 $('#dg').datagrid({
        rowStyler:function(index,row){
            if (row.num>=40){
                return 'background-color:pink;color:blue;font-weight:bold;';
            }
        }
    });
		var url = "";
		//打开添加窗口
		function newUser() {
			$('#dlg').dialog('open').dialog('setTitle', 'New Good');
			$('#fm').form('clear');
			url = "good/insert";
		}

		//打开修改窗口
		function editUser() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$('#dlg').dialog('open').dialog('setTitle', 'Edit User');
				$('#fm').form('load', row);
				url = 'good/update?id=' + row.id;
			}
		}

		//添加
		function saveUser() {
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					if (result == 'true') {
						$.messager.alert("提示", "操作成功！");
						$('#dlg').dialog('close'); // close the dialog
						$('#dg').datagrid('reload'); // reload the user data
					} else {
						$.messager.show({
							title : 'Error',
							msg : result
						});
					}
				}
			});
		}

		//删除
		function destroyUser() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('Confirm',
						'确定删除吗?',
						function(r) {
							if (r) {
								$.post('good/delete', {
									id : row.id
								}, function(result) {
									if (result == true) {
										$.messager.alert("提示", "删除成功！");
										$('#dg').datagrid('reload'); // 重新加载数据
									} else {
										$.messager.show({ // show error message
											title : 'Error',
											msg : '删除失败'
										});
									}
								});
							}
						});
			}
		}
		
		//查询
		 function doSearch(){
		        $('#dg').datagrid('load',{
		            name: $('#productid').val().trim(),
		        });
		   }
		
	</script>
</body>
</html>