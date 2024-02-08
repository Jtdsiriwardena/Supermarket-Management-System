<%-- 
    Document   : home
    Created on : Aug 12, 2023, 11:11:55 PM
    Author     : Dilmith Siriwardena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% 
    if(request.getParameter("submit")!=null)
    {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
        pst = con.prepareStatement("insert into feedbacks(firstName,lastName,email,message)values(?,?,?,?)");
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, email);
        pst.setString(4, message);
        pst.executeUpdate();
        
        %>
        <script>
            alert("Your Feedback Submitted Successfully");
        </script>
                  
        
        <%
    }   
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <!--Animate css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>
        
        <!-- header section starts  -->

<header>

    <section class="nav-area">


        <a href="#" class="logo"><b>FARMORY <span><i>Grocer.</i></span></b></a>

        <nav class="navbar">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#category">Shop By Category</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#contact">Contact Us</a></li>
            </ul>
        </nav>


    </section>

</header>


<!-- home section starts  -->

<div class="home-area">

    <section class="home" id="home">
  
        
    </section>


</div>



<!-- offer section starts  -->

<section class="category" id="category">

<h1 class="heading">Shop By Category</h1>    

<div class="card-section">

    <div class="card">
        <img src="images/vegetable.jpg" alt="">
        
        <div class="content">
            <h2 class="title">Vegetables</h2>
            <a href="products.jsp"><button class="btn">View</button></a>
           
        </div>
    </div>


    <div class="card">
        <img src="images/meats.jpg" alt="">
        
        <div class="content">
            <h2 class="title">Meats</h2>
            <a href="products2.jsp"><button class="btn">View</button></a>
            
        </div>
    </div>


    <div class="card">
        <img src="images/diary.jpg" alt="">
        
        <div class="content">
            <h2 class="title">Dairy Products</h2>
            <a href="products3.jsp"><button class="btn">View</button></a>
            
        </div>
    </div>



</div>

</section>

 <h2 id="C4" class="heading">ABOUT<span>US</span></h2><br>
 
<div class="aboutus">

        <div class="about">
            <h2 style="text-align:center;" class="animate__animated animate__bounce animate__slow animate__infinite"> WELCOME TO FARMORY Grocer !</h2>
       
        <p align="center">
             <br> Spare more with ‘FARMORY Grocer’ <br>
             We give you the most minimal costs on the entirety of your farmory needs. <br> 
            ‘FARMORY Grocer’ is a low-cost online general store that gets farmory items crosswise over classifications <br> 
             like meats, diary products and vegetables conveyed to your doorstep.<br> 
       </p>
       
       </div>
       </div>
        
<!-- feedback section starts  -->

<div class="feedback" id="feedback">
    <div class="title">
        <h2>Your Feedbacks</h2>
    </div>




        <!--Give a Feedback-->

        <div class="section">
            <h3>Send a Message</h3>
            <form method="post" action="#" >
                <div class="message">
                    <div class="line">

                        <div class="area">
                            <span>First Name</span>
                            <input type="text" name="fname" id="fname">
                        </div>

                        <div class="area">
                            <span>Last Name</span>
                            <input type="text" name="lname" id="lname">
                        </div>
                    </div>

                    <div class="line">
                        <div class="area">
                            <span>Email</span>
                            <input type="text"  size="100" name="email" id="email">
                        </div>
                    </div>

                    <div class="para">
                    <div class="area">
                        <span>Message</span>
                        <textarea name="message" id="message" cols="50" rows="10" placeholder="Write Your Feedback..."></textarea>
                    </div>
                </div>

                <div class="para">
                    <div class="area">
                        
                        <input type="submit" placeholder="Send" id="submit" name="submit" >
                    </div>
                </div>
                </div>
            </form>
        </div>
    </div>


<!--contact details section-->

<div class="con-details" id="contact">

    <h3>Contact Us</h3>

    <div class="details">

        <div class="lines">
            <span><ion-icon name="location-outline"></ion-icon></span>
            <p>No 350, Temple Road, Nugegoda, Sri Lanka</p>
        </div>

        <div class="lines">
            <span><ion-icon name="mail-outline"></ion-icon></span>
            <a href="mailto:alphalearner@gmail.com">FarmoryGrocer@gmail.com</a>
        </div>

        <div class="lines">
            <span><ion-icon name="call-outline"></ion-icon></span>
            <a href="tel:+91987654310">+91 98 76 54 310 </a>
        </div>

        </div>
</div>

    </body>
</html>
