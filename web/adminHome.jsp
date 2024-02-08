<%-- 
    Document   : adminHome
    Created on : Aug 13, 2023, 4:34:09 PM
    Author     : Dilmith Siriwardena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/adminHome.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        
         <section class="main">
      <div class="header">
        <h1>ADMIN DASHBOARD</h1>
      </div>
      

      <div class="card-section">

      <div class="card">
          <img src="images/vegetable.jpg">
          <h4>VEGETABLES</h4>
          
          <div class="button">
          <a href="adminPage.jsp">View</a>
          </div>
        </div>

        <div class="card">
          <img src="images/meats.jpg">
          <h4>MEATS</h4>
          <div class="button">
          <a href="adminPage2.jsp">View</a>

          </div>
        </div>

        <div class="card">
          <img src="images/diary.jpg">
          <h4>DAIRY PRODUCTS</h4>
          <div class="button">
          <a href="adminPage3.jsp">View</a>
          </div>
        </div>

    </div>
     </section>
        
        
      <div class="table">


       <div class="table-header">

      <h1 style="margin: 10px;">Feedbacks</h1>

      </div>
        
        
        <table id="product-tbl" class="table table-responsive table bordered" >
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Message</th>
                   
                    
                </tr>
                
                
                <%
                   
                 Connection con;
                 PreparedStatement pst;
                 ResultSet rs;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
                 
                 String query = "select * from feedbacks";
                 Statement st = con.createStatement();
                 
                 rs = st.executeQuery(query);
                 
                 while(rs.next())
                         {
                             String id = rs.getString("id");
                         

                 %>
                
                
                <tr>
                    <td><%=rs.getString("firstName") %></td>
                    <td><%=rs.getString("lastName") %></td>
                    <td><%=rs.getString("email") %></td>
                    <td><%=rs.getString("Message") %></td>          
                    
                </tr> 
                
                <%
                    
                 }
                %>
                
            </thead>
            
        </table>
       
        </div>

    </div>
        
        
    </body>
</html>
