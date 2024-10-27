<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/schema/spring-security"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.thymeleaf.org/schema/thymeleaf http://www.thymeleaf.org/schema/thymeleaf-spring5.xsd
                          http://www.thymeleaf.org/schema/spring-security http://www.thymeleaf.org/schema/spring-security.xsd">
                          
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>R.K.S Studio</title>
    <script src="https://kit.fontawesome.com/43fad9bb16.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Home.css">
    <link href="https://fonts.googleapis.com/css?family=Lora|Ubuntu: 300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons" media="all">
    <a target="_blank" href="https://icons8.com/icon/Q6YxSYNunbwV/laptop-settings"></a>
</head>
<body>
    
    <!-- Navigation Section -->
    <nav class="navbar">

        <!-- Left Nav -->
        <div class="left-nav">

            <!-- Music Logo -->
            <div class="music-logo">
                <img src="assets/image/music.png">
            </div>
            <!-- Brand Name -->
            <div class="name">
                <h2>R.K.S</h2>
                <h5>Studio</h5>
            </div>

            <!-- FAVOURITES -->
            <div class="fav">
                <img src="https://img.icons8.com/external-smashingstocks-glyph-smashing-stocks/66/FFFFFF/external-reviews-digital-marketing-smashingstocks-glyph-smashing-stocks-2.png"/>
                <h4>FAVOURITES</h4>
            </div>
        </div>

        <!-- Right Nav -->
        <div class="right-nav">

            <!-- Search Box -->
            <div id="search-bar">
                <i id="search-icon" class="fas fa-search"></i>
                <input id="search-input" placeholder="Search Music...">
                <i id="mic-icon" class="fas fa-microphone"></i>
            </div>
    
            <!-- Notification -->
            <div class="notification-box">
                <div class="notification-bell">
                  <span class="bell-top"></span>
                  <span class="bell-middle"></span>
                  <span class="bell-bottom"></span>
                  <span class="bell-rad"></span>
                </div>
            </div>
			<!-- Hiển thị nếu người dùng chưa đăng nhập -->
			<div sec:authorize="isAnonymous()">
			    <div class="login">
			        <img src="https://img.icons8.com/external-smashingstocks-glyph-smashing-stocks/66/FFFFFF/external-reviews-digital-marketing-smashingstocks-glyph-smashing-stocks-2.png"/>
			        <h4>
			        	<a href="Login.jsp" style="color: #ffff; text-decoration: none;">Log in</a>
			        </h4>
			    </div>
			</div>
			
			<!-- Hiển thị nếu người dùng đã đăng nhập -->
			<div sec:authorize="isAuthenticated()">
			    <div class="profile-picture">
			        <img src="assets/image/myphoto.jpeg" alt="Profile Picture"/>
			    </div>
			</div>

            
        </div>

        <!-- Responsive Dropdown Menu -->
        <div class = "dropdown-menu">

            <div class="bars">
                <i class="fas fa-bars"></i>
            </div>

            <div class ="dropdown-list nav-menu">
                <ul class = "no-list-style">
                    <li >
                        <a href="#"> Favourites </a>
                    </li>
                    <li>
                        <a href="#"> Notification</a>
                    </li>
                    <li>
                        <a href="#"> Profile</a>
                    </li>
                    <li>
                        <div id="search-bar">
                            <i id="search-icon" class="fas fa-search"></i>
                            <input id="search-input" placeholder="Search Music...">
                            <i id="mic-icon" class="fas fa-microphone"></i>
                        </div>
                    </li>
                </ul> 
            </div>
         </div>   
    </nav>
    <!-- Navigation Section End -->

    <!-- Main Section -->
    <main class="section">
        
        <!-- Left Section -->
        <div class="left-section">
            
            <!-- Carousel Components -->
            <div class="carousel ">
                <div class="image box img1"></div>
                <div class="image box img2"></div>
                <div class="image box img3"></div>
            </div>

            <div class="latest-releases">
                <header>
                    <h3 class="font">Latest Releases</h3>
                </header>

                <div class="latest-release-content">

                    <!-- First Card -->
                    <div class="card">
                        <img src="assets/image/marshmello.jpg" alt="marshmello">

                        <div class="play-button">
                            <a href="#play-bar1"><i class="fas fa-play"></i></a>
                        </div>

                        <div id="play-bar1">
                            <a href="#"><button>
                                Close
                              </button>
                            </a>

                            <div class="play-bar-content">

                                <div class="active-song-description">
                                    
                                    <div id="song-image">
                                        <img src="assets/image/marshmello.jpg" alt="marshmello">
                                    </div>
                                    
                                    <div class="song-desc">
                                        <div>
                                            <marquee behavior="scroll" direction="left" scrollamount="15" scrolldelay="500"><h3>Happier</h3></marquee>
                                        </div>
                                        <div>
                                            Marshmello
                                        </div>
                                    </div>
                                        
                                    <div class="heart-and-ban-icon">
                                        <span>
                                            <i class="far fa-heart"></i>
                                        </span>
                                    </div>
                                </div>
                                
                                <div class="player">
                                    <div class="controls">
                                        <div><i class="fas fa-random"></i></div>
                                        <div><i class="fas fa-step-backward"></i></div>
                                        <div><i class="fas fa-pause-circle"></i></div>
                                        <div><i class="fas fa-step-forward"></i></div>
                                        <div><i class="fas fa-redo"></i></div>
                                    </div>
                                    
                                    <div id="slider">
                                        
                                        <div class="time">
                                            0:01
                                        </div>
                                        <div class="slidecontainer">
                                            <input type="range" min="0" max="100" value="1" class="slider" id="myRange">
                                        </div>
                                        
                                        <div class="time">
                                            3:35
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="extras">
                                    <div>
                                        <i class="fas fa-list-ul"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-laptop"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-volume-up"></i>
                                    </div>
                                    <div class="slidecontainer" style="max-width:5rem;">
                                        <input type="range" min="0" max="100" value="15" class="slider" id="myRange" style="margin-top:0px;">
                                    </div>
                                    <div>
                                        <i class="fas fa-expand-alt"></i>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="song-disciption">
                            <h3>Happier</h3>
                            <p>Dec, 2022</p>
                        </div>

                        <div class="options">
                            <label for="latest-release-checkbox"><i class="fas fa-ellipsis-h"></i></label>
                            <input type="checkbox" id="latest-release-checkbox">
                            <div class="latest-release-dropdown">
                                <div class="drop-item">
                                    <p><i class="fas fa-play-circle"></i>Play
                                        Now</a></p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-list-ul"></i> Add to Queue</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-music"></i> Add to playlist</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-info-circle"></i> Get Info</p>
                                </div>
                            </div>

                            <!-- Duration -->
                            <p class="time">
                                3:35
                            </p>
                        </div>
                    </div>

                    <!-- Second Card -->
                    <div class="card">
                        <img src="assets/image/billie.jpg" alt="marshmello">

                        <div class="play-button">
                            <a href="#play-bar2"><i class="fas fa-play"></i></a>
                        </div>

                        <div id="play-bar2">
                            <a href="#"><button>
                                Close
                              </button>
                            </a>

                            <div class="play-bar-content">

                                <div class="active-song-description">
                                    
                                    <div id="song-image">
                                        <img src="assets/image/billie.jpg" alt="marshmello">
                                    </div>
                                    
                                    <div class="song-desc">
                                        <div>
                                            <marquee behavior="scroll" direction="left" scrollamount="15" scrolldelay="500"><h3>Bad Guy</h3></marquee>
                                        </div>
                                        <div>
                                            Billie Eilish
                                        </div>
                                    </div>
                                        
                                    <div class="heart-and-ban-icon">
                                        <span>
                                            <i class="far fa-heart"></i>
                                        </span>
                                    </div>
                                </div>
                                
                                <div class="player">
                                    <div class="controls">
                                        <div><i class="fas fa-random"></i></div>
                                        <div><i class="fas fa-step-backward"></i></div>
                                        <div><i class="fas fa-pause-circle"></i></div>
                                        <div><i class="fas fa-step-forward"></i></div>
                                        <div><i class="fas fa-redo"></i></div>
                                    </div>
                                    
                                    <div id="slider">
                                        
                                        <div class="time">
                                            0:01
                                        </div>
                                        <div class="slidecontainer">
                                            <input type="range" min="0" max="100" value="1" class="slider" id="myRange">
                                        </div>
                                        
                                        <div class="time">
                                            4:03
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="extras">
                                    <div>
                                        <i class="fas fa-list-ul"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-laptop"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-volume-up"></i>
                                    </div>
                                    <div class="slidecontainer" style="max-width: 5rem;">
                                        <input type="range" min="0" max="100" value="0" class="slider" id="myRange" style="margin-top:0px;">
                                    </div>
                                    <div>
                                        <i class="fas fa-expand-alt"></i>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="song-disciption">
                            <h3>Bad Guy</h3>
                            <p>May, 2022</p>
                        </div>

                        <div class="options">
                            <label for="latest-release-checkbox2"><i class="fas fa-ellipsis-h"></i></label>
                            <input type="checkbox" id="latest-release-checkbox2">
                            <div class="latest-release-dropdown">
                                <div class="drop-item">
                                    <p><i class="fas fa-play-circle"></i>Play
                                        Now</a></p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-list-ul"></i> Add to Queue</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-music"></i> Add to playlist</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-info-circle"></i> Get Info</p>
                                </div>
                            </div>

                            <!-- Duration -->
                            <p class="time">
                                4:03
                            </p>
                        </div>
                    </div>

                    <!-- Third Card -->
                    <div class="card">
                        <img src="assets/image/weeknd.jpg" alt="weeknd">

                        <div class="play-button">
                            <a href="#play-bar3"><i class="fas fa-play"></i></a>
                        </div>

                        <div id="play-bar3">
                            <a href="#"><button>
                                Close
                              </button>
                            </a>

                            <div class="play-bar-content">

                                <div class="active-song-description">
                                    
                                    <div id="song-image">
                                        <img src="assets/image/weeknd.jpg" alt="marshmello">
                                    </div>
                                    
                                    <div class="song-desc">
                                        <div>
                                            <div>
                                                <marquee behavior="scroll" direction="left" scrollamount="15" scrolldelay="500"><h3>Often</h3></marquee>
                                            </div>
                                        </div>
                                        <div>
                                            Weeknd
                                        </div>
                                    </div>
                                       
                                    <div class="heart-and-ban-icon">
                                        <span>
                                            <i class="far fa-heart"></i>
                                        </span>
                                    </div>
                                </div>
                                
                                <div class="player">
                                    <div class="controls">
                                        <div><i class="fas fa-random"></i></div>
                                        <div><i class="fas fa-step-backward"></i></div>
                                        <div><i class="fas fa-pause-circle"></i></div>
                                        <div><i class="fas fa-step-forward"></i></div>
                                        <div><i class="fas fa-redo"></i></div>
                                    </div>
                                    
                                    <div id="slider">
                                        
                                        <div class="time">
                                            0:01
                                        </div>
                                        <div class="slidecontainer">
                                            <input type="range" min="0" max="100" value="1" class="slider" id="myRange">
                                        </div>
                                        
                                        <div class="time">
                                            3:50
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="extras">
                                    <div>
                                        <i class="fas fa-list-ul"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-laptop"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-volume-up"></i>
                                    </div>
                                    <div class="slidecontainer" style="max-width:5rem;">
                                        <input type="range" min="0" max="100" value="0" class="slider vol" id="myRange" style="margin-top:0px;">
                                    </div>
                                    <div>
                                        <i class="fas fa-expand-alt"></i>
                                    </div>
                                </div>

                            </div>
                                
                        </div>

                        <div class="song-disciption">
                            <h3>Often</h3>
                            <p>Sept, 2022</p>
                        </div>

                        <div class="options">
                            <label for="latest-release-checkbox3"><i class="fas fa-ellipsis-h"></i></label>
                            <input type="checkbox" id="latest-release-checkbox3">
                            <div class="latest-release-dropdown">
                                <div class="drop-item">
                                    <p><i class="fas fa-play-circle"></i>Play
                                        Now</a></p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-list-ul"></i> Add to Queue</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-music"></i> Add to playlist</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-info-circle"></i> Get Info</p>
                                </div>
                            </div>

                            <!-- Duration -->
                            <p class="time">
                                3:50
                            </p>
                        </div>
                    </div>

                    <!-- Fourth Card -->
                    <div class="card">
                        <img src="assets/image/love.png" alt="marshmello">

                        <div class="play-button">
                            <a href="#play-bar4"><i class="fas fa-play"></i></a>
                        </div>

                        <div id="play-bar4">
                            <a href="#"><button>
                                Close
                              </button>
                            </a>

                            <div class="play-bar-content">

                                <div class="active-song-description">
                                    
                                    <div id="song-image">
                                        <img src="assets/image/love.png" alt="marshmello">
                                    </div>
                                    
                                    <div class="song-desc">
                                        <div>
                                            <div>
                                                <marquee behavior="scroll" direction="left" scrollamount="15" scrolldelay="500"><h3>Lonely</h3></marquee>
                                            </div>
                                        </div>
                                        <div>
                                            Justin Bieber
                                        </div>
                                    </div>
                                        
                                    <div class="heart-and-ban-icon">
                                        <span>
                                            <i class="far fa-heart"></i>
                                        </span>
                                    </div>
                                </div>
                               
                                <div class="player">
                                    <div class="controls">
                                        <div><i class="fas fa-random"></i></div>
                                        <div><i class="fas fa-step-backward"></i></div>
                                        <div><i class="fas fa-pause-circle"></i></div>
                                        <div><i class="fas fa-step-forward"></i></div>
                                        <div><i class="fas fa-redo"></i></div>
                                    </div>
                                    

                                    <div id="slider">
                                        
                                        <div class="time">
                                            0:01
                                        </div>
                                        <div class="slidecontainer">
                                            <input type="range" min="0" max="100" value="1" class="slider" id="myRange">
                                        </div>
                                        <!-- total time -->
                                        <div class="time">
                                            3:40
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="extras">
                                    <div>
                                        <i class="fas fa-list-ul"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-laptop"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-volume-up"></i>
                                    </div>
                                    <div class="slidecontainer" style="max-width: 5rem;">
                                        <input type="range" min="0" max="100" value="0" class="slider" id="myRange" style="margin-top:0px;">
                                    </div>
                                    <div>
                                        <i class="fas fa-expand-alt"></i>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="song-disciption">
                            <h3>Alone</h3>
                            <p>Nov, 2022</p>
                        </div>

                        <div class="options">
                            <label for="latest-release-checkbox4"><i class="fas fa-ellipsis-h"></i></label>
                            <input type="checkbox" id="latest-release-checkbox4">
                            <div class="latest-release-dropdown">
                                <div class="drop-item">
                                    <p><i class="fas fa-play-circle"></i>Play
                                        Now</a></p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-list-ul"></i> Add to Queue</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-music"></i> Add to playlist</p>
                                </div>
                                <hr>
                                <div class="drop-item">
                                    <p><i class="fas fa-info-circle"></i> Get Info</p>
                                </div>
                            </div>

                            <!-- Duration -->
                            <p class="time">
                                3:40
                            </p>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Popular Artist -->
            <section class="popular-artists">
    
                <header><h3 class="font">Popular Artists</h3></header>
                
                <div class="artist-showcase">

                    <!-- Artist 1 -->
                    <div class="artist">
                        <div class="image2">
                            <a href="SinglePlaylistScreen.jsp" title="SinglePlaylistScreen">
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                            </a>
                        </div>
                        <p class="name font">Justin Bieber</p>
                    </div>

                    <!-- Artist 2 -->
                    <div class="artist">
                        <div class="image2">
                            <a href="SinglePlaylistScreen.jsp" title="SinglePlaylistScreen">
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                            </a>
                        </div>
                        <p class="name font">Ed Sheeran </p>
                    </div>

                    <!-- Artist 3 -->
                    <div class="artist">
                        <div class="image2">
                            <a href="SinglePlaylistScreen.jsp" title="SinglePlaylistScreen">
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                            </a>
                        </div>
                        <p class="name font">Weeknd</p>
                    </div>

                    <!-- Artist 4 -->
                    <div class="artist">
                        <div class="image2">
                            <a href="SinglePlaylistScreen.jsp" title="SinglePlaylistScreen">
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                            </a>
                        </div>
                        <p class="name font">Eminem</p>
                    </div>

                    <!-- Artist 5 -->
                    <div class="artist">
                        <div class="image2">
                            <a href="SinglePlaylistScreen.jsp" title="SinglePlaylistScreen">
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                            </a>
                        </div>
                        <p class="name font">Charli Puth</p>
                    </div>

                    <!-- Artist 6 -->
                    <div class="artist">
                        <div class="image2">
                            <a href="SinglePlaylistScreen.jsp" title="SinglePlaylistScreen">
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                            </a>
                        </div>
                        <p class="name font">Alan Walker</p>
                    </div>
                </div>
            </section>
            <!-- ------------------------ -->


            <!-- Music Station -->

            <div class="music-themes">

                <div class="stations">
                    <div id="div1">
                        <img src="assets/image/png3.png" alt="pnglogo">
                        <div id="div2">
                            <i class="fa-solid fa-circle-play"></i>
                            <div><p class="station-name">Stations</p></div>
                        </div>
                    </div>
                </div>

                <div class="theme-main">
                    <div class="theme-content">
                        <img src="assets/image/vibe.jpg">
                        <p>VIBE</p>
                    </div>
                    <div class="theme-content">
                        <img src="assets/image/rock.jpeg">
                        <p>ROCK</p>
                    </div>
                    <div class="theme-content">
                        <img src="assets/image/love2.jpg">
                        <p>LOVE</p>
                    </div>
                    <div class="theme-content">
                        <img src="assets/image/pop.jpg">
                        <p>POP</p>
                    </div>
                    <div class="theme-content">
                        <img src="assets/image/retro.jpg">
                        <p>RETRO</p>
                    </div>
                    <div class="theme-content">
                        <img src="assets/image/gym.jpg">
                        <p>GYM</p>
                    </div>
                </div>

            </div>


            <!-- Music Mood -->

            <div class="music-themes-2">
            
                <div class="outer-div">
                    <div class="inner-div">
                        <span class="linear-wipe">Party</span>
                    </div>
                </div>
                <div class="outer-div">
                    <div class="inner-div">
                        <span class="linear-wipe">Electronic</span>
                    </div>
                </div>
                <div class="outer-div">
                    <div class="inner-div">
                        <span class="linear-wipe">Travel</span>
                    </div>
                </div>
            </div>


            <!-- Latest English -->

            <div class="language english">
                <h3 class="language-heading">
                    LATEST ENGLISH
                </h3>

                <div class="language-content">
                    <div>
                        <img src="assets/image/latest1.jpeg">
                        <p>Anti-Hero</p>
                        <p>Dec, 2022</p>
                    </div>
                    <div>
                        <img src="assets/image/latest2.jpeg">
                        <p>Wine</p>
                        <p>Jan, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/latest3.jpg">
                        <p>Love</p>
                        <p>Dec, 2022</p>
                    </div>
                    <div>
                        <img src="assets/image/latest4.jpg">
                        <p>The 30th</p>
                        <p>Nov, 2022</p>
                    </div>
                    <div>
                        <img src="assets/image/latest5.jpeg">
                        <p>Satellite</p>
                        <p>Jan, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/latest6.jpeg">
                        <p>Loser</p>
                        <p>Feb, 2023</p>
                    </div>
                </div>
            </div>

            <!-- Latest Hindi -->

            <div class="language hindi">
                <h3 class="language-heading">
                    LATEST HINDI
                </h3>

                <div class="language-content">

                    <div>
                        <img src="assets/image/hindi1.jpg">
                        <p>Shree RAM</p>
                        <p>April, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/hindi2.jpg">
                        <p>Bhola</p>
                        <p>April, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/hindi3.jpeg">
                        <p>Company</p>
                        <p>Mar, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/hindi4.jpg">
                        <p>U turn</p>
                        <p>Feb, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/hindi5.jpg">
                        <p>Bairiya</p>
                        <p>Feb, 2023</p>
                    </div>
                    <div>
                        <img src="assets/image/hindi6.jpg">
                        <p>Ghoomey</p>
                        <p>Mar, 2023</p>
                    </div>
                </div>
            </div>

        </div>
        <!-- --------Left Section End---------- -->



        <!-- Right Section -->


        <aside class="aside-section">
           
            <!-- Queue Bar -->
            <div class="heading">
                <div>
                    <h1>Queue</h1>
                </div>

                <div class="queue-main">
                    <h4>
                        <a href="#queue-option-box">Queue <i class="fas fa-chevron-down"></i></a>
                    </h4>

                    <div class="queue-options" id="queue-option-box">
                        <p><a href="SinglePlaylistScreen.jsp" style="color:#007bff; font-weight:bolder;">PLAYLISTS</a></p>
                        <hr>
                        <p><a href="SinglePlaylistScreen.jsp" style="color:#007bff; font-weight:bolder;">RECENT PLAYED</a></p>
                        <hr>
                        <p><a href="#" style="color:red; font-weight:bolder;">CLOSE</a></p>
                    </div>
                </div> 
            </div>

            <!-- Queue Content -->

            <div class="playlist-content">

                <!-- item1 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <!-- index -->
                        <div style="margin-right:4px;">
                            01
                        </div>
                        <div>
                            
                            <img src="assets/image/hindi1.jpg">
                     
                        </div>
                        
                        <div>
                            <h4>
                                Shree RAM
                            </h4>
                            <p>
                                Ajay Atul
                            </p>
                        </div>
                    </div>
                    <!-- like button -->
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>


                <!-- item2 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            02
                        </div>
                        <div>
                            <img src="assets/image/hindi2.jpg">
                        </div>

                        <div>
                            <h4>
                                Bholaa
                            </h4>
                            <p>
                                Amit
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item3 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            03
                        </div>
                        <div>
                            <img src="assets/image/hindi3.jpeg">
                        </div>
                        <div>
                            <h4>
                                Company
                            </h4>
                            <p>
                                Emiway
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                



                <!-- item4 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            04
                        </div>
                        <div>
                            <img src="assets/image/hindi4.jpg">
                        </div>
                        <div>
                            <h4>
                                U turn
                            </h4>
                            <p>
                                Raghav
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item5 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            05
                        </div>
                        <div>
                            <img src="assets/image/hindi5.jpg">
                        </div>
                        <div>
                            <h4>
                                Bairiya
                            </h4>
                            <p>
                                Arijit Singh
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item6 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            06
                        </div>
                        <div>
                            <img src="assets/image/latest6.jpeg">
                        </div>
                        <div>
                            <h4>
                                Loser
                            </h4>
                            <p>
                                Charli Puth
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item7 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            07
                        </div>
                        <div>
                            <img src="assets/image/love.png">
                        </div>
                        <div>
                            <h4>
                                Sorry
                            </h4>
                            <p>
                                Justin Bieber
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>

                <!-- item8 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            08
                        </div>
                        <div>
                            <img src="assets/image/popular-artist2.jpg">
                        </div>
                        <div>
                            <h4>
                                Evergreen
                            </h4>
                            <p>
                               Ed Sheeran
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item9 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            09
                        </div>
                        <div>
                            <img src="assets/image/popular-artist3.jpeg">
                        </div>
                        <div>
                            <h4>
                                Starboy 
                            </h4>
                            <p>
                                Weeknd
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                



                <!-- item10 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            10
                        </div>
                        <div>
                            <img src="assets/image/popular-artist4.jpg">
                        </div>
                        <div>
                            <h4>
                                Stan
                            </h4>
                            <p>
                                Eminem
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                
                <!-- item11 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            11
                        </div>
                        <div>
                            <img src="assets/image/latest2.jpeg">
                        </div>
                        <div>
                            <h4>
                                Wine
                            </h4>
                            <p>
                                Adele
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                

                <!-- item12
                <div class=playlist-item>
                    <div class="left-content">
                        <div>
                            12
                        </div>
                        <div>
                            <img src="assets/image/latest5.jpeg">
                        </div>
                        <div>
                            <h4>
                                Satellite
                            </h4>
                            <p>
                                Khalid
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div> -->
            </div>
        </aside>

        <!-- Queue Menu  -->
        <div class="play-button2">
            <a href="#play-bar5"><i class="fa-solid fa-rectangle-list" style="border:none;"></i></a>
        </div>

        <div id="play-bar5">
            <a href="#"><button>
                Close
              </button>
            </a>

            <h2 class="queue-list">Queue</h2>

            <div class="playlist-content mt">
                <!-- item1 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <!-- index -->
                        <div style="margin-right:4px;">
                            01
                        </div>
                        <div>
                            
                            <img src="assets/image/hindi1.jpg">
                     
                        </div>
                        
                        <div>
                            <h4>
                                Shree RAM
                            </h4>
                            <p>
                                Ajay-Atul
                            </p>
                        </div>
                    </div>
                    <!-- like button -->
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>


                <!-- item2 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            02
                        </div>
                        <div>
                            <img src="assets/image/hindi2.jpg">
                        </div>

                        <div>
                            <h4>
                                Bholaa
                            </h4>
                            <p>
                                Amit
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item3 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            03
                        </div>
                        <div>
                            <img src="assets/image/hindi3.jpeg">
                        </div>
                        <div>
                            <h4>
                                Company
                            </h4>
                            <p>
                                Emiway
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                



                <!-- item4 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            04
                        </div>
                        <div>
                            <img src="assets/image/hindi4.jpg">
                        </div>
                        <div>
                            <h4>
                                U turn
                            </h4>
                            <p>
                                Raghav
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item5 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            05
                        </div>
                        <div>
                            <img src="assets/image/hindi5.jpg">
                        </div>
                        <div>
                            <h4>
                                Bairiya
                            </h4>
                            <p>
                                Arijit Singh
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item6 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            06
                        </div>
                        <div>
                            <img src="assets/image/latest6.jpeg">
                        </div>
                        <div>
                            <h4>
                                Loser
                            </h4>
                            <p>
                                Charli Puth
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item7 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            07
                        </div>
                        <div>
                            <img src="assets/image/love.png">
                        </div>
                        <div>
                            <h4>
                                Sorry
                            </h4>
                            <p>
                                Justin Bieber
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>

                <!-- item8 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            08
                        </div>
                        <div>
                            <img src="assets/image/popular-artist2.jpg">
                        </div>
                        <div>
                            <h4>
                                Evergreen
                            </h4>
                            <p>
                               Ed Sheeran
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                


                <!-- item9 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            09
                        </div>
                        <div>
                            <img src="assets/image/popular-artist3.jpeg">
                        </div>
                        <div>
                            <h4>
                                Starboy 
                            </h4>
                            <p>
                                Weeknd
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                



                <!-- item10 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            10
                        </div>
                        <div>
                            <img src="assets/image/popular-artist4.jpg">
                        </div>
                        <div>
                            <h4>
                                Stan
                            </h4>
                            <p>
                                Eminem
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                
                <!-- item11 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div style="margin-right:4px;">
                            11
                        </div>
                        <div>
                            <img src="assets/image/latest2.jpeg">
                        </div>
                        <div>
                            <h4>
                                Wine
                            </h4>
                            <p>
                                Adele
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
                

                <!-- item12 -->
                <div class=playlist-item>
                    <div class="left-content">
                        <div>
                            12
                        </div>
                        <div>
                            <img src="assets/image/latest5.jpeg">
                        </div>
                        <div>
                            <h4>
                                Satellite
                            </h4>
                            <p>
                                Khalid
                            </p>
                        </div>
                    </div>
                    <div class="right-content">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
            </div>
        </div>
        <!-- Queue Menu Ends -->
        
    </main>
    <!-- Section Ends -->
</body>
</html>
