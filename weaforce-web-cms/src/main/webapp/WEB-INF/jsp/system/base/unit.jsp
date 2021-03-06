<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/jsp/taglibs.jsp"%>
<html>
<head>
<%@ include file="/common/jsp/meta.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	//$('#theTable > th').parent().addClass('table-head');
	$('#table-stripe tr:not([th]):odd').addClass('odd');
	$('#table-stripe tr:not([th]):even').addClass('even');
		
	$("#table-stripe tr:not([th])").mouseover(function(){  
        //如果鼠标移到class为stripe的表格的tr上时，执行函数
		$(this).addClass("over");}).mouseout(function(){ 
        //给这行添加class值为over，并且当鼠标一出该行时执行函数
        $(this).removeClass("over");
	})  //移除该行的class
})
</script>
<title>Unit</title>
</head>
<body bgcolor="white">
<table border="0" align="center" width="100%" class="navigator-title">
	<tr>
		<td valign="middle" height="29" align="left">系统导航-&gt;单位字典域</td>
	</tr>
</table>
<form id="listPage" name="listPage" action="role!list.action" method="post">
<table border="0" cellpadding="0" cellspacing="1" id="searchbg" align="center" width="98%">
	<tr align="center">
		<td>代码:</td>
		<td><input name="queryUnitCode" value="<s:property value="queryUnitCode" />" class="text"></td>
		<td>名称:</td>
		<td><input id="queryName" name="queryName" value="<s:property value="queryUnitName" />" class="text"></td>
		<td><input type="button" id="search" name="search" value="Search" onClick="javascript:doSubmit('listPage','unit!list.action')"></td>
		<td><input type="button" id="careate" name="create" value="Create" onClick="javascript:doSubmit('listPage','unit!input.action')"></td>
	</tr>
</table>

<table id="table-stripe" border="0" cellpadding="0" cellspacing="1"
	class="stripe" align="center" width="98%">
	<tr align="center" class="table-head">
		<th width="23" height="23"></th>
		<th>名称</th>
		<th>所属机构</th>
		<th>状态</th>
		<th width="23"></th>
	</tr>
	<s:iterator value="pageInfo.result">
		<tr align="left">
			<td height="23" align="center"><img class="pointerImage" border="0" title="Edit" src="/common/image/edit_inline.gif" onClick="javascript:doSubmit('listPage','unit!input.action?unitId=<s:property  value='unitId' />');"></td>
			<td><s:property value="unitCode" /></td>
			<td><s:property value="unitName" /></td>
			<td><s:property value="unitIsActive" /></td>
			<td align="center"><img class="pointerImage" border="0" title="Delete" src="/common/image/delete_inline.gif" onClick="javascript:if (confirm('当前单位将被删除,是否继续?')) doSubmit('listPage','unit!delete.action?unitId=<s:property  value='unitId' />');"></td>
		</tr>
	</s:iterator>
</table>
<TABLE cellSpacing="1" cellPadding="2" width="100%" border="0">
	<tr valign="top">
		<td><y:pages value="pageInfo" beanName="pageInfo" formName="listPage" /></td>
	</tr>
</TABLE>
</form>
</body>
</html>