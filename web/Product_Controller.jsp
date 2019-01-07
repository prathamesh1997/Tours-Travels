<%-- 
    Document   : Product_Controller
    Created on : May 31, 2018, 10:54:29 PM
    Author     : vinay sawant
--%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.lang.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
            File file;
            int maxSize=1024*1024*50;
            int maxFactSize=1024*1024*50;
            String path="C:/Users/vinay sawant/Documents/NetBeansProjects/Travels/web/P_Images";
            String str;            
         %>
        <%
             String type=request.getContentType();
            // out.print(type);
             
             if(type.indexOf("multipart/form-data")>=0){
                 
               //  out.print("its multipart");
                 DiskFileItemFactory disFact=new DiskFileItemFactory(); 
                 disFact.setSizeThreshold(maxFactSize);
                 disFact.setRepository(new File("C:\\Temp"));
                 
                 //uploading starts here
                 ServletFileUpload upload=new ServletFileUpload(disFact);
                 upload.setSizeMax(maxSize);
                 List lis=upload.parseRequest(request);
                 Iterator itr=lis.iterator();
                 
                  while(itr.hasNext())
                 {
                    FileItem item=(FileItem)itr.next();
                    if(!item.isFormField()){
                        str=item.getName();
                        //renaming the file
                        str=str+str.substring(str.indexOf("."));
                        //out.println(str);
                        file=new File(path,str);
                        item.write(file);
                     
                    }
                    
                 }
                 
             }
                 
        %>
          <%
             Connection con;
             Statement stm;
             
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exotica_Travels","root","ISHWARi123");
   
                String query="insert into product_images(product_image)values('"+str+"')";
                stm=con.createStatement();
                stm.executeUpdate(query);
                %>
                     <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Image was Uploaded successfully!!!</strong> 
                   </div>
                    <jsp:include page="Admin.jsp"></jsp:include>
                
                <%
                    
            }   
            catch(Exception e){
                e.printStackTrace();
            }




         %>
    </body>
</html>
