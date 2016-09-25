/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.File;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.Part;
public class clsPainting  {
    
     public String PaintingName="";
     public String Description="";
    
     public String Price="";
     public String Size="";
     public String ArtistName="";
    public int PaintingId=0;
    public String Image="";
    
    public ResultSet display() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement prst=con.prepareStatement("select * from painting");
        ResultSet rs =prst.executeQuery();
        return rs;
        
    }
     public void insert() throws ClassNotFoundException, SQLException, FileNotFoundException, IOException
    {   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("INSERT INTO painting (PaintingName,ArtistName,Price,Size,Description,Image) VALUES(?,?,?,?,?,?)");
        pstmt.setString(1,PaintingName);
        pstmt.setString(2,ArtistName);
        pstmt.setString(3,Price);
        pstmt.setString(4,Size);
        //pstmt.setString(6,Image);
        pstmt.setString(5,Description);
         //try (FileInputStream fin = new FileInputStream("file_path.getText()")) {
//             File f=new File("Image");
             //pstmt.setBlob(6,fin);
              
              //File image=file_path.getSelectedFile();
//              String fullpath=(String) file_path.getSelectedFile();
//        FileInputStream fis=new FileInputStream(fullpath); 
//        pstmt.setBinaryStream(6, (InputStream)fis, (int)(fullpath.length()));
 File image=new File("C:\\Users\\Sunil1\\Documents\\NetBeansProjects\\OnlineArtGallery\\web\\IMAGE\\"+Image); 
        FileInputStream fis=new FileInputStream(image); 
        pstmt.setBinaryStream(6, (InputStream)fis, (int)(image.length())); 
       pstmt.executeUpdate();
    
    }
     
     public void selectsingle() throws ClassNotFoundException, SQLException
    {
         ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("SELECT * FROM painting WHERE PaintingId=? ");
       pstmt.setInt(1,PaintingId); 
//        pstmt.setString(2,PaintingName);
         rs=pstmt.executeQuery();
        rs.next();
        PaintingName=rs.getString("PaintingName");
//         Category=rs.getString("Category");
          Price=rs.getString("Price");
           Size=rs.getString("Size");
            Description=rs.getString("Description");
             //
//        RegistrationId=rs.getInt("RegistrationId");
//        return rs;
    }
      public void update() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("UPDATE registration SET PaintingName=?,Price=? , Size=?,Description=?  WHERE PaintingId=?");
        
        pstmt.setString(1,PaintingName);
//        pstmt.setString(2,Category);
        pstmt.setString(2,Price);
        pstmt.setString(3,Size);
        pstmt.setString(4,Description);
        
//        pstmt.setInt(6,RegistrationId);
        pstmt.setInt(5,PaintingId);
        pstmt.executeUpdate();

    }
   public void delete() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///onlineartgallery", "root", "sakku");
        PreparedStatement pstmt=con.prepareStatement("delete from painting where PaintingId=?");
        pstmt.setInt(1,PaintingId);
        pstmt.executeUpdate();

    }
//     public ResultSet list() throws ClassNotFoundException, SQLException
//    {
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection con=DriverManager.getConnection("jdbc:mysql:///pvcountry", "root", "start");
//        PreparedStatement prst=con.prepareStatement("{call spSelect()}");
//        ResultSet rs =prst.executeQuery();
//        return rs;
//    }
    
    
    
}
