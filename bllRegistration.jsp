<%-- 
    Document   : bllRegistration
    Created on : Feb 18, 2016, 10:49:15 PM
    Author     : Sunil1
--%>
<%@page import="online.clsRegistration"%>
<% 
clsRegistration obj=new clsRegistration();
//obj.stateid=Integer.parseInt(request.getParameter("txtid"));
obj.UserName=request.getParameter("txtUserName");
obj.Category=request.getParameter("txtCategory");
obj.EmailId=request.getParameter("txtEmailId");
obj.Pass=request.getParameter("txtPass");
obj.ContactNo=request.getParameter("txtContactNo");
//obj.ContactNo=Integer.parseInt(request.getParameter("txtContactNo"));
obj.Address=request.getParameter("txtAddress");
obj.Country=request.getParameter("drpCountry");
String str=request.getParameter("action");
if(str.equals("SUBMIT"))
{
out.println("obj.insert()");
obj.insert();
response.sendRedirect("indexjsp.jsp");

}
if(str.equals("UPDATE"))
obj.update();
if(str.equals("DELETE"))
obj.delete();
if(str.equals("DISPLAY"))
response.sendRedirect("frmRegistrationList.jsp");
%>
<!--<html>insert successfully</html>-->