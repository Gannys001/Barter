<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
    <body>
        
        <div name="headerContainer" id="headerContainer">
            <div class="header" name="header" id="header">
                <img src="" name="barterLogoThumbnail" id="barterLogoThumbnail">
                
                <form name="searchBar" id="searchBar" style="position:fixed; top: 2%; display:inline;">
                    <input type="text" placeholder="Search Barters"><button type="submit">search</button>
                </form>
                
                <div id="linkContainer" name="linkContainer" style="display:inline;float:right;">
                    <a name="button1" id="button1" href="">button1</a>

                    <a name="button2" id="button2" href="">button2</a>

                    <a name="button3" id="button3" href="">button3</a>

                    <a name="button4" id="button4" href="">button4</a>
                </div>
                
            </div>
        </div>
        <br />
        
        <form name="signUpForm">
            <p style="font-weight:bold;">Sign Up</p>
            
            <label class="signUpLabel">first name</label><input type="text" id="firstName" name="firstName"><br />
            
            <label class="signUpLabel">last name</label><input type="text" id="lastName" name="lastName"><br />
            
            <label class="signUpLabel">email</label><input type="text" id="email" name="email"><br />
            
            <label class="signUpLabel">profile picture</label><input type="file" name="profilePicture"><br />
            
            <label class="signUpLabel">location (zip)</label><input type="text" name="location"><br />
            
            <label class="signUpLabel">username</label><input type="text" name="username"><br />
            
            <label class="signUpLabel">password</label><input type="text" name="password"><br />
            
            <label class="signUpLabel">confirm password</label><input type="text" name="confirmPassword"><br />
            
            <br />
            <input type="submit" value="sign up"><br />
        </form>
        
        <br />
        <div name="footerContainer" id="footerContainer">
            <div class="footer" name="footer" id="footer" style="width:100%; position:fixed; bottom:2%; text-align:center;">
                <span name="copyright" id="copyright">copyright Barter 2018</span>
                <a name="contactUs" id="contactUs" href="">Contact Us</a>
            </div>
        </div>
        
    </body>
</html>