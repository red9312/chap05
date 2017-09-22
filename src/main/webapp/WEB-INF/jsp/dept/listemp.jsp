<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listemp.jsp</title>
<c:if test="${true}">
	<link rel="stylesheet"
		href="/webjars/bootstrap/3.3.7/css/bootstrap.css">
	<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.css">
</c:if>
<c:if test="${false}">
	<link rel="stylesheet" href="../css/bootstrap.css" data-th-remove="all">
	<link rel="stylesheet" href="../css/animate.css" data-th-remove="all">
</c:if>
</head>
<body>
	<h1>Dept List With Emp</h1>
	${depts}
	<hr>
	<ol>
		<c:forEach var="dept" items="${depts}">
		<li>
			<h2>${dept.deptno}, ${dept.dname}, ${dept.loc}</h2>
			<table class="table table-bordered animated bounce">
				<tr>
					<td>empno</td>
					<td>ename</td>
					<td>gender1</td>
					<td>gender2</td>
					<td>job</td>
					<td>mgr.name1</td>
					<td>mgr.name2</td>
					<td>hiredate1</td>
					<td>hiredate2</td>
					<td>sal</td>
					<td>sal2</td>
					<td>sal3</td>
				</tr>
				<c:forEach var="emp" items="${dept.emps}">
				<tr>
					<td>${emp.empno}</td>
					<td>${emp.ename}</td>
					<td>${emp.gender}</td>
					<td>
					<c:choose>
						<c:when test="${emp.gender=='M'}">남자</c:when>
						<c:when test="${emp.gender=='F'}">여자</c:when>
					</c:choose>
					</td>
					<td>${emp.job}</td>
					<td>${emp.mgr.ename != null ? emp.mgr.ename : '없음'}</td>
					<c:if test="${emp.mgr==null}">
						<td class="btn btn-info">없음</td>
					</c:if>
					<c:if test="${emp.mgr!=null}">
						<td class="btn btn-primary">${emp.mgr.ename}</td>
					</c:if>
					<td>${emp.hiredate}</td>
					<td><fmt:formatDate value="${emp.hiredate}" pattern="yyyy MM dd"/></td>
					<td>${emp.sal}</td>
					<td><fmt:formatNumber value="${emp.sal}" pattern="#,###.00"></fmt:formatNumber></td>
				</tr>
				</c:forEach>
			</table>
		</li>
		</c:forEach>
	</ol>
	${depts[0].emps}<br>
<%-- 	${depts[1].emps}<br> --%>
<%-- 	${depts[2].emps}<br> --%>
<%-- 	${depts[3].emps}<br> --%>

</body>
</html>