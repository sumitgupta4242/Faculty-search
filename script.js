 // Function to open modal
 function openModal() {
    document.getElementById('myModal').style.display = "block";
}

// Function to close modal
function closeModal() {
    document.getElementById('myModal').style.display = "none";
}

// Close the modal if the user clicks anywhere outside of the modal
window.onclick = function(event) {
    var modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
// Function to open modal
function openModal() {
    document.getElementById('myModal').style.display = "block";
}

// Function to close modal
function closeModal() {
    document.getElementById('myModal').style.display = "none";
}

// Close the modal if the user clicks anywhere outside of the modal
window.onclick = function(event) {
    var modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

document.getElementById("search_term").addEventListener("input", function() {
    var input = this.value.trim();
    if (input.length === 0) {
        document.getElementById("suggestions").style.display = "none";
        return;
    }

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var suggestions = JSON.parse(this.responseText);
            var suggestionsHTML = "";
            suggestions.forEach(function(suggestion) {
                suggestionsHTML += '<div class="suggestion" onclick="selectSuggestion(\'' + suggestion + '\')">' + suggestion + '</div>';
            });
            document.getElementById("suggestions").innerHTML = suggestionsHTML;
            document.getElementById("suggestions").style.display = "block";
        }
    };
    xhr.open("GET", "suggest.php?search_term=" + input, true);
    xhr.send();
});

function selectSuggestion(suggestion) {
    document.getElementById("search_term").value = suggestion;
    document.getElementById("suggestions").style.display = "none";
}

document.getElementById("searchForm").addEventListener("submit", function(event) {
    event.preventDefault();
    var formData = new FormData(this);
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("searchResults").innerHTML = this.responseText;
        }
    };
    xhr.open("POST", "search.php", true);
    xhr.send(formData);
});
document.getElementById("search_term").addEventListener("input", function() {
    var input = this.value.trim();
    if (input.length === 0) {
        document.getElementById("suggestions").style.display = "none";
        return;
    }

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var suggestions = JSON.parse(this.responseText);
            var suggestionsHTML = "";
            suggestions.forEach(function(suggestion) {
                suggestionsHTML += '<div class="suggestion" onclick="selectSuggestion(\'' + suggestion + '\')">' + suggestion + '</div>';
            });
            document.getElementById("suggestions").innerHTML = suggestionsHTML;
            document.getElementById("suggestions").style.display = "block";
        }
    };
    xhr.open("GET", "suggest.php?search_term=" + input, true);
    xhr.send();
});

function selectSuggestion(suggestion) {
    document.getElementById("search_term").value = suggestion;
    document.getElementById("suggestions").style.display = "none";
}

document.getElementById("searchForm").addEventListener("submit", function(event) {
    event.preventDefault();
    var formData = new FormData(this);
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var searchResultsDiv = document.getElementById("searchResults");
            searchResultsDiv.innerHTML = this.responseText;
            searchResultsDiv.classList.add("show");
        }
    };
    xhr.open("POST", "search.php", true);
    xhr.send(formData);
});