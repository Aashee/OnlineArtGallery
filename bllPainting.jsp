 
<!--    Document   : bllPainting.jsp
    Created on : Mar 2, 2016, 4:53:19 PM
    Author     : Sunil
1-->
<%@page import="online.clsBooking"%>
<%@page import="online.clsPainting"%>
<% 
clsPainting obj=new clsPainting();
clsBooking obj1=new clsBooking();

obj.PaintingName=request.getParameter("txtPaintingName");
obj.Description=request.getParameter("txtDescription");
obj.Price=request.getParameter("txtPrice");
obj.Size=request.getParameter("txtSize");
obj.ArtistName=request.getParameter("txtArtistName");
//obj.RegistrationId=Integer.parseInt(request.getParameter("txtRegistrationid"));
obj.Image=request.getParameter("file_path");

//String m=obj.Image;
//out.println("m"+m);

String str=request.getParameter("action");
if(str.equals("Buy Now"))
{
out.println("gggh");
  obj.PaintingId=Integer.parseInt(request.getParameter("pkid"));
out.println("gggh"+obj.PaintingId);

  obj.delete();
    //obj1.insert();
   // obj1.selectsingle();
response.sendRedirect("booking.jsp");
}
if(str.equals("INSERT"))
{  out.println(obj.Image);
obj.insert();
response.sendRedirect("frmPaintingList.jsp");
   // response.sendRedirect("1.jsp");
}
if(str.equals("UPDATE"))
obj.update();
if(str.equals("DELETE"))
obj.delete();
if(str.equals("DISPLAY"))
//response.sendRedirect("frmPaintingList.jsp");

%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! <label></label></h1>
    </body>
</html>
