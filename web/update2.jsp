<%-- 
    Document   : update
    Created on : Aug 12, 2023, 7:20:12 PM
    Author     : Dilmith Siriwardena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("pname");
        String price = request.getParameter("pprice");
        String category = request.getParameter("category");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
        pst = con.prepareStatement("update products2 set productName = ?,productPrice = ?,Category = ? where id = ?");
        pst.setString(1, name);
        pst.setString(2, price);
        pst.setString(3, category);
        pst.setString(4, id);
        pst.executeUpdate();
        
        %>
        <script>
            alert("Record Updated Successfully");
        </script>
                  
        
        <%
    }   
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
            body{
                margin:10px; 
                padding:10px;
                box-sizing: border-box;
                border:none; 
                outline: none;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <h1>Product Update</h1>
        
         <form method="POST" action="#">
             
             <%
          Connection con;
          PreparedStatement pst;
          ResultSet rs;
        
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
             
          String id = request.getParameter("id");
          
          pst = con.prepareStatement("select * from products2 where id = ?");
          pst.setString(1, id);
          rs = pst.executeQuery();
          
          while(rs.next())
          {

             %>
             
             
            <div class="row">
            <div class="col-sm-4">
                
             <div alight="left">
            <label class="form-label"> Product Name </label>
            <input type="text" class="form-control" name="pname" value= "<%= rs.getString("productName") %>" id="pname" required> <br>
            <div>
            
            <div alight="left">
            <label class="form-label"> Product Price </label>
            <input type="text" class="form-control" name="pprice" value= "<%= rs.getString("productPrice") %>" id="pprice" required> <br>
            </div>
            
            <div alight="left">
            <label class="form-label"> Category </label>
            <input type="text" class="form-control" name="category" value= "<%= rs.getString("category") %>" id="pprice"> <br>
            </div>
            
            <% } %>
            
            <div alight="right">
           <input type="submit" id="submit" name="submit" value="submit" class="btn btn-primary">
            </div>
           
           <div align="right">
               <p> <a href="adminPage2.jsp" class="btn btn-warning">Click Back</a></p>
           </div>
            
            
        </form>
            </div>
        
    </body>
</html>
