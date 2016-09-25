<%-- 
    Document   : login.jsp
    Created on : Feb 12, 2016, 4:00:02 PM
    Author     : Sunil1
--%>

<%--<%@page import="online.clsLogin"%>--%>
<%@page import="online.clsRegistration"%>
<%@page import="java.sql.ResultSet"%>
<%  
//  ResultSet rs=null;
clsRegistration obj=new clsRegistration();
//obj.UserId=Integer.parseInt(request.getParameter("txtUserId"));
obj.UserName=request.getParameter("txtUserName");
//obj.Category=request.getParameter("drpCategory");
obj.Pass=request.getParameter("txtPassword");
String str=request.getParameter("action");
if(str.equals("Login"))
{  
    ResultSet rs = obj.check();
    if (rs.next())
   {
        String username=request.getParameter("txtUserName");
            String password=request.getParameter("txtPassword");
            Cookie ck= new Cookie("UserId",username);
            Cookie ck1= new Cookie("Password",password);
            
            response.addCookie(ck);
            response.addCookie(ck1);
  //response.sendRedirect("painting.jsp");
        
        response.sendRedirect("frmPaintingList.jsp");}
   else
        
       response.sendRedirect("Registration.jsp"); 
    //out.println("ucvhjvjhvj");
}
//if(str.equals("update"))
//obj.check();
if(str.equals("Cancel"))
response.sendRedirect("newjsp1.jsp");
//if(str.equals("display"))
//response.sendRedirect("frmstatelist.jsp");


%>


