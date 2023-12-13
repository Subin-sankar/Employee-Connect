<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Boxicons CSS -->
<script src="js/side-bar.js"></script>

<link rel="stylesheet" href="css/side-bar-style.css" />
</head>

<body>
	<!-- navbar -->
	<nav class="navbar">
		<div class="logo_item">
			<i class="bx bx-menu" id="sidebarOpen"></i> <img
				src="images/logo.png" alt=""></i>Employee Connect
		</div>
		<div class="search_bar">
			<input type="text" placeholder="Search" />
		</div>

		<div class="navbar_content">
			<i class="bi bi-grid"></i> <i class='bx bx-sun' id="darkLight"></i> <i
				class='bx bx-bell'></i>


			<div id="profile-icon" class="icon" onclick="toggleMenu()">
				<!-- You can use an image or an icon font for the profile icon -->
				<img src="img/profile.png" alt="Profile Icon">
			</div>

		</div>
		<div id="profile-menu" class="menu">
			<ul>
				<li><a href="#">My Account</a></li>
				<li><a href="#">Sign Out</a></li>


			</ul>
		</div>

	</nav>
	<!-- sidebar -->
	<nav class="sidebar">
		<div class="menu_content">
			<ul class="menu_items">
				<div class="menu_title menu_dahsboard"></div>
				<!-- duplicate or remove this li tag if you want to add or remove navlink with submenu -->
				<!-- start -->
				<li class="item">
					<div href="#" class="nav_link submenu_item">
						<span class="navlink_icon" > <i class="bx bx-home-alt"></i>
						</span> <span class="navlink"><a href="Employee-home.jsp" class="home_nav">Home</a></span> <i
							class="bx bx-chevron-right arrow-left"></i>
					</div>
					<ul class="menu_items submenu">
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
					</ul>
				</li>
				<!-- end -->
				<!-- duplicate this li tag if you want to add or remove navlink with submenu -->
				<!-- start -->
				<li class="item">
					<div href="#" class="nav_link submenu_item">
						<span class="navlink_icon"> <i class="bx bx-grid-alt"></i>
						</span> <span class="navlink">Overview</span> <i
							class="bx bx-chevron-right arrow-left"></i>
					</div>
					<ul class="menu_items submenu">
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
						<a href="#" class="nav_link sublink">Nav Sub Link</a>
					</ul>
				</li>
				<!-- end -->
			</ul>










			<ul class="menu_items">
				<div class="menu_title menu_setting"></div>
				<li class="item"><a href="#" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-flag"></i>
					</span> <span class="navlink">Attendance</span>
				</a></li>
				<li class="item"><a href="leaveTracker.jsp" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-medal"></i>
					</span> <span class="navlink">Leave Tracker</span>
				</a></li>
				<li class="item"><a href="#" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-cog"></i>
					</span> <span class="navlink">Reimbursement</span>
				</a></li>
				<li class="item"><a href="#" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-layer"></i>
					</span> <span class="navlink">Announcements</span>
				</a></li>
				<li class="item"><a href="#" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-layer"></i>
					</span> <span class="navlink">Cases</span>
				</a></li>
				<li class="item"><a href="#" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-layer"></i>
					</span> <span class="navlink">Files</span>
				</a></li>
				<li class="item"><a href="#" class="nav_link"> <span
						class="navlink_icon"> <i class="bx bx-layer"></i>
					</span> <span class="navlink">Perfomance</span>
				</a></li>
			</ul>
			<!-- Sidebar Open / Close -->
			<div class="bottom_content">
				<div class="bottom expand_sidebar">
					<span> Expand</span> <i class='bx bx-log-in'></i>
				</div>
				<div class="bottom collapse_sidebar">
					<span> Collapse</span> <i class='bx bx-log-out'></i>
				</div>
			</div>
		</div>
	</nav>

</body>

</html>