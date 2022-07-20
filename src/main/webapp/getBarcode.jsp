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
        <title>barcode scan</title>
    </head>

    <body>
        <header class="header">
            <span class="githead">
                <h1>GIT Management System</h1>
            </span>
        </header>
        <!-- Generate all the barcode from any device but print the barcode from the folder of server pc  -->
        </br></br>
        <div class="form1">
            </br></br>
            <h3>For Student: </h3>
            </br></br>
            <form action="GenerateBarcodeStudent" method="post">
                <p>Enter Student Registration number:<input type="text" name="reg_no" /></p>
                </br></br>
                <input class="submitlogin" type="submit" value="Generate" />


            </form>
        </div>
        </br></br></br></br>


        </br></br>
        <div class="form1">
            </br></br>
            <h3>For Staff: </h3>
            <form action="getBarcodeStaff" method="post">
                <p>Enter Staff ID:<input type="text" name="staff_id" /></p>
                </br></br>
                <input class="submitlogin" type="submit" value="Generate" />


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