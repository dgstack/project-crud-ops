<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Of Project</title>
</head>
<body>
	<div style="margin: auto; width: 400px; text-align: center;">
		<h1>List Of Project</h1>
		<a href="project.do?req=edit">Add New</a>
		<table border="2">
			<thead>
				<tr>
					<td>Id</td>
					<td>Name</td>
					<td>Location</td>
					<td>Price</td>
					<td>Rating</td>
					<td>Category</td>
					<td>Sub-Category</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<logic:empty name="listofProject">
					<tr>
						<td colspan="7">No Project Present</td>
					</tr>
				</logic:empty>
				<logic:notEmpty name="listofProject">
					<logic:iterate id="proj" name="listofProject">
						<tr>
							<td><bean:write name="proj" property="id"/></td>
							<td><bean:write name="proj" property="name"/></td>
							<td><bean:write name="proj" property="location"/></td>
							<td><bean:write name="proj" property="price"/></td>
							<td><bean:write name="proj" property="rating"/></td>
							<td><bean:write name="proj" property="category"/></td>
							<td><bean:write name="proj" property="subCategory"/></td>
							<td>
								<a href="project.do?req=edit&id=<bean:write name="proj" property="id"/>">Edit</a>
								<a href="project.do?req=delete&id=<bean:write name="proj" property="id"/>">delete</a>
							</td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
			</tbody>
		</table>
	</div>
</body>
</html>