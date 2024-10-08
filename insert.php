<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert Data</title>
<style>
/* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

.card {
    max-width: 500px;
    margin: 50px auto;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

.card-title {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

/* Input Styles */
.form-group input {
    width: calc(100% - 22px); /* Adjusting for padding and border */
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    transition: background-color 0.3s ease, border-color 0.3s ease;
}

.form-group input:focus {
    background-color: #f9f9f9;
    border-color: #007bff;
}

/* Submit Button Styles */
input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    width: 100%;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>

<div class="card">
    <h2 class="card-title">Insert Data</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <div class="form-group">
            <input type="text" name="name" placeholder="Name" required><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="employee_code" placeholder="Employee Code" required><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="designation" placeholder="Designation"><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="department" placeholder="Department"><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="mobile_no" placeholder="Mobile No."><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="email_id" placeholder="Email ID"><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="intercom_no" placeholder="Intercom No."><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="block" placeholder="Block"><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="floor" placeholder="Floor"><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="room_no" placeholder="Room No."><span></span>
        </div>
        <div class="form-group">
            <input type="text" name="cabin_cubicle_no" placeholder="Cabin/Cubicle No."><span></span>
        </div>
        <div class="form-group">
            <input type="date" name="joining_date" placeholder="Joining Date"><span></span>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="Submit">
        </div>
    </form>
</div>

<script>
// Function to show a popup alert
function showAlert(message) {
    alert(message);
}
</script>

</body>
</html>

<?php
// Enable error reporting to see any issues
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once "config.php";  // Database connection file

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve data from the form
    $name = $_POST["name"];
    $employee_code = $_POST["employee_code"];
    $designation = $_POST["designation"] ?? null;
    $department = $_POST["department"] ?? null;
    $mobile_no = $_POST["mobile_no"] ?? null;
    $email_id = $_POST["email_id"] ?? null;
    $intercom_no = $_POST["intercom_no"] ?? null;
    $block = $_POST["block"] ?? null;
    $floor = $_POST["floor"] ?? null;
    $room_no = $_POST["room_no"] ?? null;
    $cabin_cubicle_no = $_POST["cabin_cubicle_no"] ?? null;
    $joining_date = $_POST["joining_date"] ?? null;

    // Validate required fields: name and employee_code
    if (empty($name) || empty($employee_code)) {
        // Show error popup if required fields are missing
        echo "<script>showAlert('Error: Both Name and Employee Code are required.');</script>";
    } else {
        // Prepare and bind SQL statement
        $stmt = $con->prepare("INSERT INTO faculty (name, employee_code, designation, department, mobile_no, email_id, intercom_no, block, floor, room_no, cabin_cubicle_no, joining_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
        // If prepare fails, display the error
        if (!$stmt) {
            echo "<script>showAlert('SQL Error: " . $con->error . "');</script>";
        }

        // Bind the parameters
        $stmt->bind_param("ssssssssssss", $name, $employee_code, $designation, $department, $mobile_no, $email_id, $intercom_no, $block, $floor, $room_no, $cabin_cubicle_no, $joining_date);

        // Execute the statement
        if ($stmt->execute() === TRUE) {
            // Show success popup if insertion is successful
            echo "<script>showAlert('New record inserted successfully.');</script>";
        } else {
            // Show error popup if there's an issue during execution
            echo "<script>showAlert('Error: " . $stmt->error . "');</script>";
        }

        // Close the statement
        $stmt->close();
    }
}

// Close the database connection
$con->close();
?>
