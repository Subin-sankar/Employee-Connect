<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="commonHeadder.jsp" %>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/leave.css">

    <title>Leave tracker</title>
</head>

<body>
    <div class="container">
        <div class="nav_bar">
            <div class="profile">
                <img src="img/profile.png" alt="" srcset="" width="100px" height="55px" class="img_user">
                <h3 for="user">Subin Sankar</h3>
            </div>
            <div class="calender">
                <div onclick="previousMonth()">❮</div>
                <h2 id="dateRange"></h2>
                <div onclick="nextMonth()">❯</div>
            </div>

        </div>
        <div class="leave_cards cover">
            <button class="left" onclick="leftScroll()">
			<<            
			</button>	
            <div class="scroll-images">
                <div class="card">

                    <h4>Card 1</h4>
                </div>
                <div class="card">

                    <h4>Card 2</h4>
                </div>
                <div class="card">

                    <h4>Card 3</h4>
                </div>
                <div class="card">

                    <h4>Card 4</h4>
                </div>
                <div class="card">

                    <h4>Card 5</h4>
                </div>
                <div class="card">

                    <h4>Card 6</h4>
                </div>
                <div class="card">

                    <h4>Card 7</h4>
                </div>
            </div>
            <button class="right" onclick="rightScroll()">
                >>
            </button>
        </div>
        <div class="all_leave">

            <div class="all_leave_card">

                <h4>Card 5</h4>
            </div>

        </div>
    </div>
    <script src="js/scroll.js">
    </script>
    <script src="js/calender.js">
    </script>

</html>                       