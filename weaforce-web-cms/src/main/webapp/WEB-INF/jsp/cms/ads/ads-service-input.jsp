<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/jsp/taglibs.jsp"%>
<html>
<head>
<%@ include file="/common/jsp/meta.jsp"%>
<title>Service input</title>
<script type="text/javascript">
$(document).ready(function(){
	$('#serviceForm').validate();
	var oFCKeditor = new FCKeditor( 'adsServiceContent' ) ;
	oFCKeditor.Height = 358;
	oFCKeditor.ReplaceTextarea() ;
})
</script>
</head>
<body>
<table border="0" align="center" width="100%" class="navigator-title">
	<tr>
		<td valign="middle" height="29" align="left">&nbsp;<img src="/common/image/point.gif" width="5" height="6" >&nbsp;系统导航-&gt;<a href="ads-service.action?adsId=<s:property value='adsId'/>">广告服务</a>-&gt;服务维护</td>
	</tr>
</table>
<div class="spacer-2"></div>
<form id="serviceForm" name="serviceForm" action="ads-service!save.action" method="POST">
<table id="theTable" border="0" cellpadding="0" cellspacing="1" class="stripe" align="center" width="98%">
	<tr class="table-head">
		<td height="23" width="100%" colspan="2">&nbsp;服务信息</td>
	</tr>
	<tr>
		<td width="100%" align="center">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="stripe">
			<tr>
				<td>
					<input type="hidden" id="adsId" name="adsId" value="<s:property value='adsId' />" >
				</td>
				<td>
					<input type="hidden" id="serviceId" name="serviceId" value="<s:property value='serviceId' />" >
				</td>
			</tr>
			<tr>
				<td height="30">标题:</td>
				<td><input id="adsServiceTitle" name="adsServiceTitle" value="<s:property value='adsServiceTitle' />" class="required"></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td height="30">描述:</td>
				<td colspan="3"><textarea id="adsServiceContent" name="adsServiceContent" rows="5" cols="88"><s:property value="adsServiceContent" /></textarea></td>
			</tr>
			<tr><td height="30" colspan="4"><hr size="1"></td></tr>
			<tr>
				<td colspan="4" height="23">
				<table>
					<tr>
						<td><input onClick="javascript:doSubmit('serviceForm','ads-service!save.action')" type="button" id="save" name="save" value="Save" class="button"></td>
						<td><input onClick="javascript:doSubmit('serviceForm','ads-service!delete.action')" type="button" id="delete" name="delete" value="Delete" class="button"></td>
						<td><input onClick="javascript:doSubmit('serviceForm','ads-service!parse.action')" type="button" id="parse" name="parse" value="Parse" class="button"></td>
						<td><input onClick="javascript:window.history.back();" type="button" id="return" name="return" value="Return" class="button"></td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</form>
</body>
</html>