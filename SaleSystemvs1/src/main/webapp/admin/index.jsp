<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:admin_template title="Admin manager">
	<jsp:attribute name="content">


<a class="btn btn-primary"
			href="${pageContext.request.contextPath}/admin?acction=create">  Create</a>
<div class="container">
	<table class="table">
		<tr>
			<th>Name</th>


			<th>Mail</th>
			<th>phone</th>


			<th>Birth Day</th>
		</tr>
		<c:forEach var="em" items="${listEmployee }">

			<tr>
				<td>${em.name }</td>


				<td>${em.mail }</td>
				<td>${em.phone }</td>


				<td>${em.birthday }</td>

			</tr>

		</c:forEach>


	</table>
</div>
	</jsp:attribute>

</mt:admin_template>