<%-- 
    Document   : booking.jsp
    Created on : Mar 5, 2016, 10:32:27 PM
    Author     : Sunil1
--%>
<%@page import="online.clsBooking"%>
<%@page import="java.sql.*"%>

<%@page import="online.temp"%>
<%
//    clsBooking obj=new clsBooking();
//    ResultSet rs =obj.display();     
//     ResultSet rs1=null;
//    if(request.getQueryString()!=null)
//{
//    if(Integer.parseInt(request.getParameter("PKID"))>0)
//    {
//       
//    //int id=Integer.parseInt(request.getParameter("PKID"));
//    obj.BookingId=Integer.parseInt(request.getParameter("PKID"));
////    rs1 =
//            obj.selectsingle();
//    
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
     <link rel="shortcut icon" type="image/png" href="IMAGE/logo.png">
     <style>  .hlabel{font-weight: bold;
      color: cornflowerblue;}
     .dlabel{
          font-weight: bold;
      color: darksalmon;}
      #main{
              
              border: 5px solid black ;
              margin: 300px;
              margin-top: 75px;
              margin-bottom: 100px;
              border-radius: 5px;
              padding: 10px; 
            }</style>
    </head>
    <body >
        
        <div class="row">
            <div class="col-sm-12">
                <%@include file="masterpg.jsp" %> 
                <%
        Cookie[] cook= request.getCookies();
        String m ="";
        String n ="";
        String f="";
        String o="";
        for(int i=0;i<cook.length;i++)
        { Cookie cookie=cook[i];
         
        String cookieName= cookie.getName();
        String cookieValue=cookie.getValue();
        
        if("UserId".equals(cookieName))
        {
            m=cookieValue;
        for(int j=0;j<cook.length;j++)
        { 
            Cookie cookie1=cook[j];
         
        String cookie1Name= cookie1.getName();
        String cookie1Value=cookie1.getValue();
        if("painting".equals(cookie1Name))
        { n=cookie1Value;
        for(int k=0;k<cook.length;k++)
        { 
            Cookie cookie2=cook[k];
         
        String cookie2Name= cookie2.getName();
        String cookie2Value=cookie2.getValue();
        if("PaintingId".equals(cookie2Name))
        { f=cookie2Value;
        }}
                 for(int l=0;l<cook.length;l++)
        { 
            Cookie cookie3=cook[l];
         
        String cookie3Name= cookie3.getName();
        String cookie3Value=cookie3.getValue();
        if("Price".equals(cookie3Name))
        { o=cookie3Value;
        }
}%><%}%><%}%><%}%><%}%>
            </div> </div>
            <div id="main">
        <div class="row"><div class="col-sm-12"><label style="font-weight:bold; font-size: large; color: hotpink; align-content: center;">  Booking Detail</label></div></div>
        <div class="row"><div class="col-sm-12"><label class="hlabel">  Dear </label><label class="dlabel"><%=m%>,</label> <br> <label class="hlabel">Booking Id is</label><label class="dlabel" ><%=f%></label> <br> <label class="hlabel"> Painting name: </label><label class="dlabel"> <%=n%></label><br><label class="hlabel">Total amount is:</label><label class="dlabel"><%=o%></label> <label class="hlabel">will be delivered soon</label> <br> <label class="hlabel">For further Details CONTACT:</label> <label class="dlabel">7566446626</label>
                   
                <br><label class="hlabel"> Thank you For Buying Painting from our site..</label></div></div>
                 <div class="row"><div class="col-sm-12"><div class="col-sm-2"></div>
          <div class="col-sm-2"></div>
           <div class="col-sm-2"></div>
           <div class="col-sm-3" style="align:right;"> <a href="frmPaintingList.jsp"><input type="submit" value="Buy More"/></a></div>
         <div class="col-sm-3" style="align:right;"> <a href="indexjsp.jsp"><input type="submit" value="Logout"/></a></div></div></div>
    </div>
         <div class="row"><div class="col-sm-12"><div class="col-sm-6"><label style="color: mediumslateblue;">sakshi.archie@gmail.com and garg.aashee@gmail.com</label></div><div class="col-sm-6"></div></div></div>  
    </body>
</html>
