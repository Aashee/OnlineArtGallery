 
<!--    Document   : painting
    Created on : Mar 2, 2016, 11:02:40 AM
    Author     : Sunil1-->
<%@page import="java.sql.*"%>
<%@page import="online.clsPainting"%>
<%
    clsPainting obj=new clsPainting();
    //ResultSet rs =obj.display();     
//     ResultSet rs1=null;
    if(request.getQueryString()!=null)
{
    if(Integer.parseInt(request.getParameter("PKID"))>0)
    {
       
    //int id=Integer.parseInt(request.getParameter("PKID"));
    obj.PaintingId=Integer.parseInt(request.getParameter("PKID"));
//    rs1 =
            obj.selectsingle();
             String P = obj.PaintingName;
            
            Cookie ck= new Cookie("painting",P);  
            response.addCookie(ck);
         String P1=obj.Price;
          Cookie ck1= new Cookie("Price",P1);  
            response.addCookie(ck1);
         
            //out.println("string p he"+P);
    
    }
}
%>  
 
<!--
<script>
    function fun()
    {
if(Document.cookie==="false")
{  alert(Document.cookie);
    window.location="indexjsp.jsp";
  
}
else
{
   window.location="booking.jsp";
}
    }
</script>-->
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
       
      #reg{
              border: 2px solid black ;
              margin: 200px;
              margin-top: 5px;
              margin-bottom:  50px;
                border-radius: 5px;
               padding: 10px;
/*               background-image: url("IMAGE/digital_art.jpg"); */
            }
  </style>
   <link rel="shortcut icon" type="image/png" href="IMAGE/logo.png">
    </head>
    <body>
        
        <%
//        Cookie[] cook= request.getCookies();
//        for(int i=0;i<cook.length;i++)
//        { Cookie cookie=cook[i];
//         
//        String cookieName= cookie.getName();
//        String cookieValue=cookie.getValue();
//        
//        if("UserId".equals(cookieName)&& cookieValue!="")
//        {
//            
//        for(int j=0;j<cook.length;j++)
//        { 
//            Cookie cookie1=cook[j];
//         
//        String cookie1Name= cookie1.getName();
//        String cookie1Value=cookie1.getValue();
//        if("Password".equals(cookieName)&&  cookieValue!="")
//        { %>
                   <form action="bllPainting.jsp" method="get">
       <%// }
//       else {
//         response.sendRedirect("indexjsp.jsp"); %>
        
            <%  // }%>
            <%   //}%>
            <%   //}%>
            
            <%  // }%>
        <div class="row">
            <div class="col-sm-12">
                <%@include file="masterpg.jsp" %> 
                
            </div>
                <%    String s=request.getQueryString(); 
                String id=request.getParameter("PKID");
        String a="@43Chitra"+obj.PaintingName+request.getParameter("PKID");
//        out.println(a);
         Cookie c= new Cookie("PaintingId",a); 
        response.addCookie(c);
        
%>
        </div>
        <div class="row">
     <div class="col-sm-12">
         <div class="col-sm-2"></div>
          <div class="col-sm-2"></div>
           <div class="col-sm-2"></div>
            <div class="col-sm-2"></div>
             <div class="col-sm-1"></div>
         <div class="col-sm-3" style="align:right;"><a href="indexjsp.jsp"><input type="submit" value="Logout"/></a></div>
             
     </div></div>  
        <div id="reg">

            <div class="row">
                <input type="hidden"  value=<%=id%>  name="pkid" />
                <div class="col-sm-12">
                    <div class="col-sm-6"><img src="IMAGE/art<%=obj.PaintingId%>.jpg"/></div>
                     
                <div class="col-sm-6">
                   
                    <label>Painting Name:  </label>
                    <label><%=obj.PaintingName%></label>
                    <br>
                    <label>Size:  </label>
                    <label><%=obj.Size%></label>
                    <br>
                    <label>Price:  </label>
                    <label><%=obj.Price%></label>
                    <br>
                    <label>Description:  </label>
                    <label><%=obj.Description%></label>
                    <br>
                     <br>
<!--                     <button name="action" type="submit" value="BuyNow">Buy Now</button>-->
<!--                <input type="submit" value="BuyNow" name="action"  />-->
<!--                   <a href="indexjsp.jsp">-->
<!--                       <button  name="action" type="submit" value="Login">Buy Now</button>-->
<!--                   </a>  -->
<!--<a href="booking.jsp?PKID=<%= obj.PaintingId %>">-->

    <input type="submit" value="Buy Now" name="action" />
<!--    </a>-->

<!--    
<input type="submit" value="Buy Now" name="action" onclick="fun()" />-->
                </div></div>
                   
            </div>
        </div>
 <div class="row"><div class="col-sm-12"><div class="col-sm-6"><label style="color: mediumslateblue;margin-bottom: 20px;">sakshi.archie@gmail.com and garg.aashee@gmail.com</label></div><div class="col-sm-6"></div></div></div>  
                    </form>
    </body>
</html>
