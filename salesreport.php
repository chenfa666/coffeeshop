<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <style>
        body {
            background-color: #FFB1B1;
            position: relative;
            min-height: 100vh;
        }
        .title {
            color: white;
            text-align: center;
        }
        .report-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .custom-btn {
            background-color: white;
            color: #FF1493; /* Pink text color */
            border-color: #FF1493; /* Pink border color */
        }
        .custom-btn:hover {
            background-color: #FF1493; /* Pink background color on hover */
            color: white; /* White text color on hover */
        }
        .image-container {
            position: absolute;
            bottom: 10px;
            right: 10px;
            pointer-events: none; /* Ensures the image doesn't interfere with clicking */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">
            <h1 class="mt-5">Sales Report</h1>
        </div>

        <?php
        if (isset($_POST['salerp'])) {
            $host = 'localhost';
            $user = 'root';
            $password = '';
            $dbname = 'coffeeshop';

            $conn = new mysqli($host, $user, $password, $dbname);
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $start_date = $_POST['start_date'];
            $end_date = $_POST['end_date'];
            echo '<table style="color: white; font-weight: bold;">'; // Applies white color and bold font to all text in the table
            echo '<tbody>';
            echo '<tr>';
            echo '<td>Start Date:</td><td>' . $start_date . '</td>';
            echo '<td>End Date:</td><td>' . $end_date . '</td>';
            echo '</tr>';
            echo '</tbody>';
            echo '</table>';
            $stmt = $conn->prepare("CALL GenerateSalesReport(?, ?)");
            $stmt->bind_param("ss", $start_date, $end_date);
            $stmt->execute();

            do {
                if ($result = $stmt->get_result()) {
                    echo "<div class='report-container'>";
                    echo "<table class='table'>";
                    echo "<thead><tr>";
                    foreach ($result->fetch_fields() as $field) {
                        echo "<th>" . htmlspecialchars($field->name) . "</th>";
                    }
                    echo "</tr></thead><tbody>";

                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        foreach ($row as $value) {
                            echo "<td>" . htmlspecialchars($value) . "</td>";
                        }
                        echo "</tr>";
                    }
                    echo "</tbody></table>";
                    echo "</div>";
                    $result->free();
                }
            } while ($stmt->more_results() && $stmt->next_result());

            $stmt->close();
            $conn->close();
            echo "<div class='mt-3'><center><a href='admin-panel1.php' class='btn custom-btn'>Back to dashboard</a></center></div>";
        }
        ?>

    <!-- Image Container -->
    <div class="image-container">
        <img src="images/maid.png" alt="Image" width="400px">
    </div>
</body>
</html>
