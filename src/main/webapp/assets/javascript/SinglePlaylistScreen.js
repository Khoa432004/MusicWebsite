const profilePicture = document.querySelector('.profile-picture');
const imgLogout = document.querySelectorAll('.img-logout');
const logoutLinks = document.querySelectorAll('.logout, .change-password');
const logout = document.querySelectorAll('.logout');
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