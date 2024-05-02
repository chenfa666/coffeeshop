<!DOCTYPE html>
 <?php #include("func.php");?>
<html>
<head>
	<title>Staff Details</title>
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<?php
include("newfunc.php");
if(isset($_POST['staff_search_submit']))
{
	$staffid=$_POST['staff_id'];
  $query = "select * from staff where StaffID= '$staffid'";
  $result = mysqli_query($con,$query);
  $row=mysqli_fetch_array($result);
  if($row['StaffID']=="" & $row['Firstname']=="" & $row['Lastname']=="" & $row['CurrentSalary']==""){
    echo "<script> alert('No entries found!'); 
          window.location.href = 'admin-panel1.php#list-sta';</script>";
  }
  else {
    echo "<div class='container-fluid' style='margin-top:50px;'>
	<div class ='card'>
	<div class='card-body' style='background-color:#FFB1B1;color:#ffffff;'>
<table class='table table-hover'>
  <thead>
    <tr>
      <th scope='col'>StaffID</th>
      <th scope='col'>First Name</th>
      <th scope='col'>Last Name</th>
      <th scope='col'>BirthDate</th>
      <th scope='col'>Sex</th>
      <th scope='col'>Started Date</th>
      <th scope='col'>Current Salary</th>
    </tr>
  </thead>
  <tbody>";

	// while ($row=mysqli_fetch_array($result)){
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
	// }

	echo "</tbody></table><center><a href='admin-panel1.php' class='btn btn-light'>Back to dashboard</a></div></center></div></div></div>";
}
  }
	

?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> 
</body>
</html>