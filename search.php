<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Search Results</h1>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $searchTerm = $_POST['search_term'];
         // Create connection
        require_once "config.php";
    
        if ($con === false) {
            die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        
        // Prepare a SQL statement
        $query = "SELECT * FROM faculty WHERE id = ? OR name LIKE ? OR mobile_no = ?";
        $stmt = mysqli_prepare($con, $query);
        
        // Bind parameters
        mysqli_stmt_bind_param($stmt, "iss", $searchTerm, $searchTerm, $searchTerm);
        
        // Execute the statement
        mysqli_stmt_execute($stmt);
        
        // Get results
        $result = mysqli_stmt_get_result($stmt);
        
        if (mysqli_num_rows($result) > 0) {
            echo "<table>";
            echo "<tr><th>ID</th><th>Name</th><th>Designation</th><th>Department</th><th>Mobile No.</th><th>Email ID</th><th>Intercom No.</th><th>Block</th><th>Floor</th><th>Room No.</th><th>Cabin/Cubicle No.</th><th>Joining Date</th></tr>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row['id']) . "</td>";
                echo "<td>" . htmlspecialchars($row['name']) . "</td>";
                // echo "<td>" . htmlspecialchars($row['employee_code']) . "</td>";
                echo "<td>" . htmlspecialchars($row['designation']) . "</td>";
                echo "<td>" . htmlspecialchars($row['department']) . "</td>";
                echo "<td>" . htmlspecialchars($row['mobile_no']) . "</td>";
                echo "<td>" . htmlspecialchars($row['email_id']) . "</td>";
                echo "<td>" . htmlspecialchars($row['intercom_no']) . "</td>";
                echo "<td>" . htmlspecialchars($row['block']) . "</td>";
                echo "<td>" . htmlspecialchars($row['floor']) . "</td>";
                echo "<td>" . htmlspecialchars($row['room_no']) . "</td>";
                echo "<td>" . htmlspecialchars($row['cabin_cubicle_no']) . "</td>";
                echo "<td>" . htmlspecialchars($row['joining_date']) . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "<p>No records found.</p>";
        }
        
        mysqli_stmt_close($stmt);
        mysqli_close($con);
    } else {
        // Redirect to index.php if accessed directly
        header("Location: search.html");
        exit();
    }
    ?>
    <p><a href="index.php">Go back to Home Page</a></p>
</body>
</html>
