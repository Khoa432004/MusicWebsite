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
    <title>PlayList</title>
    <script src="https://kit.fontawesome.com/43fad9bb16.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Lora|Ubuntu: 300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons" media="all">
    <a target="_blank" href="https://icons8.com/icon/Q6YxSYNunbwV/laptop-settings"></a>
    
    <link rel="stylesheet" href="assets/css/Single-playlist.css">
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
                <a href="Home.jsp" style="text-decoration: none; color: white; ">
                    <h2>R.K.S</h2>
                    <h5>Studio</h5>
                </a>
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

            <!-- Profile -->
            <div class="profile-picture">
                <img src="assets/image/myphoto.jpeg">
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

    <main>
        <!-- aside section 1 -->
        <aside class="aside section-1">
            
            <div class="band">
                <div class= "band-image">
                </div>

                <div class="band-detail">
            
                    <div class="descriptive-part">
                        <div class="song-name-main">
                            <h1>ColdPlay</h1>
                        </div>
                        <div class="followers">
                            851 Followers
                        </div>
                        <p class="author">British Band</p>
                        
                        <p class="desc">
                            Coldplay is a British music band that has enjoyed
							continuous succeess since their inception in 1996 through
							their intelligent and soulful songs. The band members are
							Chris Martin (lead vocals), Jonny Buckland (lead guitar),
							Guy Berryman (bass guitar) and Will Champion (drums).
                        </p>
                    </div>
                    <div class="action-part">
                        
                        <div class="btns">
                            <button class="glow-on-hover" type="button">Play All</button>
                            <button>Follow</button>
                        </div>
                        <p>
                            247 Tracks | 128 Albums
                        </p>
                    </div>
                </div>
            </div>

             
             <div class="playlist-items">
                <!-- playlist item1 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            01
                        </div>
                        <div>
                            <img src="assets/image/hindi1.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Jai Shree RAM
                            </h5>
                            <p>
                                Ajay Atul
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        3:38
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>

                <!-- playlist item2 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            02
                        </div>
                        <div>
                            <img src="assets/image/hindi2.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Bholaa
                            </h5>
                            <p>
                                Amit
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        3:44
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
                <!-- playlist item -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            03
                        </div>
                        <div>
                            <img src="assets/image/latest4.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                The 30th
                            </h5>
                            <p>
                                Billie Eilish
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        2:55
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>

                <!-- playlist item4 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            04
                        </div>
                        <div>
                            <img src="assets/image/latest5.jpeg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Satellite
                            </h5>
                            <p>
                                Khalid
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        3:57
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>

                <!-- playlist item5 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            05
                        </div>
                        <div>
                            <img src="assets/image/latest6.jpeg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Loser
                            </h5>
                            <p>
                                Charli Puth
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        4:01
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
                <!-- playlist item6 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            06
                        </div>
                        <div>
                            <img src="assets/image/marshmello.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Happier
                            </h5>
                            <p>
                                Marshmello
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        3:59
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
                <!-- playlist item7 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            07
                        </div>
                        <div>
                            <img src="assets/image/love.png">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                               Alone
                            </h5>
                            <p>
                                Justin Bieber
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        2:49
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
                <!-- playlist item8 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            08
                        </div>
                        <div>
                            <img src="assets/image/popular-artist2.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Sorry
                            </h5>
                            <p>
                                Justin Bieber
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        3:38
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>

                <!-- playlist item9 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            09
                        </div>
                        <div>
                            <img src="assets/image/weeknd.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                StartBoy
                            </h5>
                            <p>
                                Weeknd
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        3:20
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
                <!-- playlist item10 -->
                <div class="playlist-item">
                    <div class="left">
                        <div>
                            10
                        </div>
                        <div>
                            <img src="assets/image/popular-artist4.jpg">
                            <div class="play-btn">
                                <i class="fas fa-play"></i>
                            </div>
                        </div>
                        <div>
                            <h5>
                                Stan
                            </h5>
                            <p>
                                Eminem
                            </p>
                        </div>
                    </div>
                    <div class="center">
                        4:10
                    </div>
                    <div class="right">
                        <div>
                            <i class="far fa-heart"></i>
                        </div>
                        <div>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
                
            </div>
        </aside>
        <!-- ---------------------------- -->



        <!-- Section 2 -->
        <aside class="aside section-2">

            <div class="similar">
                
                <div class="section-heading" style="margin-top: 0px;">
                    <h1>Similar Artists</h1>
                    <div class="view-all-button">
                        View All
                    </div>
                </div>
                
                <div class="list">
                    <!-- item1 -->
                    <div class="list-item">
                        <div>
                            <img src="assets/image/latest1.jpeg">
                        </div>
                        <div style="position: absolute; left:120px;">
                            <h5>
                                Anti-Hero
                            </h5>
                            <p class="author-name">
                                Taylor Swift
                            </p>
                        </div>
                        <div class="extra">
                            <div>
                                <i class="fas fa-ellipsis-h"></i>
                            </div>
                            <p class="author-name">
                                3:50
                            </p>
                        </div>
                    </div>
                    <!-- item2 -->
                    <div class="list-item">
                        <div>
                            <img src="assets/image/latest2.jpeg">
                        </div>
                        <div style="position: absolute; left:120px;">
                            <h5>
                                Wine
                            </h5>
                            <p class="author-name">
                                Adele
                            </p>
                        </div>
                        <div class="extra">
                            <div>
                                <i class="fas fa-ellipsis-h"></i>
                            </div>
                            <p class="author-name">
                                4:10
                            </p>
                        </div>
                    </div>

                    <!-- item3 -->
                    <div class="list-item">
                        <div>
                            <img src="assets/image/hindi3.jpeg">
                        </div>
                        <div style="position: absolute; left:120px;">
                            <h5>
                                Company
                            </h5>
                            <p class="author-name">
                                Emiway
                            </p>
                        </div>
                        <div class="extra">
                            <div>
                                <i class="fas fa-ellipsis-h"></i>
                            </div>
                            <p class="author-name">
                                3:24
                            </p>
                        </div>
                    </div>
                </div>

                <!-- recently played section -->
                <div class="similar">
                    <div class="section-heading recent-played">
                        <h1>Recently Played</h1>
                        <div class="view-all-button">
                            View All
                        </div>
                    </div>
                    
                    <div class="list">
                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    01
                                </div>
                                <div>
                                    <img src="assets/image/hindi4.jpg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        U turn
                                    </h5>
                                    <p>
                                        Raghav
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>

                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    02
                                </div>
                                <div>
                                    <img src="assets/image/hindi5.jpg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Bairiya
                                    </h5>
                                    <p>
                                        Arijit Singh
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>

                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    03
                                </div>
                                <div>
                                    <img src="assets/image/hindi6.jpg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Ghoomey
                                    </h5>
                                    <p>
                                        Anup Roy
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>
                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    04
                                </div>
                                <div>
                                    <img src="assets/image/latest1.jpeg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Anti-Hero
                                    </h5>
                                    <p>
                                        Taylor Swift
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>

                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    05
                                </div>
                                <div>
                                    <img src="assets/image/latest2.jpeg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Wine
                                    </h5>
                                    <p>
                                        Adele
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>

                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    06
                                </div>
                                <div>
                                    <img src="assets/image/latest3.jpg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Love
                                    </h5>
                                    <p>
                                        Justin Bieber
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>
                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    07
                                </div>
                                <div>
                                    <img src="assets/image/latest4.jpg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        The 30th
                                    </h5>
                                    <p>
                                        Billie Eilish
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>
                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    08
                                </div>
                                <div>
                                    <img src="assets/image/latest5.jpeg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Statellite
                                    </h5>
                                    <p>
                                        Khalid
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>
                        <!-- item -->
                        <div class="playlist-item">
                            <div class="left" style="width: 60%;">
                                <div>
                                    09
                                </div>
                                <div>
                                    <img src="assets/image/latest6.jpeg">
                                    <div class="play-btn">
                                        <i class="fas fa-play"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>
                                        Loser
                                    </h5>
                                    <p>
                                        Charli Puth 
                                    </p>
                                </div>
                            </div>
                            <div class="right">
                                <div>
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
    </main> 

    <!-- Queue Menu After 900px -->
    <div class="play-button">
        <a href="#play-bar6"><i class="fa-solid fa-rectangle-list" style="border:none"></i></a>
    </div>

    <div id="play-bar6">
        <a href="#" class="close">
        </a>

        <div class="similar" style="padding: 1rem;">
                
            <div class="section-heading">
                <h1>Similar Artists</h1>
                <div class="view-all-button">
                    View All
                </div>
            </div>
            
            <div class="list">
                <!-- item -->
                <div class="list-item">
                    <div>
                        <img src="assets/image/latest1.jpeg">
                    </div>
                    <div style="position: absolute; left:120px;">
                        <h5>
                            Anti-Hero
                        </h5>
                        <p class="author-name">
                            Taylor Swift
                        </p>
                    </div>
                    <div class="extra">
                        <div>
                            <i class="fas fa-ellipsis-h"></i>
                        </div>
                        <p class="author-name">
                            3:50
                        </p>
                    </div>
                </div>
                <!-- item -->
                <div class="list-item">
                    <div>
                        <img src="assets/image/latest2.jpeg">
                    </div>
                    <div style="position: absolute; left:120px;">
                        <h5>
                            Wine
                        </h5>
                        <p class="author-name">
                            Adele
                        </p>
                    </div>
                    <div class="extra">
                        <div>
                            <i class="fas fa-ellipsis-h"></i>
                        </div>
                        <p class="author-name">
                            4:10
                        </p>
                    </div>
                </div>
                <!-- item -->
                <div class="list-item">
                    <div>
                        <img src="assets/image/hindi3.jpeg">
                    </div>
                    <div style="position: absolute; left:120px;">
                        <h5>
                            Company
                        </h5>
                        <p class="author-name">
                            Emiway
                        </p>
                    </div>
                    <div class="extra">
                        <div>
                            <i class="fas fa-ellipsis-h"></i>
                        </div>
                        <p class="author-name">
                            4:44
                        </p>
                    </div>
                </div>
            </div>

            <!-- recently played section -->
            <div class="similar">
                <div class="section-heading">
                    <h1>Recently Played</h1>
                    <div class="view-all-button">
                        View All
                    </div>
                </div>
                
                <div class="list">
                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                01
                            </div>
                            <div>
                                <img src="assets/image/hindi4.jpg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    U turn
                                </h5>
                                <p>
                                    Raghav
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>

                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                02
                            </div>
                            <div>
                                <img src="assets/image/hindi5.jpg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Bairiya
                                </h5>
                                <p>
                                    Arijit Singh
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>

                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                03
                            </div>
                            <div>
                                <img src="assets/image/hindi6.jpg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Ghoomey
                                </h5>
                                <p>
                                    Anup Roy
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>
                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                04
                            </div>
                            <div>
                                <img src="assets/image/latest1.jpeg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Anti-Hero
                                </h5>
                                <p>
                                    Taylor Swift
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>

                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                05
                            </div>
                            <div>
                                <img src="assets/image/latest2.jpeg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Wine
                                </h5>
                                <p>
                                    Adele
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>

                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                06
                            </div>
                            <div>
                                <img src="assets/image/latest3.jpg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Love
                                </h5>
                                <p>
                                    Justin Bieber
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>
                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                07
                            </div>
                            <div>
                                <img src="assets/image/latest4.jpg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    The 30th
                                </h5>
                                <p>
                                    Billie Eilish
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>
                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                08
                            </div>
                            <div>
                                <img src="assets/image/latest5.jpeg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Statellite
                                </h5>
                                <p>
                                    Khalid
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>
                    <!-- item -->
                    <div class="playlist-item">
                        <div class="left" style="width: 60%;">
                            <div>
                                09
                            </div>
                            <div>
                                <img src="assets/image/latest6.jpeg">
                                <div class="play-btn">
                                    <i class="fas fa-play"></i>
                                </div>
                            </div>
                            <div>
                                <h5>
                                    Loser
                                </h5>
                                <p>
                                    Charli Puth 
                                </p>
                            </div>
                        </div>
                        <div class="right">
                            <div>
                                <i class="far fa-heart"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Music Player -->

    <footer>
        <div class="active-song-description">
            
            <div id="song-image">
                <img src="assets/image/hindi1.jpg">
            </div>
            
            <div class="song-desc">
                <div>
                    <marquee behavior="scroll" direction="left" scrollamount="15" scrolldelay="500"><h3>Jai Shree RAM</h3></marquee>
                </div>
                <div>
                    Ajay Atul
                </div>
            </div>
                
            <div class="heart-and-ban-icon">
                <span>
                    <i class="far fa-heart"></i>
                </span>
                <span>
                    <i class="fas fa-ban"></i>
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
                    0:39
                </div>
                <div class="slidecontainer">
                    <input type="range" min="0" max="100" value="0" class="slider" id="myRange">
                </div>
                
                <div class="time">
                    4:44
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
                <input type="range" min="0" max="100" value="0" class="slider" id="myRange" style="margin-top:0px;">
            </div>
            <div>
                <i class="fas fa-expand-alt"></i>
            </div>
        </div>
    </footer>


</body>
</html>
