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
	<meta name="description" content="easyui help you build your web page easily!">
	<title>RSS Reader Demo - jQuery EasyUI</title>
<link rel="stylesheet" type="text/css"
	href="css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/demo.css">
	<style type="text/css">
		.rtitle{
			font-size:18px;
			font-weight:bold;
			padding:5px 10px;
			background:#336699;
			color:#fff;
		}
		.icon-channels{
			background:url('images/tree_channels.gif') no-repeat;
		}
		.icon-feed{
			background:url('images/rss.png') no-repeat;
		}
		.icon-rss{
			background:url('images/rss.gif') no-repeat;
		}
	</style>
	<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	
</head>
<body class="easyui-layout">
	<div region="north" border="false" class="rtitle">
		jQuery EasyUI RSS Reader Demo
	</div>
	<div region="west" title="Channels Tree" split="true" border="false" style="width:200px;background:#EAFDFF;">
		<ul id="t-channels" url="good/catalog"></ul>
	</div>
	<div region="center" border="false">
		<div class="easyui-layout" fit="true">
			<div region="north" split="true" border="false" style="height:200px">
				<table id="dg" 
						url="good/selectAll" border="false" rownumbers="true"
						fit="true" fitColumns="true" singleSelect="true">
					<thead>
						<tr>
							<th field="id" width="100">Title</th>
							<th field="name" width="200">Description</th>
							<th field="num" width="80">Publish Date</th>
						</tr>
					</thead>
				</table>
			</div>
			<div region="center" border="false" style="overflow:hidden">
				<iframe id="cc" scrolling="auto" frameborder="0" style="width:100%;height:100%"></iframe>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$('#dg').datagrid({
				onSelect: function(index,row){
					$('#cc').attr('src', row.link);
				},
				onLoadSuccess:function(){
					var rows = $(this).datagrid('getRows');
					if (rows.length){
						$(this).datagrid('selectRow',0);
					}
				}
			});
			$('#t-channels').tree({
				onSelect: function(node){
					var url = node.attributes.url;
					$('#dg').datagrid('load',{
						url: url
					});
				},
				onLoadSuccess:function(node,data){
					if (data.length){
						var id = data[0].children[0].children[0].id;
						var n = $(this).tree('find', id);
						$(this).tree('select', n.target);
					}
				}
			});
		});
	</script>
</body>
</html>