<!DOCTYPE html>
<html>
<head>
    <title>Search Faculty</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
/* Navbar styling */
.navbar {
    background-color: #333;
    overflow: hidden;
}

.navbar a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 17px;
}

.navbar a:hover {
    background-color: #ddd;
    color: black;
}

.navbar a.active {
    background-color: #4CAF50;
    color: white;
}

.photo-gallery {
    display: flex;
    flex-direction: row; /* Align items horizontally */
    align-items: center; /* Center items vertically */
    gap: 10px; /* Space between boxes */
    margin-top: 20px;
    flex-wrap: wrap; /* Allow wrapping if there's not enough space */
    justify-content: center; /* Center items horizontally */
}

.photo-box {
    border: 2px solid #ccc; /* Border color and width */
    padding: 5px; /* Padding inside the box */
    border-radius: 5px; /* Optional: rounded corners */
    width: 200px; /* Fixed width for the boxes */
    height: 200px; /* Fixed height for the boxes */
    text-align: center; /* Center content within the box */
    display: flex;
    align-items: center; /* Center image vertically within the box */
    justify-content: center; /* Center image horizontally within the box */
    overflow: hidden; /* Hide any overflow from the image */
}

/* Ensure images fit the box */
.photo-box img {
    max-width: 100%; /* Image fits within the box */
    max-height: 100%; /* Image fits within the box height */
    object-fit: cover; /* Cover the box while maintaining aspect ratio */
    display: block; /* Remove extra space below the image */
    transition: transform 0.3s ease; /* Smooth zoom transition */
}

/* Zoom effect for images */
.zoom-in1 {
    transform: scale(1.2); /* Zoom in by 20% */
}
.zoom-in2 {
    transform: scale(1.5); /* Zoom in by 20% */
}
.zoom-in3 {
    transform: scale(1.5); /* Zoom in by 20% */
}
.zoom-in4 {
    transform: scale(1.7); /* Zoom in by 20% */
}
.zoom-in5 {
    transform: scale(1.6); /* Zoom in by 20% */
}

</style>

<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <a class="active" href="https://faculitysearch.42web.io">Home</a>
        <a href="https://www.sharda.ac.in/">Sharda page</a>
        <a href="https://ezone.sharda.ac.in/ezone-2022/admin/studentlogin">E-zone(student)</a>
        <a href="contact.php">Contact</a>
        <a href="login.php">Login</a>
        <a href="paper_index.php">Previous year papers </a>
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
        <div id="searchResults"></div>
        <h3 style="color:white;">Created by Sumit Gupta<a href="https://www.instagram.com/sumitgupta_4242/?next=%2F" target="_blank" style="color:red;">Instagram</a> </h3>
        <h3 style="color:white;">Image credit</h3>
        <h3 style="color:white;">Richan Dutta <a href="https://www.instagram.com/richandutta?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==" target="_blank"style="color:red;">Instagram</a>
</h3>
        <h3 style="color:white;">Special thanks: Karan Kumar, Arvind Patel, Agrim Gupta,Aditya prathap</h3>
    </div>
    

    <div class="photo-gallery">
        <div class="photo-box"><img src="image/photo1.jpg" alt="Photo 1" class="zoom-in1"></div>
        <div class="photo-box"><img src="image/photo2.jpg" alt="Photo 2" class="zoom-in2"></div>
        <div class="photo-box"><img src="image/photo3.jpg" alt="Photo 3" class="zoom-in3"></div>
        <div class="photo-box"><img src="image/photo4.jpg" alt="Photo 4" class="zoom-in4"></div>
        <div class="photo-box"><img src="image/photo5.jpg" alt="Photo 5" class="zoom-in5"></div>
    </div>

    

    <script src="script.js"></script>
    <script>
window.embeddedChatbotConfig = {
chatbotId: "F7gs3x53HYip3nsWNBB1o",
domain: "www.chatbase.co"
}
</script>
<script
src="https://www.chatbase.co/embed.min.js"
chatbotId="F7gs3x53HYip3nsWNBB1o"
domain="www.chatbase.co"
defer>
</script>
</body>
</html>
