<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Student_Project.persistance.dto.StudentResponseDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="container.css" />
<link rel="stylesheet" type="text/css" href="base.css" />
<script type="text/javascript" src="javascript/general.js" ></script>
<script type="text/javascript" src="javascript/accordion-menu.js" ></script>
<script type="text/javascript">
	window.onload = function() {
		menu();
		var param = getPara('flag');
		if (param == 1) {
			document.getElementById('list').style.display = "none";
		} else if (param == 2) {
			document.getElementById('list').style.display = "block";
		}

	}
	function changeName() {
		var ascName = document.getElementById('ascName').style.display;
		var dscName = document.getElementById('dscName').style.display;
		if (ascName == 'none') {
			document.getElementById('ascName').style.display = 'inline';
			document.getElementById('dscName').style.display = 'none';
		} else if (ascName == 'inline') {
			document.getElementById('ascName').style.display = 'none';
			document.getElementById('dscName').style.display = 'inline';
		}
	}
	function searchList() {
		document.getElementById('list').style.display = "block";
	}

	function resetForm() {
		document.getElementById('message').innerHTML = "Message";
		document.getElementById('list').style.display = "none";
	}
</script>
</head>
<body class="main_body">
<div id="header">
		<div id="title">
			<a href="welcome.jsp">Student Registration Assignment</a>
		</div>
		<div id="menuLoginTime">
			<table>
				<tr>
					<td>User</td>
					<td>: ${sessionScope.userInfo.rid}
						${sessionScope.userInfo.rname}</td>
				</tr>
				<tr>
					<td>Login Date</td>
					<td>: ${sessionScope.date}</td>
				</tr>
			</table>
		</div>
		<a href="LogoutServlet"><input id="btn_logout" class="button"
			type="button" value="Logout"></a>
	</div>

	<div id="container">
		<div id="left_menu">
			<!-- menu html code exist the menu function of general.js -->
		</div>
		<div id="main_contents">
			<div id="contents">
				<div class="search_form">
					<h3>Student Search Page</h3>
					<form action="SearchStudentServlet">
						<table class="tableForm">
							<tr>
								<td class="tblLabel">Student No.</td>
								<td class="tblInputShort"><input type="text"
									name="studentId" value="" class="txt" /></td>
								<td class="tblLabel">Student Name</td>
								<td class="tblInputShort"><input type="text"
									name="studentName" value="" class="txt" /></td>
							<tr />
							<tr>
								<td class="tblLabel">Class Name</td>
								<td class="tblInputNormal" colspan="3"><input type="text"
									name="className" id="companyName" value="" class="txtlong" /></td>
							</tr>
						</table>
						<br /> <input type="submit" value="Search" class="button" /> 
						<a href="ResetStudentServlet"><input type="button" class="button" value="Reset"/> </a>
						<br /> <br />
						<label id="message" style="color: red;">Message</label>
					</form>
<!--  					<div id="list">
						<br />
						<table class="resultTable">
							<tr class="tblHeader">
								<th width="5%">No</th>
								<th width="5%">Student No</th>
								<th width="25%">Student Name</th>
								<th width="40%">Class Name</th>
								<th width="15%">Registered Date</th>
								<th width="10%">Status</th>
							</tr>
				<c:set var="count" value="0" scope="page" />
				<c:forEach var="list" items="${sessionScope.stuList}">
					<tr>
						<c:set var="count" value="${count + 1}" scope="page" />
							<td><h3>${count}</h3></td>
							<td><h3>${list.sno}</h3></td>
							<td><h3><a href="UpdateStudentServlet?id=${list.sno}">${list.sname}</a></h3></td>
							<td><h3>${list.sclass}</h3></td>
							<td><h3>${list.date}</h3></td>
							<td><h3>${list.status}</h3></td>
					</tr>
				</c:forEach>
			</table>
						<br/>

</div> -->
				</div>
			</div>
		</div>

	</div>

	<div class="footer">
		<span>Copyright &#169; ACE Inspiration 2016</span>
	</div>
</body>
</html>