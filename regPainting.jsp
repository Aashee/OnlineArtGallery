<%-- 
    Document   : regPainting
    Created on : Mar 10, 2016, 5:14:25 PM
    Author     : Sunil1
--%>
<%@page import="java.sql.*"%>
<%@page import="online.clsPainting"%>
<%
//    clsPainting obj=new clsPainting();
//    ResultSet rs=obj.display();                                                  
//    if(request.getQueryString()!=null)
//{
//    if(Integer.parseInt(request.getParameter("PKID"))>0)
//    {
//    //int id=Integer.parseInt(request.getParameter("PKID"));
//    obj.PaintingId=Integer.parseInt(request.getParameter("PKID"));
//    obj.selectsingle();
//    }
//}
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
       body{background-image:url("IMAGE/main.jpg");
             background-repeat: no-repeat;
            height: 100%;
            width: 100%;}
      #Reg{
              border: 2px solid black ;
              margin: 250px;
              margin-top: 150px;
              margin-bottom:  40px;
                border-radius: 5px;
               padding: 20px;
               background-image: url("IMAGE/digital_art.jpg"); 
            }
  .r1{margin: 5px;
      font-family: Verdana;
      font-weight: bold;
      
  }</style>
<!--  <script>
      function showFileName()
      {
          var file=document.getElementById("file_path");
          alert(file.value);
          
      }
      
  </script>-->
   <link rel="shortcut icon" type="image/png" href="IMAGE/logo.png">
    </head>
    <body>
         <!--<form action="login.jsp" method="POST" name="flogin">-->
        <form action="bllPainting.jsp"  method="POST">
       
        <div id="Reg">
              <div class="row">
     <div class="col-sm-12">
         <div class="col-sm-2"></div>
          <div class="col-sm-2"></div>
           <div class="col-sm-2"></div>
            <div class="col-sm-2"></div>
             <div class="col-sm-1"></div>
         <div class="col-sm-3" style="align:right;"></div>
             
     </div></div>  
        <div class="row r1">
                    <div class="col-sm-12">
                        <div class="col-sm-3"></div>
                          <div class="col-sm-3"><label>Painting Name</label></div>
                          <div class="col-sm-3"><input type="text" name="txtPaintingName" required="required" /></div>
                          <div class="col-sm-3"></div>
                    </div>
        </div>
        <div class="row r1">
                    <div class="col-sm-12">
                         <div class="col-sm-3"></div>
                          <div class="col-sm-3"><label>Price</label></div>
                          <div class="col-sm-3"><input type="text" name="txtPrice" required="required" /></div>
                          <div class="col-sm-3"></div>
                         
                    </div>
        </div>
        <div class="row r1">
                    <div class="col-sm-12">
                        <div class="col-sm-3"></div>
                          <div class="col-sm-3"><label>Size</label></div>
                          <div class="col-sm-3"><input type="text" name="txtSize" required="required" /></div>
                          <div class="col-sm-3"></div>
                          
                    </div>
        </div>
        <div class="row r1">
                    <div class="col-sm-12">
                          <div class="col-sm-3"></div>
                          <div class="col-sm-3"><label>Artist Name</label></div>
                          <div class="col-sm-3"><input type="text" name="txtArtistName" required="required" /></div>
                          <div class="col-sm-3"></div>
                          
                    </div>
        </div>
        <div class="row r1">
                    <div class="col-sm-12">
                        <div class="col-sm-3"></div>
                          <div class="col-sm-3"><label>Description</label></div>
                          <div class="col-sm-3"><input type="text" name="txtDescription" /></div>
                          <div class="col-sm-3"></div>
                    </div>
        </div>
         <div class="row r1">
                    <div class="col-sm-12">
                        <div class="col-sm-3"></div>
                          <div class="col-sm-3"><label>Image</label></div>
                          <div class="col-sm-3"><input type="file" name="file_path"  width="20"/></div>
                          <div class="col-sm-3"></div>
                          
                    </div>
        </div>
         <div class="row r1">
        <div class="col-sm-12">
            <div class="col-sm-6"></div>
            <div class="col-sm-6">   
                 <%
//            if(request.getParameter("PKID")!=null)
//                
            //{%>
<!--                <input type="submit" value="UPDATE" name="action" />  
                <input type="submit" value="DELETE" name="action" />  -->
          <%//}
               // else
            //{
            %>
            <input type="submit" value="INSERT" name="action" />  <a href="indexjsp.jsp"><input type="submit" value="Logout"/></a>
          <%//}%>   
<!--          <input type="submit" value="DISPLAY" name="action" />  </div>-->
        </div>
         </div>
        </div>
          </form>        
    </body>
</html>
