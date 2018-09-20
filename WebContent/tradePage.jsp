<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <head>
        <title>Current Barters</title>
        <link href="style/tradePage.css" type="text/css" rel="stylesheet" />
        <link href="style/header.css" type="text/css" rel="stylesheet" />
        <link href="style/footer.css" type="text/css" rel="stylesheet" />
        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
    </head>
   
    <body>
        
        <div name="headerContainer" id="headerContainer">
            <div class="header" name="header" id="header">
                <a href=""><img src="stock%20images/barterlogo.png" name="barterLogoThumbnail" id="barterLogoThumbnail"></a>
                
                <form name="searchForm" id="searchForm">
                    <input name="searchBar" id="searchBar" type="text" placeholder="Search Barters"><button type="submit" id="searchButton"><i class="fas fa-search" id="searchIcon" style="font-size: 200%;"></i></button>
                </form>
                
                <div id="linkContainer" name="linkContainer">
                    <a class="headerButtons" name="button1" id="button1" href="">button1</a>

                    <a class="headerButtons" name="button2" id="button2" href="">button2</a>

                    <a class="headerButtons" name="button3" id="button3" href="">button3</a>

                    <a class="headerButtons" name="button4" id="button4" href="">button4</a>
                    
                    <a class="headerButtons" name="button5" id="button5" href="" style="display: none;">button5</a>

                    <a class="headerButtons" name="button6" id="button6" href="" style="display: none;">button6</a>
                </div>
        
            </div>
        </div>
        <br />
        
        <div name="mainContent" id="mainContent" style="margin-top:80px; margin-bottom:40px;">
        
            <p id="tradePageHeading">username's Trades</p>

            <div name="onGoingTradesContainer" id="onGoingTradesContainer">
                <p class="innerHeading">
                    Ongoing Trades
                </p>
                
                <div name="tableTradeContainer" id="tableTradeContainer">
                    <table name="onGoingTradesTable" id="onGoingTradesTable">
                        
                    <!-- IF VIEWING A TRADE "FROM" SOMEONE -->
                    <tr class="anOnGoingTrade">
                        <td name="onGoingTradeItem" id="onGoingTradeItem">
                            <a href="" class="tradeItemLink">
                                <div class="fromLabel">FROM: Trader Name</div><div class="dateLabel">XX.XX.XX</div><br />
                                <div class="tradeDescription">Item Name for Item Name</div><br />
                            </a>
                        </td>
                    </tr>
                        
                    <!-- IF VIEWING A TRADE "TO" SOMEONE -->
                    <tr class="anOnGoingTrade">
                        <td name="onGoingTradeItem" id="onGoingTradeItem">
                            <a href="" class="tradeItemLink">
                                <div class="toLabel">TO: Trader Name</div><div class="dateLabel">XX.XX.XX</div><br />
                                <div class="tradeDescription">Item Name for Item Name</div><br />
                            </a>
                        </td>
                    </tr>
                        
                        
                    <!-- add more trades to column here -->
                    
                        
                </table>
                </div>
                
            </div>

            <div name="offerContainer" id="offerContainer">
                <p class="innerHeading" style="width: 100%;">Offer</p>
                    <div name="offerContents" id="offerContents">

                        <table name="itemTable" id="itemTable">
                            <tr>
                                <td>
                                    <img src="stock%20images/blackbox.png" name="yourItemImg" id="yourItemImg">
                                    <p class="itemName" style="float: left;">Your Item</p>
                                </td>
                                <td>
                                    <img src="stock%20images/tradearrow.png" name="arrow" id="arrow">
                                </td>
                                <td>
                                    <img src="stock%20images/blackbox.png" name="traderItemImg" id="traderItemImg">
                                    <p class="itemName" style="float: right;">Trader's Item</p>
                                </td>
                            </tr>
                        </table>
                        <br />

                        <table name="acceptRejectTable" id="acceptRejectTable">
                            <tr>
                                <!-- IF VIEWING A TRADE "FROM" SOMEONE -->
                                <td>
                                    <button class="tradeButton" id="accept" name="accept">accept</button>
                                </td>
                                <td>
                                    <button class="tradeButton" id="reject" name="reject">reject</button>
                                </td>
                                
                                <!-- IF VIEWING A TRADE "TO" SOMEONE -->
                                <td>
                                    <button class="tradeButton" id="send" name="send">send</button>
                                </td>
                                
                                <!-- IF VIEWING A SENT TRADE "TO" SOMEONE -->
                                <td>
                                    <button class="tradeButton" id="sent" name="sent">sent</button>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div>
            </div>

            <div name="rightHandContainer" id="rightHandContainer">
                <!-- IF VIEWING A TRADE "FROM" SOMEONE -->
                <p class="innerHeading" id="aboutMessage">About the Trader</p>
                
                <!-- IF VIEWING A TRADE "TO" SOMEONE -->
                <p class="innerHeading" id="inventoryMessage">Available Inventory</p>
                
                
                <!-- IF VIEWING A TRADE "FROM" SOMEONE -->
                <table id="traderInfoTable" name="traderInfoTable">
                    <tr>
                        <td class="traderInfoTD">
                            <img src="stock%20images/blackbox.png" id="traderThumb" name="traderThumb">
                        </td>
                    </tr>
                    <tr>
                        <td class="traderInfoTD">
                            <br /><span class="traderInfo">Trader Name</span><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="traderInfoTD">
                            <span class="traderInfo" style="font-size: 18px; color: #4A4A4A;">Zip Code</span><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="traderInfoTD">
                            <span class="traderInfo" style="font-size: 18px; color: #4A4A4A;">X.XX Rating</span><br />
                        </td>
                    </tr>
                </table>
                
                <!-- IF VIEWING A TRADE "TO" SOMEONE -->
                <div name="inventoryTableContainer" id="inventoryTableContainer">
                    
                    <!-- IF TRADE HAS NOT BEEN SENT ALREADY -->
                    <label class="container">Item One
                      <input type="radio" checked="checked" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Two
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Three
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Four
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Five
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Six
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Seven
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Item Eight
                      <input type="radio" name="radioInventory">
                      <span class="checkmark"></span>
                    </label>
                    
                    <!-- populate more inventory items here -->
                    
                    <!-- IF TRADE HAS BEEN SENT ALREADY -->
                    <p name="tradeSentMessage" id="tradeSentMessage">Trade Sent.</p>
                    
                </div>

            </div>

            <br />
            <div name="messagesContainer" id="messagesContainer">
                <div name="tableContainer" id="tableContainer">
                    <table name="messagesTable" id="messagesTable">
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">username:</div></td>
                            <td class="messageTD"><div name="message" id="message">ah jeez rick</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                        <tr>
                            <td class="messageTD"><div name="senderName" id="senderName">traderusername:</div></td>
                            <td class="messageTD"><div name="message" id="message">oh hi mark</div></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div name="sendMessageContainer" id="sendMessageContainer">
                    <div name="sendMessageInner" id="sendMessageInner">
                        <form name="sendMessage" id="sendMessage">
                            <input type="text" name="sendMessageInput" id="sendMessageInput" placeholder="Compose Message ...">
                            <input type="submit" value="Send" id="sendButton">
                        </form>
                    </div>
            </div>
        
        </div>
            
        <br />
        <div name="footerContainer" id="footerContainer">
            <div class="footer" name="footer" id="footer">
                <span name="copyright" id="copyright">copyright Barter 2018</span>
                <a name="contactUs" id="contactUs" href="">Contact Us</a>
            </div>
        </div>
        
    </body>
</html>