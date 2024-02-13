<%-- 
    Document   : products
    Created on : Aug 13, 2023, 11:02:23 AM
    Author     : Dilmith Siriwardena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/products.css" rel="stylesheet" type="text/css"/>
        <script src="https://www.paypal.com/sdk/js?client-id=ASt7pBphS-mcnLsrss4exNfkn3UAmZxl5msMGF1yWAKRffn37EnYIxHapXvxUtA-CQiCijFH3i-X7XPf"></script>
    </head>
    <body>
        
         <h3 class="heading">VEGETABLES</h3>
        
        <table id="product-tbl" class="space">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price(Rs.)</th>
                    

                    
                </tr>
                
                
                <%
                   
                 Connection con;
                 PreparedStatement pst;
                 ResultSet rs;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
                 
                 String query = "select * from products";
                 Statement st = con.createStatement();
                 
                 rs = st.executeQuery(query);
                 
                 while(rs.next())
                         {
                             String id = rs.getString("id");
                         

                 %>
                
                
                <tr>
                    <td><%=rs.getString("productName") %></td>
                    <td><%=rs.getString("quantity") %></td>
                    <td><%=rs.getString("productPrice") %></td>
                    <td><a href="pay.jsp">Buy</td>
                    
                    
                </tr> 
                
                <%
                    
                 }
                %>
                
            </thead>
            
        </table>

    </body>
</html>
