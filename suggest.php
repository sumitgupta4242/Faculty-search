<?php
// Database connection
require_once "config.php";
// Create connection

if ($con === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Fetch suggestions based on the search term
if (isset($_GET['search_term'])) {
    $searchTerm = $_GET['search_term'];
    
    // Prepare a SQL statement to search for faculty names
    $query = "SELECT DISTINCT `name` FROM faculty WHERE `name` LIKE ?";
    $stmt = mysqli_prepare($con, $query);

    // Bind parameter
    $search_param = "%{$searchTerm}%";
    mysqli_stmt_bind_param($stmt, "s", $search_param);

    // Execute the statement
    mysqli_stmt_execute($stmt);

    // Get results
    $result = mysqli_stmt_get_result($stmt);

    $suggestions = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $suggestions[] = $row['name'];
    }

    // Close statement and connection
    mysqli_stmt_close($stmt);
    mysqli_close($con);

    // Return suggestions as JSON
    echo json_encode($suggestions);
}
?>
