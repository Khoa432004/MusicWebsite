const profilePicture = document.querySelector('.profile-picture');
const imgWelcome = document.querySelector('.img-welcome');
const welcomeText = document.querySelector('.Welcome');
const imgLogout = document.querySelectorAll('.img-logout');
const logoutLinks = document.querySelectorAll('.logout, .change-password');
const logout = document.querySelectorAll('.logout');

let timeout;

// Hàm hiển thị logout và ẩn welcome
function showLogout() {
    clearTimeout(timeout);
    imgWelcome.style.display = 'none';
    welcomeText.style.display = 'none';
    imgLogout.forEach(img => img.style.display = 'block');
    logoutLinks.forEach(link => link.style.display = 'block');
}

// Hàm ẩn logout sau một khoảng thời gian 2000 = 2s
function hideLogoutAfterDelay() {
    timeout = setTimeout(() => {
        imgWelcome.style.display = 'block';
        welcomeText.style.display = 'block';
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

document.getElementById("logout-form").addEventListener("click", function (event) {
    event.preventDefault();
    
	fetch("/logout_user", {
	    method: "POST",
	    headers: {
	        "Content-Type": "application/x-www-form-urlencoded"
	    },
	})
	.then(response => {
	    console.log(response.status);
	    return response.text().then(text => {
	        if (response.ok) {
	            alert("Logout successful!");
	            window.location.href = "/Home";
	        } else {
	            alert(text);
	        }
	    });
	})
	.catch(error => {
	    console.error('Error during logout:', error);
	});

});