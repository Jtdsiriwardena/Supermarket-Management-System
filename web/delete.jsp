<%@page import="java.sql.*" %>

<% 
        String id = request.getParameter("id");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/supermarket_db","root","");
        pst = con.prepareStatement("delete from products where id = ?");
        pst.setString(1, id);
        pst.executeUpdate();
        
        %>
        <script>
            alert("Record Deleted Successfully");
        </script>
                  