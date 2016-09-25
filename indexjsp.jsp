 

<!--<script>
    function cok()
    {
   Document.cookie= "true";
   alert("hii"+Document.cookie);
   }
</script>-->
<%@page import="java.sql.ResultSet"%>
<%--<%@page import="online.clsLogin"%>--%>
<%
//    clsLogin obj=new clsLogin();
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
            #main{
              background-image: url("IMAGE/digital_art.jpg");
              background-repeat: no-repeat;
              border: 5px solid black ;
              margin: 300px;
              margin-top: 100px;
              margin-bottom: 100px;
              border-radius: 5px;
              padding: 10px; 
            }
           
        </style>
    <h1 style="font-weight: bold; text-align: center; color: white; ">INDIAN CHITRASHALA</h1>
         <link rel="shortcut icon" type="image/png" href="IMAGE/logo.png">
    </head>
    <body id="a1" bgcolor="#E6E6FA">
        <form action="login.jsp" method="POST" name="flogin">
     
        <div id="main"  >
<!--          <img src="IMAGE/IMG.jpeg" ></img>-->
            <div class="row" style="height: 20px; color: whitesmoke;"> </div>
        <div class="row">
            <div class="col-sm-12" align="center">
                <label style="font-size: 20px; font-family: Arial">LOGIN</label>
            </div>
        </div>
            <div class="row" style="margin:5px">
            <div class="col-sm-12">
<!--                <div class="col-sm-3" width="0%"></div>-->
                 <div class="col-sm-2"></div>
                <div class="col-sm-4" align="center" style="color:whitesmoke;">USERNAME</div>
                <div class="col-sm-6"><input type="text" name="txtUserName" required="required"  width="80%"/></div>
<!--                <wl:validator 
   fieldToValidate="username" 
   validatorClass="weblogicx.jsp.tags.validators.RequiredFieldValidator"
   errorMessage="User name is a required field!"
 >
   <img src=images/warning.gif> This is a required field!
 </wl:validator>-->
<!--                <div class="col-sm-3" width="0%"></div>-->
            </div>
        </div>
        <div class="row" style="margin:5px">
            <div class="col-sm-12">
                <div class="col-sm-2"></div>
                <div class="col-sm-4" align="center"style="color:whitesmoke;">PASSWORD</div>
                <div class="col-sm-6"><input type="password" name="txtPassword" required="required"  width="80%"/></div>
            </div>
        </div>
                
<!--        <div class="row" style="margin:5px">
            <div class="col-sm-12">
                <div class="col-sm-2"></div>
                <div class="col-sm-4" align="center" style="color:whitesmoke;">CATEGORY</div>
                <div class="col-sm-6">
                   
                    
                    <select name="drpCategory" >
                        <option value="Buyer">Buyer</option>
                        <option value="Seller">Seller</option>
                        <option value="Other">Other</option>
                    </select>
                                      </div>
                <div class="col-sm-3"></div>
            </div>
        </div>-->
            <div class="row" style="height: 10px;"></div>
            <div class="row" style="margin:5px">
            <div class="col-sm-12">
                <div class="col-sm-3"></div>
                <div class="col-sm-3"></div>
                <div class="col-sm-2"><input type="submit" value="Login" name="action" /></div>
<!--                <div class="col-sm-2"><input type="submit" value="Cancel" name="action" /></div>-->
            <div class="col-sm-2"></div>
            </div>
        </div>
            
           
        
        
        </div>
      </form>
  </body>
</html>
