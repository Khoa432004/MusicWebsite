const profilePicture = document.querySelector('.profile-picture');
const imgLogout = document.querySelectorAll('.img-logout');
const logoutLinks = document.querySelectorAll('.logout, .change-password');
const logout = document.querySelectorAll('.logout');
var modal = document.getElementById("myModal");
var btn = document.getElementById("addPlaylistBtn");
var span = document.getElementById("closeModal");
let timeout;
const favoriteContent = document.getElementById("favorite-content");
const playlistContent = document.getElementById("playlist-content");
const playlistItems = document.querySelectorAll(".playlist-item");
const favoriteItems = document.querySelectorAll(".favorite-item");

const songNameMain = playlistContent.querySelector('.song-name-main h1');
const author = playlistContent.querySelector('.author');
const desc = playlistContent.querySelector('.desc');

var playlistId=1;
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
			listItem.addEventListener('click', () => {
							playlistId = item.playlistID;
			                showPlaylistContent(item.name, item.description);
							//###
			            });
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

	document.addEventListener("DOMContentLoaded", function () {

	    const showFavoriteButton = document.getElementById("favourites");
	    const showPlaylistButton = document.querySelectorAll(".list-item");

	    showFavoriteButton.addEventListener("click", showFavoriteContent);
		
		showPlaylistButton.forEach(button => {
		    button.addEventListener("click", showPlaylistContent);
		});

	    showFavoriteContent();
	});

	fetch('/user/favorites')
	    .then(response => response.json())
	    .then(data => {
	        const playlistItemContainer = document.getElementById('playlist-items');

	        // Kiểm tra xem phần tử có tồn tại không
	        if (playlistItemContainer) {
	            playlistItemContainer.innerHTML = '';

	            data.forEach((song, index) => {
	                const playlistItem = document.createElement('div');
	                playlistItem.classList.add('playlist-item');
	                playlistItem.style.display = 'flex';

	                playlistItem.innerHTML = `
	                    <div class="left">
	                        <div>
	                            ${index + 1}
	                        </div>
	                        <div>
	                            <img src="${song.image}" alt="${song.title}">
	                            <div class="play-btn">
	                                <a href="javascript:void(0);" onclick="loadSongDetails(${song.songID})">
	                                    <i class="fas fa-play"></i>
	                                </a>
	                            </div>
	                        </div>
	                        <div>
	                            <h5>${song.title}</h5>
	                            <p>${song.artistName}</p>
	                        </div>
	                    </div>
	                    <div class="center">
	                        ${song.duration}
	                    </div>
	                    <div class="right">
	                        <div>
	                            <i class="far fa-heart" onmouseover="this.style.color='red'" onmouseout="this.style.color='white'" onclick="addFavorite(event, ${song.songID})"></i>
	                        </div>
	                        <div>
	                            <i class="fas fa-plus" onmouseover="this.style.color='red'" onmouseout="this.style.color='white'" onclick="addSongToPlaylist(event, ${song.songID},${playlistId})"></i>
	                        </div>
	                    </div>
	                `;
	                playlistItemContainer.appendChild(playlistItem);
	            });
	        } else {
	            console.error('Element with id "playlist-items" not found.');
	        }
	    })
	    .catch(error => {
	        console.error('Error fetching favorite songs:', error);
	    });

		//load playlist
		fetch(`/user/song_playlist?playlistId=${playlistId}`)
			    .then(response => response.json())
			    .then(data => {
			        const playlistItemContainer = document.getElementById('playlist-items');

			        // Kiểm tra xem phần tử có tồn tại không
			        if (playlistItemContainer) {
			            playlistItemContainer.innerHTML = '';

			            data.forEach((song, index) => {
			                const playlistItem = document.createElement('div');
			                playlistItem.classList.add('favorite-item');
			                playlistItem.style.display = 'flex';

			                playlistItem.innerHTML = `
			                    <div class="left">
			                        <div>
			                            ${index + 1}
			                        </div>
			                        <div>
			                            <img src="${song.image}" alt="${song.title}">
			                            <div class="play-btn">
			                                <a href="javascript:void(0);" onclick="loadSongDetails(${song.songID})">
			                                    <i class="fas fa-play"></i>
			                                </a>
			                            </div>
			                        </div>
			                        <div>
			                            <h5>${song.title}</h5>
			                            <p>${song.artistName}</p>
			                        </div>
			                    </div>
			                    <div class="center">
			                        ${song.duration}
			                    </div>
			                    <div class="right">
			                        <div>
			                            <i class="far fa-heart" onmouseover="this.style.color='red'" onmouseout="this.style.color='white'" onclick="addFavorite(event, ${song.songID})"></i>
			                        </div>
			                        <div>
			                            <i class="fas fa-plus" onmouseover="this.style.color='red'" onmouseout="this.style.color='white'" onclick="addSongToPlaylist(event, ${song.songID},${playlistId})"></i>
			                        </div>
			                    </div>
			                `;
			                playlistItemContainer.appendChild(playlistItem);
			            });
			        } else {
			            console.error('Element with id "playlist-items" not found.');
			        }
			    })
			    .catch(error => {
			        console.error('Error fetching playlist songs:', error);
			    });

function addFavorite(event, songID) {
    event.preventDefault();

    console.log("addFavorite function called");

    const requestData = {
        userID: -1,
        songID: songID
    };

    console.log(requestData);

    fetch("/add_favorite", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(requestData)
    })
    .then(response => response.text().then(text => {
        if (response.ok) {
            return text;
        } else {
            throw new Error(text);
        }
    }))
    .then(data => {
        alert("Add favorite successful!");
        window.location.href = "Home";
    })
    .catch(error => {
        alert("Add favorite failed: " + error.message);
    });
}

function addSongToPlaylist(event, songID,playlistId) {
    event.preventDefault();

    console.log("addSongToPlaylist function called");

    const requestData = {
        playlistID: playlistId,
        songID: songID
    };

    console.log(requestData);

    fetch("/add_song_to_playlist", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(requestData)
    })
    .then(response => response.text().then(text => {
        if (response.ok) {
            return text;
        } else {
            throw new Error(text);
        }
    }))
    .then(data => {
        alert("Add song to playlist successful!");
        window.location.href = "SinglePlaylistScreen.html";
    })
    .catch(error => {
        alert("Add song to playlist failed: " + error.message);
    });
}

function showFavoriteContent() {
	favoriteItems.forEach(item => {
		item.style.display = "flex";
	});
	favoriteContent.style.display = "flex";

	playlistItems.forEach(item => {
		item.style.display = "none";
	});
	playlistContent.style.display = "none";
}

function showPlaylistContent(name, description) {
	favoriteItems.forEach(item => {
		item.style.display = "none";
	});
	favoriteContent.style.display = "none";

	playlistItems.forEach(item => {
		item.style.display = "flex";
	});
	playlistContent.style.display = "flex";

	songNameMain.innerHTML = name;
	desc.innerHTML = description;
}

document.addEventListener("DOMContentLoaded", function () {
	const preferredContent = localStorage.getItem('preferredContent');

	if (preferredContent === 'favorite') {
		favoriteItems.forEach(item => {
			item.style.display = "flex";
		});
		favoriteContent.style.display = "flex";

		playlistItems.forEach(item => {
			item.style.display = "none";
		});
		playlistContent.style.display = "none";
	} else if (preferredContent === 'playlist') {
		favoriteItems.forEach(item => {
			item.style.display = "none";
		});
		favoriteContent.style.display = "none";

		playlistItems.forEach(item => {
			item.style.display = "flex";
		});
		playlistContent.style.display = "flex";
	} else {
		favoriteItems.forEach(item => {
			item.style.display = "flex";
		});
		favoriteContent.style.display = "flex";

		playlistItems.forEach(item => {
			item.style.display = "none";
		});
		playlistContent.style.display = "none";
	}
});