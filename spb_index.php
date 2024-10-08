<!DOCTYPE html>
<html>
<head>
    <title>Search Faculty</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container"> 
        <div class="search-container">
            <form id="searchForm" action="search.php" method="post">
                <input type="text" name="search_term" id="search_term" placeholder="Enter Faculty Name" autocomplete="off"/>
                <div id="suggestions"></div>
                <input type="submit" class="btn" value="Search">
            </form>
        </div>
        <form id="loginForm" action="login.php" method="post">
            <button class="login-btn">Login</button>
        </form>
        <h1 style="color:red;"> created by sumit gupta </h1>
    </div>

    

    <div id="searchResults"></div>

    <script src="script.js"></script>
</body>
</html>
