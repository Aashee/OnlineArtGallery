<%-- 
    Document   : Registratin.jsp
    Created on : Feb 12, 2016, 2:23:26 PM
    Author     : Sunil1
--%>
<%@page import="java.sql.*"%>
<%@page import="online.clsRegistration"%>
<%
    clsRegistration obj=new clsRegistration();
    ResultSet rs=obj.list();                                                  
    if(request.getQueryString()!=null)
{
    if(Integer.parseInt(request.getParameter("PKID"))>0)
    {
    //int id=Integer.parseInt(request.getParameter("PKID"));
    obj.RegistrationId=Integer.parseInt(request.getParameter("PKID"));
    obj.selectsingle();
    }
}
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
              margin: 200px;
              margin-top: 60px;
              margin-bottom:  40px;
                border-radius: 5px;
               padding: 10px;
               background-image: url("IMAGE/digital_art.jpg"); 
            }
  .r1{margin: 5px;
  }</style>
<!--  <script type="text/javascript">
            function validate()
           {
//               alert("enter values");
//                var a = document.getElementById("txtContactNo");
////                var b = document.getElementById("b");
////                var valid = true;
//                if(a.value.length<=0 )
//                    {
//                        alert("Don't leave the field empty!");
////                        valid = false;
//                    }
//                    else{
//                        if(!IsNumeric(a.value) )
//                            alert("Enter a number");
////                    valid = false;
//                         }
//                return valid;
 var c= document.forms["fregistration"]["txtContactNo"].value;
  
    if (c === null || c === "") {
        alert("enter values");
        alert("Contact must be filled out");
        return false;
    }
     var cn= document.fregistration.txtContactNo.value.length ;
    
if(cn < 10)
{
     alert("Enter Valid Contact Info.");
        return false;
    
}



            };
            function email()
            {
                var x= document.forms["fregistration"]["txtEmailId"].value;
               // alert(x);nt.forms["fregistration"]["txtEmailId"].value;
               
//                var x = document.forms[""]["txtemail"].value;
    var a = x.indexOf("@");
    var d = x.lastIndexOf(".");
    //alert(a+" "+d);
   
   if ( a<1 || d<a+2 || d+2>=x.length)
   {
        alert("Not a valid e-mail address");
        return false;
              
            }
            else
            {
             //   alert("kd");
            }
        }
        </script>-->
<script>
    
      function validate()
           {
//          alert("enter values");
////                var c= document.forms["fregistration"]["txtContactNo" || "txtUserName" || "txtEmailId" || "txtAddress" || "txtCategory" || "txtPassword" || "txtCountry"].value;
////    if (c === null || c === "") {
////        alert("Contact must be filled out");
////        return false;
////    }
//////               alert("enter values");
var cn= document.fregistration.txtContactNo.value.length ;
    
if(cn < 10)
{
     alert("Enter Valid Contact Info.");
        return false;
    
}
// var x= document.forms["fregistration"]["txtEmailId"].value;
               // alert(x);nt.forms["fregistration"]["txtEmailId"].value;
               
                var x = document.forms["fregistration"]["txtEmailId"].value;
    var a = x.indexOf("@");
    var d = x.lastIndexOf(".");
//    //alert(a+" "+d);
//   
   if ( a<1 || d<a+2 || d+2>=x.length)
   {
        alert("Not a valid e-mail address");
        return false;
//              
   }
            else
          {
             //   alert("kd");
            }
            
}
    
    
    
 </script>
  <link rel="shortcut icon" type="image/png" href="IMAGE/logo.png">
    </head>
    <body>
        <form name="fregistration" action="bllRegistration.jsp" method="POST" onsubmit="return validate();">
        
<div id="Reg">
    <div class="row r1" style="font-size: 20px; font-family: Arial" align="center"><label>Registration</label></div>
     <div class="row" style="height: 10px;"></div>
    <div class="row r1">
        <div class="col-sm-12">
            <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>User Name</label></div>
            <div class="col-sm-6">
            <input type="text" name="txtUserName" required="required" value="<%=obj.UserName%>"  size="20" onkeypress='return event.charCode >= 48 && event.charCode > 64 ';/>
            </div>
        </div>
    </div>
<!--    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-2"></div>
            <div class="col-sm-4"><label>Last Name</label></div>
            <div class="col-sm-6"><input type="text" name="txtLName" value="" size="20" /></div>
        </div>
    </div>-->
    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>Category</label>
            </div>
<!--                  <div class="col-sm-6"> <input type="text" name="txtCategory" value="<%=obj.Category%>" size="20" /></div>-->
            <div class="col-sm-2"><label>Buyer  </label><input type="radio" name="txtCategory" value="Buyer"/></div>
           
            <div class="col-sm-2"><label>Seller  </label><input type="radio" name="txtCategory" value="Seller" checked="checked" /></div>
        <div class="col-sm-2"><label>Others  </label><input type="radio" name="txtCategory" value="others"/></div>
        </div>
    </div>
    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>Email Id</label></div>
            <div class="col-sm-6"><input type="text"  name="txtEmailId"  required="required" value="<%=obj.EmailId%>" size="20" onblur="email()" /></div>
        </div>
    </div>
    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>Password</label></div>
            <div class="col-sm-6"><input type="password" name="txtPass"  required="required" value="<%=obj.Pass%>" size="20" /></div>
        </div>
    </div>
<!--    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-2"></div>
            <div class="col-sm-4" ><label>Confirm Password</label></div>
            <div class="col-sm-6"><input type="password" name="txtCnfPassword" value="" size="20" /></div>
        </div>
    </div>-->
    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>Address</label></div>
            <div class="col-sm-6"><input type="text" name="txtAddress" value="<%=obj.Address%>" size="20" /></div>
        </div>
    </div>
    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>Contact No.</label></div>
            <div class="col-sm-6"><input type="text" maxlength="10" name="txtContactNo" required="required" value="<%=obj.ContactNo%>" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57';/ /></div>
        </div>
    </div>
    <div class="row r1">
        <div class="col-sm-12">
                  <div class="col-sm-3"></div>
            <div class="col-sm-3" ><label>Country</label></div>
            <div class="col-sm-6">
<!--                <input type="text" name="txtCountry" value="<%=obj.Country%>" size="20" />-->
                
                
              <select name="drpCountry">
                    <option vaule="India">India</option>
                    <option vaule="Pakistan">Pakistan</option>
                    <option vaule="Bangladesh">Bangladesh</option>
                    <option vaule="USA" >USA</option>
                    <option vaule="China">China</option>
                </select><!--
-->                                  </div>
        </div>
    </div>
    <div class="row" style="height: 10px;"></div>
    <div class="row r1">
        <div class="col-sm-12">
            <div class="col-sm-6"></div>
            <div class="col-sm-6">   
                 <%
            if(request.getParameter("PKID")!=null)
            {%>
            <input type="submit" value="UPDATE" name="action" />  
                <input type="submit" value="DELETE" name="action" />  
                 <%}
                else
            {
            %>
            <input type="submit" value="SUBMIT" name="action"  />  
               <%}%>   
<!--                <input type="submit" value="DISPLAY" name="action" />  -->
            </div>
        </div>
    </div>
    <div class="row" style="height: 20px;"></div>
 
       
    </div>
</div>
</form>
    </body>
</html>
