<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Employee</title>
</head>
<body>
    <h2>Search Employee</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        Enter Employee Code: <input type="text" name="employee_code" required>
        <input type="submit" name="search_employee_code" value="Search">
    </form>

    <?php
    // Database connection parameters
    require_once "config.php";
    // Create connection
    

    // Check connection
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }

    // Check if employee code is provided
    if (isset($_POST['search_employee_code'])) {
        $employee_code = $_POST['employee_code'];

        // Prepare and bind SQL statement
        $stmt = $con->prepare("SELECT * FROM faculty WHERE employee_code = ?");
        $stmt->bind_param("s", $employee_code);

        // Execute the statement
        if ($stmt->execute()) {
            $result = $stmt->get_result();

            // Check if employee exists
            if ($result->num_rows > 0) {
                // Display employee details
                $row = $result->fetch_assoc();
                echo "<h2>Employee Details:</h2>";
                echo "<p>Employee Code: " . htmlspecialchars($row['employee_code']) . "</p>";
                echo "<p>Name: " . htmlspecialchars($row['name']) . "</p>";
                echo "<p>Designation: " . htmlspecialchars($row['designation']) . "</p>";
                echo "<p>Department: " . htmlspecialchars($row['department']) . "</p>";
                echo "<p>Mobile No.: " . htmlspecialchars($row['mobile_no']) . "</p>";
                echo "<p>Email ID: " . htmlspecialchars($row['email_id']) . "</p>";
                echo "<p>Intercom No.: " . htmlspecialchars($row['intercom_no']) . "</p>";
                echo "<p>Block: " . htmlspecialchars($row['block']) . "</p>";
                echo "<p>Floor: " . htmlspecialchars($row['floor']) . "</p>";
                echo "<p>Room No.: " . htmlspecialchars($row['room_no']) . "</p>";
                echo "<p>Cabin/Cubicle No.: " . htmlspecialchars($row['cabin_cubicle_no']) . "</p>";
                echo "<p>Joining Date: " . htmlspecialchars($row['joining_date']) . "</p>";

                // Display delete and cancel buttons
                echo "<form method='post' action='" . htmlspecialchars($_SERVER["PHP_SELF"]) . "'>";
                echo "<input type='hidden' name='employee_code' value='$employee_code'>";
                echo "<input type='submit' name='delete_employee' value='Delete'>";
                echo "<input type='submit' name='cancel' value='Cancel'>";
                echo "</form>";
            } else {
                echo "No record found with employee code " . htmlspecialchars($employee_code);
            }
        } else {
            echo "Error executing statement: " . $stmt->error;
        }

        // Close statement
        $stmt->close();
    }

    // Process delete or cancel action
    if (isset($_POST['delete_employee'])) {
        // Check if the delete button is clicked and employee code is provided
        $employee_code = $_POST['employee_code'];

        // Prepare and bind SQL statement
        $stmt = $con->prepare("DELETE FROM faculty WHERE employee_code = ?");
        $stmt->bind_param("s", $employee_code);

        // Execute the statement
        if ($stmt->execute()) {
            echo "Record with employee code " . htmlspecialchars($employee_code) . " deleted successfully";
        } else {
            echo "Error deleting record: " . $stmt->error;
        }

        // Close statement
        $stmt->close();
    }

    if (isset($_POST['cancel'])) {
        // Refresh the page
        header("Location: ".$_SERVER['PHP_SELF']);
        exit();
    }

    // Close connection
    $con->close();
    ?>
</body>
</html>
