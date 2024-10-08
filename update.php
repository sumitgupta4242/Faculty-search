
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
</head>
<body>

<h2>Enter Employee ID to UPDATE Details:</h2>
<form method="GET" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    Employee ID: <input type="text" name="employee_id">
    <input type="submit" value="Submit">
</form>

<?php

// Database connection parameters
require_once "config.php";
// Create connection


// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// Check if employee_id is provided via GET request
if(isset($_GET['employee_id'])) {
    $employee_id = $_GET['employee_id'];

    // Prepare and execute SQL query to fetch employee details based on employee_id
    $query = "SELECT * FROM faculty WHERE employee_code = ?";
    $stmt = $con->prepare($query);
    $stmt->bind_param("i", $employee_id);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if employee with the provided ID exists
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        // Display employee details
        echo "<h2>Employee Details:</h2>";
        echo "<form method='POST' action='edit_employee.php'>";
        echo "<input type='hidden' name='employee_id' value='" . $row['employee_code'] . "'>";
        echo "<p>Employee Code: " . $row['employee_code'] . "</p>";
        // Edit Name
        echo "<p>Name: <input type='text' name='edit_name' value='" . $row['name'] . "'><button type='submit' name='submit_name'>Update</button></p>";
        // Edit Designation
        echo "<p>Designation: <input type='text' name='edit_designation' value='" . $row['designation'] . "'><button type='submit' name='submit_designation'>Update</button></p>";
        // Edit Department
        echo "<p>Department: <input type='text' name='edit_department' value='" . $row['department'] . "'><button type='submit' name='submit_department'>Update</button></p>";
        // Edit Mobile No.
        echo "<p>Mobile No.: <input type='text' name='edit_mobile_no' value='" . $row['mobile_no'] . "'><button type='submit' name='submit_mobile_no'>Update</button></p>";
        // Edit Email ID
        echo "<p>Email ID: <input type='text' name='edit_email_id' value='" . $row['email_id'] . "'><button type='submit' name='submit_email_id'>Update</button></p>";
        // Edit Intercom No.
        echo "<p>Intercom No.: <input type='text' name='edit_intercom_no' value='" . $row['intercom_no'] . "'><button type='submit' name='submit_intercom_no'>Update</button></p>";
        // Edit Block
        echo "<p>Block: <input type='text' name='edit_block' value='" . $row['block'] . "'><button type='submit' name='submit_block'>Update</button></p>";
        // Edit Floor
        echo "<p>Floor: <input type='text' name='edit_floor' value='" . $row['floor'] . "'><button type='submit' name='submit_floor'>Update</button></p>";
        // Edit Room No.
        echo "<p>Room No.: <input type='text' name='edit_room_no' value='" . $row['room_no'] . "'><button type='submit' name='submit_room_no'>Update</button></p>";
        // Edit Cabin/Cubicle No.
        echo "<p>Cabin/Cubicle No.: <input type='text' name='edit_cabin_cubicle_no' value='" . $row['cabin_cubicle_no'] . "'><button type='submit' name='submit_cabin_cubicle_no'>Update</button></p>";
        // Edit Joining Date
        echo "<p>Joining Date: <input type='text' name='edit_joining_date' value='" . $row['joining_date'] . "'><button type='submit' name='submit_joining_date'>Update</button></p>";
        echo "</form>";
    } else {
        echo "Employee not found!";
    }
    

    // Close the prepared statement and database connection
    $stmt->close();
    $con->close();
} elseif(isset($_GET['employee_id']) && empty($_GET['employee_id'])) {
    echo "Please enter an Employee ID.";
}

?>
</body>
</html>
