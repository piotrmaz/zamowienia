<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<title><s:message code="admin.menu.users"/></title>
</head>
<body>
<%@include file="/WEB-INF/incl/adminmenu.incl" %>

<br/>
<table width="1300" border="0" cellpadding="6" cellspacing="0" class="tableUsers">
	<tr class="tdUsersHead ">
		<td width="20" align="center"><s:message code="admin.users.id"/></td>
		<td width="200" align="center"><s:message code="register.name"/></td>
		<td width="200" align="center"><s:message code="register.lastName"/></td>
		<td width="200" align="center"><s:message code="register.email"/></td>
		<td width="90" align="center"><s:message code="admin.users.active"/></td>
		<td width="200" align="center"><s:message code="admin.users.role"/></td>
		<td width="340" align="center"><s:message code="admin.users.akcje"/></td>
	<tr>

	<c:forEach var="u" items="${userList}">
		<tr>
		<td class="tdUsers"><c:out value="${u.id }"/></td>
		<td class="tdUsers"><c:out value="${u.name }"/></td>
		<td class="tdUsers"><c:out value="${u.lastName }"/></td>
		<td class="tdUsers"><c:out value="${u.email }"/></td>
		<td class="tdUsers" align="center"> 
	
			<c:choose>
				<c:when test="${u.active == 1 }">
					<font color="green"><s:message code="admin.users.active.yes"/></font><br/>
				</c:when>
				<c:otherwise>
					<font color="red"><s:message code="admin.users.active.no"/></font><br/>
				</c:otherwise>
			</c:choose>
		</td>
		<td class="tdUsers" align="center">
			<c:choose>
				<c:when test="${u.rolaInt == 1}">
					<font color="#ea3500"><b>
						<s:message code="admin.users.role.admin"/>
					</b></font>
				</c:when>
				<c:otherwise>
				<font color="#00aa00">
					<b><s:message code="admin.users.role.user"/></b>
				</font>
				</c:otherwise>
			</c:choose>
		</td>
		
		<td class="tdUsers">
			<input type="image" src="/resources/images/edit1.png" border="0"
						onclick="window.location.href='${pageContext.request.contextPath}/admin/edit/${u.id}'" />
		
						<input type="image" src="/resources/images/delete1.png" width="10%" height="10%" border="0"
						onclick="window.location.href='${pageContext.request.contextPath}/admin/delete/${u.id}'"/>
						<a href="/admin/users"></a>
							
		</td>
		
	</tr>
</c:forEach>

</table>

</body>
</html>