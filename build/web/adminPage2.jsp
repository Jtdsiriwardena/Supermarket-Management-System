<%-- 
    Document   : adminPage
    Created on : Aug 12, 2023, 4:28:51 PM
    Author     : Dilmith Siriwardena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% 
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("pname");
        String quantity = request.getParameter("quantity");
        String price = request.getParameter("pprice");
        String category = request.getParameter("category");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
        pst = con.prepareStatement("insert into products2(productName,quantity,productPrice,Category)values(?,?,?,?)");
        pst.setString(1, name);
        pst.setString(2, quantity);
        pst.setString(3, price);
        pst.setString(4, category);
        pst.executeUpdate();
        
        %>
        <script>
            alert("Record Added Successfully");
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
        <h1>MEATS</h1>
        
        <div class="row">
            <div class="col-sm-4">
        <form  method="POST" action="#">
            
            <div alight="left">
            <label class="form-label"> Product Name </label>
            <input type="text" class="form-control" name="pname" id="pname" required> <br>
            </div>
            
            <div alight="left">
            <label class="form-label"> Quantity </label>
            <input type="text" class="form-control" name="quantity" id="quantity" required> <br>
            </div>
            
            <div alight="left">
            <label class="form-label"> Product Price </label>
            <input type="text" class="form-control" name="pprice" id="pprice" required> <br>
            </div>
            
            <div alight="left">
            <label class="form-label"> Category </label>
            <input type="text" class="form-control" name="category" id="category" required> <br>
            </div>
            <br>
            <div alight="right">
                <input type="submit" id="submit" name="submit" value="submit" class="btn btn-primary">
            </div>
            <br>
            
        </form>
                
            </div>
            
            <div class="col-sm-8">
                
            <div class="panel-body">
        
        
        <table id="product-tbl" class="table table-responsive table bordered" cellpadding="0" width="100%">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Product Price</th>
                    <th>Category</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    
                </tr>
                
                
                <%
                   
                 Connection con;
                 PreparedStatement pst;
                 ResultSet rs;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
                 
                 String query = "select * from products2";
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
                    <td><%=rs.getString("Category") %></td>
                    <td><a href="update2.jsp?id=<%=id%>" class="btn btn-success" > Edit</a></td>
                    <td><a href="delete2.jsp?id=<%=id%>" class="btn btn-danger"> Delete</a></td>
            
                    
                </tr> 
                
                <%
                    
                 }
                %>
                
            </thead>
            
        </table>
            </div>
                </div>  
          </div>   
        
    </body>
</html>

