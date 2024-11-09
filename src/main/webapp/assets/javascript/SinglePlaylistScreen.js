const profilePicture = document.querySelector('.profile-picture');
const imgLogout = document.querySelectorAll('.img-logout');
const logoutLinks = document.querySelectorAll('.logout, .change-password');
const logout = document.querySelectorAll('.logout');
var modal = document.getElementById("myModal");
var btn = document.getElementById("addPlaylistBtn");
var span = document.getElementById("closeModal");
let timeout;

// Hàm hiển thị logout và ẩn welcome
function showLogout() {
    clearTimeout(timeout);
    imgLogout.forEach(img => img.style.display = 'block');
    logoutLinks.forEach(link => link.style.display = 'block');
}

// Hàm ẩn logout sau một khoảng thời gian 2000 = 2s
function hideLogoutAfterDelay() {
    timeout = setTimeout(() => {
        imgLogout.forEach(img => img.style.display = 'none');
        logoutLinks.forEach(link => link.style.display = 'none');
    }, 2000);
}

profilePicture.addEventListener('mouseenter', showLogout);
profilePicture.addEventListener('mouseleave', hideLogoutAfterDelay);

//Load nhạc từ csdl theo ID
function loadSongDetails(songId) {
    fetch(`/getSongDetails?songId=${songId}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
        	
            document.getElementById('songTitle').innerText = data.title;
            document.getElementById('songArtist').innerText = data.artistName;
            document.getElementById('songImage').src = data.image;
            document.getElementById('audioSource').src = data.linkPath;
			
            
            const audioPlayer = document.getElementById('audio-player');
            audioPlayer.load();
            audioPlayer.play();
        })
        .catch(error => console.error('Error fetching song details:', error));
    window.location.hash = '#play-bar';
}

//Đóng thay play thì tắt cả nhạc
function closeAudio() {
	const audioPlayer = document.getElementById('audio-player');
	audioPlayer.pause();
	audioPlayer.currentTime = 0;
}



// Khi người dùng nhấp vào nút, mở modal
btn.onclick = function() {
    modal.style.display = "block";
}

// Khi người dùng nhấp vào nút đóng, đóng modal
span.onclick = function() {
    modal.style.display = "none";
}

// Khi người dùng nhấp vào bất kỳ đâu ngoài modal, đóng modal
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

// Xử lý form gửi
document.getElementById("addPlaylistForm").onsubmit = function(event) {
    event.preventDefault();
    const name = document.getElementById("playlistName").value;
    const description = document.getElementById("playlistDescription").value;
    console.log("Playlist Added:", name, description);
    modal.style.display = "none";
}

document.getElementById("addPlaylistForm").addEventListener("submit", function (event) {
    event.preventDefault();

    const playlistName = document.querySelector('input[name="playlistName"]').value;
    const playlistDescription = document.querySelector('input[name="playlistDescription"]').value;

    const requestData = {
        userID: -1,
        name: playlistName,
        description: playlistDescription
    };
    
    console.log(requestData);
    
    fetch("/add_playlist", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(requestData)
    })
    .then(response => 
        response.text().then(text => {
            if (response.ok) {
                return text;
            } else {
                throw new Error(text);
            }
        })
    )
    .then(data => {
        alert("Add playlist successful!");
        window.location.href = "SinglePlaylistScreen.html";
    })
    .catch(error => {
        alert("Add playlist failed: " + error.message);
    });
});


fetch('/user/playlists')
    .then(response => response.json())
    .then(data => {
        const playlistList = document.getElementById('playlistList');
        
        data.forEach(item => {
            const listItem = document.createElement('div');
            listItem.classList.add('list-item');
            
            listItem.innerHTML = `
                <div>
                    <img src="assets/image/Playlist.webp" alt="${item.name}">
                </div>
                <div style="position: absolute; left:120px;">
                    <h5>${item.name}</h5>
                    <p class="author-name">${item.description}</p>
                </div>
                <div class="extra">
                    <div>
                        <i class="fas fa-ellipsis-h"></i>
                    </div>
                </div>
            `;
            
            playlistList.appendChild(listItem);
        });
    })
    .catch(error => {
        console.error("Error fetching playlists:", error);
    });
