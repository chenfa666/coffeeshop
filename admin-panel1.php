<!DOCTYPE html>
<?php 
$con=mysqli_connect("localhost","root","","coffeeshop");

include('newfunc.php');

// Check for post data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $staff_id = $_POST['staff_id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $birth_date = $_POST['birth_date'];
    $sex = $_POST['sex'];
    $started_date = $_POST['started_date'];
    $new_salary = $_POST['new_salary'];

    // Prepare SQL statement to execute procedure
    $stmt = $con->prepare("CALL AddOrUpdateStaff(?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssd", $staff_id, $first_name, $last_name, $birth_date, $sex, $started_date, $new_salary);

    // Execute the procedure
    if ($stmt->execute()) {
        // If the update was successful, output JavaScript to display a popup
        echo "<script>alert('Staff information has been successfully updated.');</script>";
    } else {
        // If there was an error, output JavaScript to display a popup
        echo "<script>alert('Error updating staff information.');</script>";
    }

    // Close statement
    $stmt->close();
}


function sortIndicator($ascending) {
    if ($ascending) {
        return '<span style="color: #90D26D;">&#9650;</span>';
    } else {
        return '<span style="color: #FF71CD;">&#9660;</span>';
    }
}

?>
<html lang="en">
  <head>


    <!-- Required meta tags -->
    <meta charset="utf-8">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <a class="navbar-brand" href="#"><i class="fa fa-coffee" aria-hidden="true"></i> Maid Coffeeshop </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <script >
    var check = function() {
  if (document.getElementById('dpassword').value ==
    document.getElementById('cdpassword').value) {
    document.getElementById('message').style.color = '#5dd05d';
    document.getElementById('message').innerHTML = 'Matched';
  } else {
    document.getElementById('message').style.color = '#f55252';
    document.getElementById('message').innerHTML = 'Not Matching';
  }
}

    function alphaOnly(event) {
  var key = event.keyCode;
  return ((key >= 65 && key <= 90) || key == 8 || key == 32);
};
  </script>

  <style >
    .bg-primary {
    background: -webkit-linear-gradient(left, #FFB1B1, #FFEAE3);
}

.col-md-4{
  max-width:20% !important;
}

.list-group-item.active {
    z-index: 2;
    color: #fff;
    background-color: #FFB1B1;
    border-color: #FFEAE3;
}
.text-primary {
    color: #342ac1!important;
}

#cpass {
  display: -webkit-box;
}

#list-app{
  font-size:15px;
}

.btn-primary{
  background-color: #FFB1B1;
  border-color: #FFEAE3;
}customersearch
  </style>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav mr-auto">
       <li class="nav-item">
        <a class="nav-link" href="logout1.php"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
    </ul>
  </div>
</nav>
  </head>
  <style type="text/css">
    button:hover{cursor:pointer;}
    #inputbtn:hover{cursor:pointer;}
  </style>
  <body style="padding-top:50px;">
   <div class="container-fluid" style="margin-top:50px;">
    <h3 style = "margin-left: 40%; padding-bottom: 20px;font-family: 'IBM Plex Sans', sans-serif;"> Manager Page </h3>
    <div class="row">
  <div class="col-md-4" style="max-width:25%;margin-top: 3%;">
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action active" id="list-dash-list" data-toggle="list" href="#list-dash" role="tab" aria-controls="home">Dashboard</a>
      <a class="list-group-item list-group-item-action" href="#list-man" id="list-man-list"  role="tab" data-toggle="list" aria-controls="home">Manager List</a>
      <a class="list-group-item list-group-item-action" href="#list-sta" id="list-sta-list"  role="tab"    aria-controls="home" data-toggle="list">Staff List</a>
      <a class="list-group-item list-group-item-action" href="#list-bev" id="list-bev-list"  role="tab" data-toggle="list" aria-controls="home">Beverage Details</a>
      <a class="list-group-item list-group-item-action" href="#list-mem" id="list-mem-list"  role="tab" data-toggle="list" aria-controls="home">Member List</a>
      <a class="list-group-item list-group-item-action" href="#list-ord" id="list-ord-list"  role="tab" data-toggle="list" aria-controls="home">Order Details</a>
      <a class="list-group-item list-group-item-action" href="#list-settings" id="list-adoc-list"  role="tab" data-toggle="list" aria-controls="home">Add Staff</a>
      <a class="list-group-item list-group-item-action" href="#list-settings1" id="list-srep-list"  role="tab" data-toggle="list" aria-controls="home">Generate Sales Report</a>

    </div><br>
  </div>
  <div class="col-md-8" style="margin-top: 3%;">
    <div class="tab-content" id="nav-tabContent" style="width: 950px;">


      <div class="tab-pane fade show active" id="list-dash" role="tabpanel" aria-labelledby="list-dash-list">
        <div class="container-fluid container-fullw bg-white" >
              <div class="row">
               <div class="col-sm-4">
                  <div class="panel panel-white no-radius text-center">
                    <div class="panel-body">
                      <span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x", style="color: pink;"></i> <i class="fa fa-users fa-stack-1x fa-inverse"></i> </span>
                      <h4 class="StepTitle" style="margin-top: 5%;">Staff List</h4>
                      <script>
                        function clickDiv(id) {
                          document.querySelector(id).click();
                        }
                      </script> 
                      <p class="links cl-effect-1">
                        <a href="#list-sta" onclick="clickDiv('#list-sta-list')">
                          View Staffs
                        </a>
                      </p>
                    </div>
                  </div>
                </div>

                <div class="col-sm-4">
                  <div class="panel panel-white no-radius text-center">
                    <div class="panel-body" >
                      <span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x", style="color: pink;"></i> <i class="fa fa-users fa-stack-1x fa-inverse"></i> </span>
                      <h4 class="StepTitle" style="margin-top: 5%;">Member List</h4>
                      
                      <p class="cl-effect-1">
                        <a href="#app-hist" onclick="clickDiv('#list-mem-list')">
                          View Members
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
              

                <div class="col-sm-4">
                  <div class="panel panel-white no-radius text-center">
                    <div class="panel-body" >
                      <span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x", style="color: pink;"></i> <i class="fa fa-paperclip fa-stack-1x fa-inverse"></i> </span>
                      <h4 class="StepTitle" style="margin-top: 5%;">Order Details</h4>
                    
                      <p class="cl-effect-1">
                        <a href="#app-hist" onclick="clickDiv('#list-ord-list')">
                          View Orders
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
                </div>

                <div class="row">
                <div class="col-sm-4" style="left: 13%;margin-top: 5%;">
                  <div class="panel panel-white no-radius text-center">
                    <div class="panel-body" >
                      <span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x", style="color: pink;"></i> <i class="fa fa-list-ul fa-stack-1x fa-inverse"></i> </span>
                      <h4 class="StepTitle" style="margin-top: 5%;">Manager List</h4>
                    
                      <p class="cl-effect-1">
                        <a href="#list-man" onclick="clickDiv('#list-man-list')">
                          View Managers
                        </a>
                      </p>
                    </div>
                  </div>
                </div>


                <div class="col-sm-4" style="left: 18%;margin-top: 5%">
                  <div class="panel panel-white no-radius text-center">
                    <div class="panel-body" >
                      <span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x", style="color: pink;"></i> <i class="fa fa-plus fa-stack-1x fa-inverse"></i> </span>
                      <h4 class="StepTitle" style="margin-top: 5%;">Manage Coffeeshop</h4>
                    
                      <p class="cl-effect-1">
                        <a href="#app-hist" onclick="clickDiv('#list-adoc-list')">Add Staff</a>
                        &nbsp|
                        <a href="#app-hist" onclick="clickDiv('#list-srep-list')">
                          Generate Sales Report
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
              
                <div class="col-sm-4" style="left: -35%;margin-top: 25%">
                  <div class="panel panel-white no-radius text-center">
                    <div class="panel-body" >
                      <span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x", style="color: pink;"></i> <i class="fa fa-coffee fa-stack-1x fa-inverse"></i> </span>
                      <h4 class="StepTitle" style="margin-top: 5%;">Beverage List</h4>
                      
                      <p class="cl-effect-1">
                        <a href="#app-hist" onclick="clickDiv('#list-bev-list')">
                          View Beverages
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
                        

      
              </div>
              </div>
            </div>
      

      <div class="tab-pane fade" id="list-sta" role="tabpanel" aria-labelledby="list-home-list">
    <div class="col-md-8">
        <form class="form-group" action="staffsearch.php" method="post">
            <div class="row">
                <div class="col-md-10"><input type="text" name="staff_id" placeholder="Enter Staff ID" class="form-control"></div>
                <div class="col-md-2"><input type="submit" name="staff_search_submit" class="btn btn-primary" value="Search"></div>
            </div>
        </form>
    </div>
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">StaffID <span class="indicator"></span></th>
                <th scope="col">Firstname <span class="indicator"></span></th>
                <th scope="col">Lastname <span class="indicator"></span></th>
                <th scope="col">BirthDate <span class="indicator"></span></th>
                <th scope="col">Sex <span class="indicator"></span></th>
                <th scope="col">StartedDate <span class="indicator"></span></th>
                <th scope="col">CurrentSalary <span class="indicator"></span></th>
            </tr>
        </thead>
        <tbody>
             <?php 
                    $con=mysqli_connect("localhost","root","","coffeeshop");
                    global $con;
                    $query = "select * from staff";
                    $result = mysqli_query($con,$query);
                    while ($row = mysqli_fetch_array($result)){
                      $staffID = $row['StaffID'];
                      $fname = $row['Firstname'];
                      $lname = $row['Lastname'];
                      $dob = $row['BirthDate'];
                      $sex = $row['Sex'];
                      $sdate = $row['StartedDate'];
                      $salary = $row['CurrentSalary'];                      
                      echo "<tr>
                        <td>$staffID</td>
                        <td>$fname</td>
                        <td>$lname</td>
                        <td>$dob</td>
                        <td>$sex</td>
                        <td>$sdate</td>
                        <td>$salary</td>
                      </tr>";
                    }

                  ?>
        </tbody>
    </table>
    <br>
</div>

       <div class="tab-pane fade" id="list-man" role="tabpanel" aria-labelledby="list-man-list">
              

              <div class="col-md-8">
      <form class="form-group" action="managersearch.php" method="post">
        <div class="row">
          <div class="col-md-10"><input type="text" name="manager_id" placeholder="Enter Manager ID" class = "form-control"></div>
          <div class="col-md-2"><input type="submit" name="manager_search_submit" class="btn btn-primary" value="Search"></div></div>
      </form>
    </div>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">ManagerID<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Firstname<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Lastname<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">BirthDate<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Sex<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">StartedDate<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">CurrentSalary<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">LoginPassword<span class="indicator"></span></th><span class="indicator"></span></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $con=mysqli_connect("localhost","root","","coffeeshop");
                    global $con;
                    $query = "select * from manager";
                    $result = mysqli_query($con,$query);
                    while ($row = mysqli_fetch_array($result)){
                      $managerID = $row['ManagerID'];
                      $fname = $row['Firstname'];
                      $lname = $row['Lastname'];
                      $dob = $row['BirthDate'];
                      $sex = $row['Sex'];
                      $sdate = $row['StartedDate'];
                      $salary = $row['CurrentSalary'];      
                      $password = $row['LoginPassword'];                
                      echo "<tr>
                        <td>$managerID</td>
                        <td>$fname</td>
                        <td>$lname</td>
                        <td>$dob</td>
                        <td>$sex</td>
                        <td>$sdate</td>
                        <td>$salary</td>
                        <td>$password</td>
                      </tr>";
                    }

                  ?>
                </tbody>
              </table>
        <br>
      </div>


       <div class="tab-pane fade" id="list-mem" role="tabpanel" aria-labelledby="list-mem-list">
              

              <div class="col-md-8">
      <form class="form-group" action="membersearch.php" method="post">
        <div class="row">
        <div class="col-md-10"><input type="text" name="member_id" placeholder="Enter Member ID" class = "form-control"></div>
        <div class="col-md-2"><input type="submit" name="member_search_submit" class="btn btn-primary" value="Search"></div></div>
      </form>
    </div>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">MemberID<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Wifi Password<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Phone<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">BirthDate<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Full Name<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Membership Point<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Membership Level<span class="indicator"></span></th><span class="indicator"></span></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $con=mysqli_connect("localhost","root","","coffeeshop");
                    global $con;
                    $query = "select * from member_customer";
                    $result = mysqli_query($con,$query);
                    while ($row = mysqli_fetch_array($result)){
                      $memberID = $row['MemberID'];
                      $wfpassword = $row['WiFiPassword'];
                      $phone = $row['Phone'];
                      $dob = $row['BirthDate'];
                      $fname = $row['Fullname'];
                      $mpoint = $row['MembershipPoints'];
                      $mlevel = $row['MembershipLevel'];
                     
                      echo "<tr>
                        <td>$memberID</td>
                        <td>$wfpassword</td>
                        <td>$phone</td>
                        <td>$dob</td>
                        <td>$fname</td>
                        <td>$mpoint</td>
                        <td>$mlevel</td>
                      </tr>";
                    }

                  ?>
                </tbody>
              </table>
        <br>
      </div>


      <div class="tab-pane fade" id="list-bev" role="tabpanel" aria-labelledby="list-bev-list">
              

            <div class="col-md-8">
      <form class="form-group" action="beveragesearch.php" method="post">
        <div class="row">
        <div class="col-md-10"><input type="text" name="beverage_id" placeholder="Enter Beverage ID" class = "form-control"></div>
        <div class="col-md-2"><input type="submit" name="beverage_search_submit" class="btn btn-primary" value="Search"></div></div>
      </form>
    </div>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">BeverageID<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Beverage Name<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Beverage Group<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Beverage Size<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Beverage price<span class="indicator"></span></th><span class="indicator"></span></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $con=mysqli_connect("localhost","root","","coffeeshop");
                    global $con;
                    $query = "select * from beverage";
                    $result = mysqli_query($con,$query);
                    while ($row = mysqli_fetch_array($result)){
                      $beverageID = $row['BeverageID'];
                      $beverageName = $row['BeverageName'];
                      $beverageGroup = $row['BeverageGroup'];
                      $beverageSize = $row['BeverageSize'];
                      $beveragePrice = $row['BeveragePrice'];
                                    
                      echo "<tr>
                        <td>$beverageID</td>
                        <td>$beverageName</td>
                        <td>$beverageGroup</td>
                        <td>$beverageSize</td>
                        <td>$beveragePrice</td>
                      </tr>";
                    }

                  ?>
                </tbody>
              </table>
        <br>
      </div>
  
      
      <div class="tab-pane fade" id="list-ord" role="tabpanel" aria-labelledby="list-ord-list">

         <div class="col-md-8">
      <form class="form-group" action="ordsearch.php" method="post">
        <div class="row">
        <div class="col-md-10"><input type="text" name="Receipt_ID" placeholder="Enter Receipt ID" class = "form-control"></div>
        <div class="col-md-2"><input type="submit" name="app_search_submit" class="btn btn-primary" value="Search"></div></div>
      </form>
    </div>
        
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">Receipt ID<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Order Code<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">TotalPrice<span class="indicator"></span></th><span class="indicator"></span></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 

                    $con=mysqli_connect("localhost","root","","coffeeshop");
                    global $con;

                    $query = "select * from drink_order;";
                    $result = mysqli_query($con,$query);
                    while ($row = mysqli_fetch_array($result)){
                  
                      $receiptid = $row['ReceiptID'];
                      $ordercode = $row['OrderCode'];
                      $totalprice = $row['TotalPrice'];
                
                      echo "<tr>
                        <td>$receiptid</td>
                        <td>$ordercode</td>
                        <td>$totalprice</td>

                      </tr>";
                    }
                  ?>
                </tbody>
              </table>
        <br>
      </div>
    

<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>

    <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
        <form class="form-group" method="post" action="admin-panel1.php">
            <div class="row">
                <div class="col-md-4"><label>Staff ID:</label></div>
                <div class="col-md-8"><input type="text" class="form-control" name="staff_id" required pattern="S.*" title="Staff ID must start with 'S'"></div><br><br>
                <div class="col-md-4"><label>First Name:</label></div>
                <div class="col-md-8"><input type="text" class="form-control" name="first_name" maxlength="10" required></div><br><br>
                <div class="col-md-4"><label>Last Name:</label></div>
                <div class="col-md-8"><input type="text" class="form-control" name="last_name" maxlength="10" required></div><br><br>
                <div class="col-md-4"><label>Birth Date:</label></div>
                <div class="col-md-8"><input type="date" class="form-control" name="birth_date" required></div><br><br>
                <div class="col-md-4"><label>Gender:</label></div>
                <div class="col-md-8">
                    <select class="form-control" name="sex" required>
                        <option value="" disabled selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div><br><br>
                <div class="col-md-4"><label>Start Date:</label></div>
                <div class="col-md-8"><input type="date" class="form-control" name="started_date" required></div><br><br>
                <div class="col-md-4"><label>Salary:</label></div>
                <div class="col-md-8"><input type="number" step="0.01" class="form-control" name="new_salary" required></div><br><br>
            </div>
            <input type="submit" name="submit" value="Add or Update Staff" class="btn btn-primary">
        </form>
    </div>


     <div class="tab-pane fade" id="list-settings1" role="tabpanel" aria-labelledby="list-settings1-list">
                <form class="form-group" method="post" action="salesreport.php">
                    <div class="row">
                        <div class="col-md-4"><label>Start Date:</label></div>
                        <div class="col-md-8"><input type="date" class="form-control" name="start_date" required></div><br><br>
                        <div class="col-md-4"><label>End Date:</label></div>
                        <div class="col-md-8"><input type="date" class="form-control" name="end_date" required></div><br><br>
                    </div>
                    <input type="submit" name="salerp" value="Get Sales Report" class="btn btn-primary" onclick="return confirm('Generating the report?');">
                </form>
        </div>
    </div>
</div>

      <div class="tab-pane fade" id="list-attend" role="tabpanel" aria-labelledby="list-attend-list">...</div>

       <div class="tab-pane fade" id="list-mes" role="tabpanel" aria-labelledby="list-mes-list">

         <div class="col-md-8">
      <form class="form-group" action="messearch.php" method="post">
        <div class="row">
        <div class="col-md-10"><input type="text" name="mes_contact" placeholder="Enter Contact" class = "form-control"></div>
        <div class="col-md-2"><input type="submit" name="mes_search_submit" class="btn btn-primary" value="Search"></div></div>
      </form>
    </div>
        
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">User Name<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Email<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Contact<span class="indicator"></span></th><span class="indicator"></span></th>
                    <th scope="col">Message<span class="indicator"></span></th><span class="indicator"></span></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 

                    $con=mysqli_connect("localhost","root","","myhmsdb");
                    global $con;

                    $query = "select * from contact;";
                    $result = mysqli_query($con,$query);
                    while ($row = mysqli_fetch_array($result)){
              
                      #$fname = $row['fname'];
                      #$lname = $row['lname'];
                      #$email = $row['email'];
                      #$contact = $row['contact'];
                  ?>
                      <tr>
                        <td><?php echo $row['name'];?></td>
                        <td><?php echo $row['email'];?></td>
                        <td><?php echo $row['contact'];?></td>
                        <td><?php echo $row['message'];?></td>
                      </tr>
                    <?php } ?>
                </tbody>
              </table>
        <br>
      </div>



    </div>
  </div>
</div>
   </div>
    <!-- Optional JavaScript -->
    <!-- Including jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        th {
            cursor: pointer;
            position: relative; /* Needed to position the indicator */
        }
        .indicator {
            position: absolute;
            right: 5px;
            top: 50%;
            transform: translateY(-50%);
        }
    </style>
    <!-- Sorting Script -->
    <script>
    $(document).ready(function(){
        function sortTable(table, columnIndex, ascending) {
            var rows = table.find('tbody tr').get();
            rows.sort(function(a, b) {
                var A = $(a).children('td').eq(columnIndex).text().toUpperCase();
                var B = $(b).children('td').eq(columnIndex).text().toUpperCase();
                if (ascending) {
                    if(A < B) return -1;
                    if(A > B) return 1;
                } else {
                    if(A < B) return 1;
                    if(A > B) return -1;
                }
                return 0;
            });
            $.each(rows, function(index, row) {
                table.children('tbody').append(row);
            });
        }

        $('th').click(function(){
            var table = $(this).closest('table');
            var columnIndex = $(this).index();
            var ascending = $(this).hasClass('asc');
            table.find('th').removeClass('asc desc');
            $(this).children('.indicator').empty();
            if (ascending) {
                $(this).addClass('desc');
                $(this).children('.indicator').html('<?php echo sortIndicator(false); ?>');
            } else {
                $(this).addClass('asc');
                $(this).children('.indicator').html('<?php echo sortIndicator(true); ?>');
            }
            sortTable(table, columnIndex, !ascending);
        });
    });
    </script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.1/sweetalert2.all.min.js"></script>
  </body>
</html>