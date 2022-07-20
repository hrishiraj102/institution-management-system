<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>

		<meta charset="UTF-8">
		<!-- Using meta viewport for mobile view -->
		<meta name="viewport" content="width=device-width,initial-scale-=1">
		<link rel="stylesheet" href="stylesheetLogin.css">
		<!-- Using below link for bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<title>Student</title>
	</head>

	<body>
		<header class="header">
			<span class="githead">
				<h1>GIT Management System</h1>
			</span>
		</header>

		</br></br>
		<div class="form1">
			</br></br>
			<h3>GIT New Student Entry </h3>
			</br></br>
			<p>Fill up carefully</p>
			</br></br>
			<!-- Student form, here I am using post method -->

			<form action="Studententry" method="post">
				<label for="firstname">First Name</label><input type="text" name="fname" maxlength="50" required> <label
					for="lastname">Last Name</label><input type="text" name="lname" maxlength="50"></br></br>
				<label for="adharcard">Adhar Card Number</label><input type="number" name="adhar" required></br></br>
				<label for="dob">Date of Birth</label><input type="date" name="sdob" required></br></br>
				<label for="fathname">Father's Name</label><input type="text" name="fathername"
					maxlength="100"></br></br>
				<label for="mothname">Mother's Name</label><input type="text" name="mothername"
					maxlength="100"></br></br>
				<label for="Mobile number">Mobile Number</label><input type="tel" pattern="[0-9]{10}" name="p_no"
					max="999999999" required></br></br>
				<label for="Gnumber1">Guardian's Mobile Number</label><input type="tel" pattern="[0-9]{10}" name="g_no1"
					max="999999999" required></br></br>
				<label for="Gnumber2">Guardian's Mobile number</label><input type="tel" pattern="[0-9]{10}" name="g_no2"
					max="999999999"></br></br>
				<label for="address">Address</label><input type="text" name="add" maxlength="500" required></br></br>
				<label for="pincode">Pincode</label><input type="number" name="pin" required></br></br>
				<label for="Admissiondate">Date of Admission</label><input type="date" name="a_date" required></br></br>
				<label for="department">Department ID</label><input type="text" name="d_name" maxlength="100"></br></br>
				</br></br>
				<input class="submitlogin" type="submit" name="DataSubmit">
			</form>
		</div>
		</br></br></br></br>



		<!-- Search for a student -->
		<div class="form1">
			</br></br>
			<h3>Find Student</h3>
			</br></br>
			<form method="post">
				<p>Registration number: <input type="text" name="reg_no" required>
				</p>
				<p>Name : <input type="text" name="stu_name">
				</p>
				</br></br>
				<input class="submitlogin" type="submit" formaction="findstu" method="post" value="Student data">


			</form>
		</div>
		</br></br></br></br>
		<!-- Search for a student with Adhar number and First name -->
		<div class="form1">
			</br></br>
			<h3>Find Student using first name(To get Registration Number)</h3>
			</br></br>
			<form>
				<p>Adhar number : <input type="text" name="stu_adhar">
				</p>
				<p>First Name : <input type="text" name="stu_name">
				</p>
				</br></br>
				<input class="submitlogin" type="submit" formaction="findstuName" method="post" value="Student data">


			</form>
		</div>
		</br></br></br></br>

		<!-- Edit student -->
		<div class="form1">
			</br></br>
			<h3>Edit Student Details: </h3>

			<h5>Select and change the data</h5>
			</br></br>
			<form action="editStudent" method="post">

				<select name="eStudent">

					<option value="fname1">First Name</option>
					<option value="lname1">Last Name</option>
					<option value="adhar1">Adhar number</option>
					<option value="dob1">Date of Birth</option>
					<option value="fatherN">Father's Name</option>
					<option value="motherN">Mother's Name</option>
					<option value="p_no1">Mobile number</option>
					<option value="g_noi1">Guardian's Mobile Number (1)</option>
					<option value="g_noi2">Guardian's Mobile Number (2)</option>
					<option value="address1">Address</option>
					<option value="pincode1">Pincode</option>
					<option value="a_year1">Date of Admission</option>
					<option value="depart_id1">Department id:</option>

				</select>


				<p>New Entry: <input type="text" name="newentry" required> </br>
					(For DOB/Date of joining: Write in format "YYYY-MM-DD")
				</p>
				<p>Enter Registration number: <input type="text" name="reg_no1" required> </br>
					</br></br>
					<input class="submitlogin" type="submit" value="Edit" />
			</form>
		</div>
		</br></br></br></br>

		<!-- For Delete whole row -->
		<div class="form1">
			</br></br>
			<h3>Delete data of a Student from database:</h3>
			</br></br>
			<form action="deleteStu" method="post">
				<p>Student Registration ID: <input type="text" name="stuid11" required /></p>
				<p>Student name: <input type="text" name="studentname11" /></p>
				</br></br>
				<input class="submitlogin" type="submit" value="Delete" />
			</form>
		</div>
		</br></br></br></br>

		<p class="buttonLink"><a href="login.html">Log out</a>
		<p>
			</br></br>
		<footer class="gitfooter">

			<div class="boxfoot">
				<hr>
				<h5 style="color: black;padding-top:40px; opacity:0.5;">Copyright © 2022, Hrishiraj Sawan, All
					Rights Reserved</h5>

			</div>
		</footer>


	</body>

	</html>