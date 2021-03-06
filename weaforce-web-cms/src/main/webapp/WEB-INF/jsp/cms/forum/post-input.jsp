<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/jsp/taglibs.jsp"%>
<html>
<head>
<%@ include file="/common/jsp/meta.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$('#postForm').validate();

	var oFCKeditor = new FCKeditor('postContent') ;
	oFCKeditor.Height = 358;
	oFCKeditor.ReplaceTextarea() ;
})
</script>
<title>Post Input</title>
</head>
<body>
<table border="0" align="center" width="100%" class="navigator-title">
	<tr>
		<td valign="middle" height="29" align="left">&nbsp;<img src="/common/image/point.gif" width="5" height="6" >&nbsp;系统导航-&gt;<a href="post.action?topicId=<s:property value='topicId'/>">广告频道字典域</a>-&gt;频道维护</td>
	</tr>
</table>
<div class="spacer-2"></div>
<form id="postForm" name="postForm" action="post!save.action" method="POST">
<table id="theTable" border="0" cellpadding="0" cellspacing="1" class="stripe" align="center" width="98%">
	<tr class="table-head">
		<td height="23" width="100%" colspan="2">&nbsp; 频道信息</td>
	</tr>
	<tr>
		<td width="100%" align="center">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="stripe">
			<tr>
				<td><input type="hidden" id="postId" name="postId" value="<s:property value='postId' />" ></td>
				<td><input type=hidden" id="topicId" name="topicId" value="<s:property value="queryId" />" ></td>
			</tr>
			<tr>
				<td height="30">标题:</td>
				<td><input id="postTitle" name="postTitle" value="<s:property value='postTitle' />" class="required"></td>

			</tr>
			<tr>
				<td height="30">内容:</td>
				<td><textarea id="postContent" name="postContent"><s:property value='postContent.contentContent'/></textarea></td>
			</tr>
			<tr><td height="30" colspan="2"><hr size="1"></td></tr>
			<tr>
				<td colspan="2" height="33">
				<table>
					<tr>
						<td><input onClick="javascript:doSubmit('postForm','post!save.action')" type="button" id="save" name="save" value="Save" class="button"></td>
						<td><input onClick="javascript:doSubmit('postForm','post!delete.action')" type="button" id="delete" name="delete" value="Delete" class="button"></td>
						<td><input onClick="javascript:doSubmit('postForm','post!parse.action')" type="button" id="parse" name="parse" value="Parse" class="button"></td>
						<td><input onClick="javascript:doSubmit('postForm','post!lock.action')" type="button" id="lock" name="lock" value="Lock" class="button"></td>
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