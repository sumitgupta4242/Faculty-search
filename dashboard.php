<?php
session_start();
if(!isset($_SESSION["username"])){
header("Location: login.php");
exit(); }
?>
<!DOCTYPE html>
<html>
<head>
    <title>Search Faculty</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="header-container">
        <button class="btn header-button" onclick="window.location.href='insert.php'">Insert</button>
        <button class="btn header-button" onclick="window.location.href='delete.php'">Delete</button>
        <button class="btn header-button" onclick="window.location.href='update.php'">Update</button>
        <button class="btn header-button" onclick="window.location.href='logout.php'">LOG-OUT</button>
        <button class="btn header-button" onclick="window.location.href='admin_index.php'">previous year paper</button>
    </div>
    <div class="container">
        <h1>Search Faculty</h1>
        <div class="search-container">
            <form id="searchForm" action="search.php" method="post">
                <input type="text" name="search_term" id="search_term" placeholder="Enter Faculty Name" autocomplete="off"/>
                <div id="suggestions"></div>
                <input type="submit" class="btn" value="Search">
            </form>
        </div>
       
    </div>

    <div id="searchResults"></div>

    <script src="script.js"></script>
</body>
</html>

