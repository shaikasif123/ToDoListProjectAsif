package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.rowset.serial.SerialBlob;

import com.mysql.cj.protocol.Resultset;

import dto.JavaBeanUser;

public class DaoUser {
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/todoproject?user=root&password=root");
		return c;
	}
	public static int saveUser(JavaBeanUser user) throws ClassNotFoundException, SQLException
	{
		Connection c=getConnection();
		PreparedStatement ps=c.prepareStatement("insert into todolistuser values(?,?,?,?,?,?)");
		ps.setInt(1,user.getUserid());
		ps.setString(2, user.getUsername());
		ps.setString(3, user.getUseremail());
		ps.setLong(4, user.getUsercontact());
		ps.setString(5, user.getUserpassword());
		Blob imageblob=new SerialBlob(user.getUserimage());
		ps.setBlob(6, imageblob);
		int res=ps.executeUpdate();	
		return res;
		
	}
	public JavaBeanUser findByEmail(String email) throws ClassNotFoundException, SQLException
	{
		Connection c=getConnection();
		PreparedStatement ps=c.prepareStatement("select * from todolistuser where useremail=?");
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			JavaBeanUser u=new JavaBeanUser();
			u.setUserid(rs.getInt(1));
			u.setUsername(rs.getString(2));
			u.setUseremail(rs.getString(3));
			u.setUsercontact(rs.getLong(4));
			u.setUserpassword(rs.getString(5));
			Blob imageBlob=rs.getBlob(6);
			byte[] image=imageBlob.getBytes(1, (int)imageBlob.length());
			u.setUserimage(image);
			return u;
		}
		else
		{
		return null;
		}
		
	}
	
	

}
