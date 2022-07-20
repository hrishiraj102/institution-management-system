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
    <title>Fees</title>
  </head>

  <body>
    <header class="header">
      <span class="githead">
        <h1>GIT Management System</h1>
      </span>
    </header>

    </br></br>
    <div class="form1">
      <!-- Search  -->
      <h3>Search Fees Structure</h3>
      <form>
        <p>Department Id: <input type="text" name="depart_id"></p>
        </br></br>
        <input class="submitlogin" type="submit" formaction="Sfees" value="Search">
      </form>
    </div>
    </br></br></br></br>


    <!-- Edit fees  -->
    <div class="form1">
      </br></br>
      <h3>Edit Fees:</h3>
      </br></br>
      <form action="editfee">
        <select name="eFees">

          <option value="fees_add">Addmision fees(One time Payment)</option>
          <option value="fees_perS">Fees Per Semester</option>
          <option value="examination_fee">Exam Fees</option>
          <option value="other_fees">Other fees</option>


        </select>

        <p>New Entry: <input type="text" name="newentry" required> </br>

        </p>

        <p>Enter Department Id: <input type="text" name="depart_id" required> </br>
          </br></br>
          <input class="submitlogin" type="submit" value="Edit" />

      </form>
    </div>
    </br></br></br></br>


    <!--  New Entry  -->
    <div class="form1">
      </br></br>
      <h3>Add new fees or delete</h3>
      </br></br>
      <form action="newFees">
        <p>Department ID: <input type="text" name="depart_id1"></p>
        <p>Addmision fees(One time Payment)<input type="text" name="fees_add1"></p>
        <p>Fees Per Semester: <input type="text" name="fees_perS1"></p>
        <p>Examination Fee: <input type="text" name="exam_fee"></p>
        <p>Other Fees: <input type="text" name="other_fee1"></p>

        </br></br>

        <input class="submitlogin" type="submit" value="Add" />
        <input class="submitlogin1" type="submit" value="Delete" formaction="deletefee" name="Delete">

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