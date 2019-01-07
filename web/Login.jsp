<%-- 
    Document   : Login
    Created on : May 30, 2018, 9:15:25 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            
            
            try
            {
                      String s1=request.getParameter("email");
                      String s2=request.getParameter("password");
                      String s3=request.getParameter("radio1");
                      
                      session.setAttribute("s_name", s1);
                      session.setAttribute("s_pass", s2);
                      session.setAttribute("s_radio1", s3);
                      
                      
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
                       PreparedStatement ps=conn.prepareStatement("select Role from registration where email=? and pswd=? and Role=? ");
                         ps.setString(1, s1);
                         ps.setString(2, s2);
                         ps.setString(3,s3);
                                            
                ResultSet rs = ps.executeQuery();
                
                if(rs.next())
                {
                    String type=rs.getString("Role");
                    if("Admin".equals(type))
                    {
                        response.sendRedirect("Admin.jsp");
                    }
                        else if("Customer".equals(type))
                        {
                            response.sendRedirect("C1_home.jsp");
                        }
                }
                else {
                    %>
                     <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Email Id or password is Incorrect.Continue to Sign In.</strong> 
                   </div>
                   <jsp:include page="index.jsp"></jsp:include>
                    <%
                }
            }
            catch(Exception e)
            {
                out.print(e);
            }
               %>
    </body>
</html>
