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
    <title>Staff page</title>
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
      <!-- Search -->
      <h3>Search Details of the Staff:</h3>
      </br></br>
      <form action="searchFaculty" method="post">
        <p>Staff ID: <input type="text" name="staffid" /></p>
        <p>Staff name: <input type="text" name="staffname" /></p>
        </br></br>
        <input class="submitlogin" type="submit" value="Search" />
      </form>
    </div>
    </br></br></br></br>

    <!-- Search for a staff with Name -->
    <div class="form1">
      </br></br>
      <h3>Find Staff using first name(To get Staff id)</h3>
      </br></br>
      <form>

        <p>First Name : <input type="text" name="staff_name">
        </p></br></br>
        <input class="submitlogin" type="submit" formaction="findstaffName" method="post" value="Staff data">


      </form>
    </div>
    </br></br></br></br>


    <!-- For Delete whole row -->
    <div class="form1">
      </br></br>
      <h3>Delete data of a staff from database:</h3>
      </br></br>
      <form action="deleteFaculty" method="post">
        <p>Staff ID: <input type="text" name="staffid11" required /></p>
        <p>Staff name: <input type="text" name="staffname11" /></p>
        </br></br>
        <input class="submitlogin" type="submit" value="Delete" />
      </form>
    </div>
    </br></br></br></br>



    <!-- New entry -->
    <div class="form1">
      </br></br>
      <h3>New Data Entry: </h3>
      </br></br>
      <form action="newFaculty" method="post">
        <p>First name: <input type="text" name="fname" required />
          Last name: <input type="text" name="lname" />
        </p>
        <p>Adhar number: <input type="text" name="adhar" required />
          Date of Birth: <input type="date" name="dob" /></p>
        <p>Mobile number: <input type="tel" pattern="[0-9]{10}" name="p_no" max="999999999" required />
          Date of Join: <input type="date" name="doj" required>
        </p>
        <p>Address: <input type="text" name="address" />
          Pincode: <input type="text" name="pincode" />
        </p>
        <p>Department id: <input type="text" name="depart_id" required />
          Salary: <input type="text" name="salary" />
        </p></br></br>
        <input class="submitlogin" type="submit" value="Submit" />

      </form>
    </div>
    </br></br></br></br>

    <!-- Edit staff -->
    <div class="form1">
      </br></br>
      <h3>Edit Staff Details: </h3>
      <h5>Select and change the data</h5>
      </br></br>
      <form action="editFaculty" method="post">

        <select name="eStaff">

          <option value="fname1">First Name</option>
          <option value="lname1">Last Name</option>
          <option value="adhar1">Adhar number</option>
          <option value="dob1">Date of Birth</option>
          <option value="p_no1">Mobile number</option>
          <option value="doj1">Date of Joining</option>
          <option value="address1">Address</option>
          <option value="pincode1">Pincode</option>
          <option value="depart_id1">Department id:</option>
          <option value="salary1">Salary</option>
        </select>


        <p>New Entry: <input type="text" name="newentry" required> </br>
          (For DOB/Date of joining: Write in format "YYYY-MM-DD")
        </p>
        <p>Enter Staff id: <input type="text" name="staffid1" required> </br>
          </br></br>
          <input class="submitlogin" type="submit" value="Edit" />
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