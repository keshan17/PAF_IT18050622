<%@page import="com.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.5.1.min.js"></script>
<script src="Components/main.js"></script>

<meta charset="UTF-8">
<title>Administration Portal</title>
</head>
<body>
	<div>
		<nav class="navbar navbar-dark bg-dark justify-content-between">
			<a class="navbar-brand text-white">Admin</a>
			<form class="form-inline" method="post" action="search.jsp">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search doctors" aria-label="Search"
					placeholder="Search roll no..">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit"
					name="save">Search</button>
			</form>
		</nav>


	</div>



	<br>
	<br>
	<fieldset>
		<div class="container">
			<div class="row">
				<div class="card" style="margin-left: 25%; width: 60%">
					<div class="card-body">
						
						<h2>Administration Portal</h2>
						
						<form id="usersForm" name="usersForm" method="post" action="admin.jsp">
							<legend>Create Users</legend>
							<br>
							
							&nbsp;&nbsp; Select User Type &nbsp;&nbsp; <select name="status" id="status">
								<option value="0">--Select Type--</option>
								<option value="doctor">Doctor</option>
								<option value="patient">Patient</option>
								<option value="hospital">Hospital</option>
							</select> <br> <br> 
							Name <input type="text" name="name" id="name" class="form-control form-control-sm" >
							<br> <br> 
							
							NIC <input type="text" name="nic" id="nic" class="form-control form-control-sm"> 
							<br> <br>
							
							Email <input type="email" name="email" id="email" class="form-control form-control-sm">
							 <br> <br>
							 
							Phone Number <input type="text" name="pnumber" id="pnumber" class="form-control form-control-sm">
							 <br> <br>
							 
							Password <input type="password" name="pwd" id="pwd" class="form-control form-control-sm"> 
							<br> <br>
							
							<input id="submitusers" type="button" name="submitusers" 
							value="save" class="btn btn-primary btn-lg btn-block"> 
							
								<input type="hidden" id="hidUsersIDSave" name="hidUsersIDSave" value="">
								
						</form>
						
						<div id="alertSuccess" class="alert alert-success"></div>
						<div id="alertError" class="alert alert-danger"></div>
						
					</div>
				</div>

				<br>
				<br>
				<br>
				<fieldset>
				
					<legend>Registered Doctors</legend>

					<div id="divDocGrid">
						<p>
							<%
								Admin adminObject = new Admin();
								out.print(adminObject.readDoctors());
							%>
							<br> <br>

						</p>
						</div>
				</fieldset>
				<fieldset>
					<legend>Registered Patients</legend>
					<div id="divPatientGrid">
						<p>
							<%
								Admin newobj = new Admin();
								out.print(newobj.readPatient());
							%>


						</p>
						</div>
				</fieldset>
				<fieldset>
					<legend>Registered Hospital Users</legend>
					<div id="divHosUsersGrid">
						<p>
							<%
								Admin newobj2 = new Admin();
								out.print(newobj2.readHospitals());
							%>

						</p>
					</div>
				</fieldset>
			</div>
		</div>
		
</body>
</html>