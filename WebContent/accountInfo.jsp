<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Account Info</title>
		<link rel="stylesheet" type="text/css" href="style/accountLeft.css"/>
        <link rel="stylesheet" type="text/css" href="style/header.css" />
        <link rel="stylesheet" type="text/css" href="style/footer.css"/>
        <link rel="stylesheet" type="text/css" href="style/accountInfo.css"/>
		<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>	</head>
	<body>
	<%
		String username = (String) request.getAttribute("username");
		String profileImage = (String) request.getAttribute("profileImage");
	
		String firstName = (String) request.getAttribute("firstName");
		String lastName = (String) request.getAttribute("lastName");
		String email = (String) request.getAttribute("email");
		String location = (String) request.getAttribute("location");
	%>
	 <div name="headerContainer" id="headerContainer">
            <div class="header" name="header" id="header">
                <img src="stock%20images/barterlogo.png" name="barterLogoThumbnail" id="barterLogoThumbnail">
                
                <form name="searchForm" id="searchForm">
                    <input name="searchBar" id="searchBar" type="text" placeholder="Search Barters"><button type="submit" style="border:none; display:inline;vertical-align:middle;"><i class="fas fa-search" style="font-size: 200%;"></i></button>
                </form>
                
                <div id="linkContainer" name="linkContainer">
                    <a class="headerButtons" name="button1" id="button1" href="">button1</a>

                    <a class="headerButtons" name="button2" id="button2" href="">button2</a>

                    <a class="headerButtons" name="button3" id="button3" href="">button3</a>

                    <a class="headerButtons" name="button4" id="button4" href="">button4</a>
                </div>
                
            </div>
        </div>
		
		<div id="mainContainer"> 
			<div id="leftContainer">
				<div id="userHeader">
					<div id="imgDiv"> 
						<img src="<%=profileImage %>" id="userImg">
					</div>
					<div id="nameDiv"><%=username %>'s account</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
				
				<div id="accountInfoDiv">
					<div class="headers">Account Information</div>
					<div class="buttonDiv">
						<a href="DisplayAccountInfo" class="anchorBtn textStyle">View/Edit Info</a>
					</div>
					<div class="buttonDiv">
						<a href="#" class="anchorBtn textStyle">Change Password</a>
					</div>
				</div>
				
				<div id="inventoryDiv">
					<div class="headers">Barter Inventory</div>
					<div class="buttonDiv">
						<a href="DisplayInventory" class="anchorBtn textStyle">View Inventory</a>
					</div>
				</div>
				
				<div id="tradesDiv">
					<div class="headers">Trades</div>
					<div class="buttonDiv">
						<a href="EditTrades" class="anchorBtn textStyle">Edit Trades</a>
					</div>
				</div>
				
				<div id="delete">
					<div class="headers">Delete</div>
					<div class="buttonDiv" id="deleteBtn">
						<a href="DeleteAccount" class="anchorBtn textStyle">Delete Account</a>
					</div>
				</div>
			</div>
			<div id="rightContainer">
				<div id="accountInfoHeader" class="detailHeader">
					Account Information
				</div>
				<div class="infoDiv">
					<div class="titleFont">First Name: </div>
					<div class="infoFont"><%=firstName %></div>
				</div>
				<div class="clear"></div>

				<div class="infoDiv">
					<div class="titleFont">Last Name: </div>
					<div class="infoFont"><%=lastName %></div>
				</div>
				<div class="clear"></div>

				<div class="infoDiv">
					<div class="titleFont">Email: </div>
					<div class="infoFont"><%=email %></div>
				</div>
				<div class="clear"></div>

				<div class="infoDiv">
					<div class="titleFont">Location: </div>
					<div class="infoFont"><%=location %></div>
				</div>
				<div class="clear"></div>

				<div class="infoDiv">
					<div class="titleFont">Username: </div>
					<div class="infoFont"><%=username %></div>
				</div>
				<div class="clear"></div>

				<!-- <div class="infoDiv">
					<div class="titleFont">Change Picture</div>
					<div class="buttonDiv" id="changeBtn">
						<a href="#" class="anchorBtn textStyle">Change</a>
					</div>
				</div>
				<div class="clear"></div> -->
				
				<div class="buttonDiv">
					<a href="#" class="anchorBtn textStyle">Edit Info</a>
				</div>

			</div>
		</div>
	</body>
</html>