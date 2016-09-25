/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class clsRegistration {
   
   public String UserName="";
   public String Category="";
   public String EmailId="";
   public String Pass="";
   public String ContactNo="";
   public String Address="";
   public String Country="";
   public int RegistrationId=0;
    
//    public ResultSet display() throws ClassNotFoundException, SQLException
//    {
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
//        PreparedStatement prst=con.prepareStatement("{call spRegistrationSelect()}");
//        ResultSet rs =prst.executeQuery();
//        return rs;
//    }
    public void insert() throws ClassNotFoundException, SQLException
    {   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("INSERT INTO registration(UserName,EmailId,Pass,ContactNo,Category,Address,Country) VALUES(?,?,?,?,?,?,?)");
        pstmt.setString(1,UserName);
        pstmt.setString(2,EmailId);
        pstmt.setString(3,Pass);
        pstmt.setString(4,ContactNo);
        pstmt.setString(5,Category);
        pstmt.setString(6,Address);
        pstmt.setString(7,Country);
//          pstmt.setInt(8,RegistrationId);
        pstmt.executeUpdate();
    
    }
    
    public void selectsingle() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("select * from registration where RegistrationId=?");
        pstmt.setInt(1,RegistrationId);
        ResultSet rs=pstmt.executeQuery();
        rs.next();
        UserName=rs.getString("UserName");
        Category=rs.getString("Category");
         EmailId=rs.getString("EmailId");
         Pass=rs.getString("Pass");
         ContactNo=rs.getString("ContactNo");
         Address=rs.getString("Address");
         Country=rs.getString("Country");
    }
    public void update() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("UPDATE registration SET UserName=?,Category=?,EmailId=? , Pass=?,Address=?, ContactNo=?, Country=? WHERE RegistrationId=?");
        pstmt.setInt(8,RegistrationId);
        pstmt.setString(1,UserName);
        pstmt.setString(2,Category);
        pstmt.setString(3,EmailId);
        pstmt.setString(4,Pass);
        pstmt.setString(6,ContactNo);
        pstmt.setString(5,Address);
        pstmt.setString(7,Country);
        pstmt.executeUpdate();

    }
    public void delete() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("delete from registration WHERE RegistrationId=?");
        pstmt.setInt(1,RegistrationId);
        pstmt.executeUpdate();

    }
    public ResultSet list() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement prst=con.prepareStatement("select * from registration");
        ResultSet rs =prst.executeQuery();
        return rs;
    }

     public ResultSet check() throws ClassNotFoundException, SQLException
    {
        ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pst = con.prepareStatement("SELECT * FROM registration WHERE UserName=? AND Pass=? ");
            pst.setString(1, UserName);
        pst.setString(2, Pass);
         //pst.setString(3, Category);
         rs = pst.executeQuery();  
        return rs;
//        if(rs.next())           
//           System.out.println("Valid login credentials");        
//        else
//           System.out.println("Invalid login credentials"); 
    
    }
    
}
