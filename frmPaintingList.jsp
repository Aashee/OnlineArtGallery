<%-- 
    Document   : frmPaintingList.jsp
    Created on : Mar 2, 2016, 8:57:49 PM
    Author     : Sunil1
--%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="online.clsPainting"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="online.temp"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="online.clsPainting"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="online.temp"%>
<%
    clsPainting obj1=new clsPainting();
    ResultSet rs=obj1.display();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <style>
      body{ background-image: url("IMAGE/main.jpg")}
      .lsbut
      {
        
        font-size: medium;
        font-weight: bold;
        color: cadetblue;
        background-color: activeborder;
        border-radius: 5px;
      }
      .hlabel{font-weight: bold;
      color: cornflowerblue;}
      .dlabel{
          font-weight: bold;
      color: darksalmon;}
  </style>
   <link rel="shortcut icon" type="image/png" href="IMAGE/logo.png">
    </head>
    <body>
       
       <div class="container">
           <div class="row">
            <div class="col-sm-12">
                <%@include file="masterpg.jsp" %> 
            </div>
            </div>
<!--                <div class="row" style="margin: 10px; margin-left: 0px"><div class="col-sm-12">
                    <div class="col-sm-2" style="align: center"></div>
		<div class="col-sm-2" style="align: center"></div>
		<div class="col-sm-3" style="align: center"></div>
		<div class="col-sm-3" style="align: center"></div>
 		<div class="col-sm-2" style="align: center">
                    <a href="indexjsp.jsp"><button  name="action" class="lsbut">LogIn</button></a>
                    <a href="Registration.jsp"><button  name="action" class="lsbut">SignUp</button></a></div>
               </div></div>    -->
<div class="row">
     <div class="col-sm-12">
         <div class="col-sm-2"></div>
          <div class="col-sm-2"></div>
           <div class="col-sm-2"></div>
            <div class="col-sm-2"></div>
             <div class="col-sm-1"></div>
         <div class="col-sm-3" style="align:right;"><a href="indexjsp.jsp"><input type="submit" value="Logout"/></a></div>
             
     </div></div>  
 <div class="row">
     <div class="col-sm-12">
         <div class="col-sm-2"></div>
          <div class="col-sm-2"></div>
           <div class="col-sm-2"></div>
            <div class="col-sm-2"></div>
             <div class="col-sm-1"></div>
         <div class="col-sm-3"><label class="hlabel">For Sellers</label><a href="regPainting.jsp">Click Here</a></div>
             
     </div></div>  
<div class="row">
                
               <div class="col-sm-12">
                        <% 
    FileOutputStream fout=null;
    while(rs.next())
            {
            %>
                  
                    
                   <div class="col-sm-4"><a href="painting.jsp?PKID=<%= rs.getString("PaintingId") %>">
<!--                           <img src="IMAGE/main1.jpeg"/>-->
<%    
  Blob b=rs.getBlob("Image");   //2 means 2nd column data
byte barr[]=b.getBytes(1,(int)b.length());   //1 means first image

 fout=new FileOutputStream("C:\\Users\\Sunil1\\Documents\\NetBeansProjects\\OnlineArtGallery\\web\\IMAGE\\art"+rs.getString("PaintingId")+".jpg");
fout.write(barr);

fout.close();
%>
<img style="Height:150px;width: 150px" src="IMAGE\art<%=rs.getString("PaintingId")%>.jpg"/>
<!--<label><%= rs.getString("Image")%></label>-->
                       </a><br><br><label class="hlabel">Painting:</label> <label class="dlabel"><%= rs.getString("PaintingName")%></label><br>
                       <label class="hlabel">Price:</label> <label class="dlabel"><%= rs.getString("Price")%></label><br>
                       <label class="hlabel">Size:</label><label class="dlabel"><%= rs.getString("Size")%></label><br><br>
<!--                  
-->                </div>
<!--              
                   <div class="col-sm-4">
                       <a href="painting.jsp?PKID=<%= rs.getString("PaintingId") %>">
                           <img src="s1.jpeg"/>
                    </a><br>Painting Name<%= rs.getString("PaintingName")%><br>
                    Price<%= rs.getString("Price")%><br>
                    Size<%= rs.getString("Size")%><br>
                
                   </div>-->
                        <%}%>
               </div>
               
           </div>
           
               <div class="row"><div class="col-sm-12"><div class="col-sm-6"><label style="color: mediumslateblue;">sakshi.archie@gmail.com and garg.aashee@gmail.com</label></div><div class="col-sm-6"></div></div></div>        
          
    </div>
     
    </body>
</html>
