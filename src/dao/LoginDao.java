package dao;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.LoginVo;
import vo.agencies;
import vo.chatvo;
import vo.impot;
import vo.list_vehicles;

public class LoginDao {

	public List search(LoginVo v)
	{
		List ls=new ArrayList<LoginVo>();
		try
		{
		
		System.out.println("in search");
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from login");
		
		System.out.println("hello");
		
		while(rs.next())
		{
			LoginVo v1=new LoginVo();
			
			v1.setUn(rs.getString("un"));
			v1.setPw(rs.getString("pw"));
			v1.setName(rs.getString("name"));
			
			System.out.println(" Un:"+rs.getString("un")+" PW:"+rs.getString("pw")+" Name:"+rs.getString("name"));
			ls.add(v1);
		}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return ls;
	}
	
	public List search1(agencies v)
	{
		List ls=new ArrayList<agencies>();
		try
		{
		
		System.out.println("in search");
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from agencies where User_Name='"+v.getU_name()+"'");
		
		System.out.println("hello");
		
		while(rs.next())
		{
			agencies v1=new agencies();
			
			v1.setA_name(rs.getString("Name"));
			v1.setU_name(rs.getString("User_Name"));
			v1.setP_name(rs.getString("Password"));
			
			/*System.out.println(" Un:"+rs.getString("un")+" PW:"+rs.getString("pw")+" Name:"+rs.getString("name"));*/
			ls.add(v1);
		}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return ls;
	}
	
	public List searchdata()
	{
		List ls=new ArrayList<LoginVo>();
		try
		{
		
		System.out.println("in search");
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from list_vehicles");
		
		System.out.println("hello");
		
		while(rs.next())
		{
			list_vehicles v1=new list_vehicles();
			
			v1.setAppl(rs.getString("Appl"));
			v1.setApac(rs.getString("Apac"));
			
			System.out.println(" Un:"+rs.getString("un")+" PW:"+rs.getString("pw")+" Name:"+rs.getString("name"));
			ls.add(v1);
		}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return ls;
	}
	
	
	public void insert(impot v)
	{
		try {
			System.out.println("------------in-----------");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
			Statement st=con.createStatement();
			st.executeQuery(v.getQue());
			
			System.out.println(v.getQue());
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void transfer1(list_vehicles v)
	{
		ArrayList ls=new ArrayList<list_vehicles>();
		try {
			System.out.println("------------in-----------");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
			Statement st=con.createStatement();
			System.out.println("----------"+v.getReg_No());
			ResultSet rs=st.executeQuery("select * from list_vehicles where Reg_No='"+v.getReg_No()+"'");
			
			while(rs.next())
			{
				list_vehicles v1=new list_vehicles();
				v1.setAppl(rs.getString("Appl"));
				v1.setApac(rs.getString("Apac"));
				v1.setParty_Name(rs.getString("Party_Name"));
				v1.setBucket(rs.getString("Bucket"));
				v1.setNo_of_EMI_OS(rs.getString("No_of_EMI_OS"));
				v1.setChasis_No(rs.getString("Chasis_No"));
				v1.setEngine_No(rs.getString("Engine_No"));
				v1.setLocation(rs.getString("Location"));
				v1.setReg_No(rs.getString("Reg_No"));
				v1.setAsset_Category(rs.getString("Asset_Category"));
				ls.add(v1);
				
				Statement st1=con.createStatement();
				st1.executeUpdate("insert into list_busted(Apac,Appl,Asset_Category,Bucket,Chasis_No,Engine_No,Location,No_of_EMI_OS,Party_Name,Reg_No) values('"+v1.getApac()+"','"+v1.getAppl()+"','"+v1.getAsset_Category()+"','"+v1.getBucket()+"','"+v1.getChasis_No()+"','"+v1.getEngine_No()+"','"+v1.getLocation()+"','"+v1.getNo_of_EMI_OS()+"','"+v1.getParty_Name()+"','"+v1.getReg_No()+"')");
				
				Statement st2=con.createStatement();
				st2.executeUpdate("DELETE FROM list_vehicles WHERE Reg_No='"+v1.getReg_No()+"'");
				
			}
			
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void transfer2(list_vehicles v)
	{
		ArrayList ls=new ArrayList<list_vehicles>();
		try {
			System.out.println("------------in-----------");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
			Statement st=con.createStatement();
			System.out.println("----------"+v.getReg_No());
			ResultSet rs=st.executeQuery("select * from list_busted where Reg_No='"+v.getReg_No()+"'");
			
			while(rs.next())
			{
				list_vehicles v1=new list_vehicles();
				v1.setAppl(rs.getString("Appl"));
				v1.setApac(rs.getString("Apac"));
				v1.setParty_Name(rs.getString("Party_Name"));
				v1.setBucket(rs.getString("Bucket"));
				v1.setNo_of_EMI_OS(rs.getString("No_of_EMI_OS"));
				v1.setChasis_No(rs.getString("Chasis_No"));
				v1.setEngine_No(rs.getString("Engine_No"));
				v1.setLocation(rs.getString("Location"));
				v1.setReg_No(rs.getString("Reg_No"));
				v1.setAsset_Category(rs.getString("Asset_Category"));
				ls.add(v1);
				
				Statement st1=con.createStatement();
				st1.executeUpdate("insert into list_vehicles(Apac,Appl,Asset_Category,Bucket,Chasis_No,Engine_No,Location,No_of_EMI_OS,Party_Name,Reg_No) values('"+v1.getApac()+"','"+v1.getAppl()+"','"+v1.getAsset_Category()+"','"+v1.getBucket()+"','"+v1.getChasis_No()+"','"+v1.getEngine_No()+"','"+v1.getLocation()+"','"+v1.getNo_of_EMI_OS()+"','"+v1.getParty_Name()+"','"+v1.getReg_No()+"')");
				
				Statement st2=con.createStatement();
				st2.executeUpdate("DELETE FROM list_busted WHERE Reg_No='"+v1.getReg_No()+"'");
				
			}
			
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insert_msg(chatvo v)
	{
		try {
			System.out.println("------------in-----------");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
			Statement st=con.createStatement();
			st.executeUpdate("insert into chat(Msg,Sender,Time) values('"+v.getMsg()+"','"+v.getSender()+"','"+v.getTime()+"')");
			
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List serch_msg(chatvo v)
	{
		List ls=new ArrayList<chatvo>();
		try {
			System.out.println("------------in-----------");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from chat order by Time asc ");
			
			while(rs.next())
			{
				chatvo v1=new chatvo();
				v1.setMsg(rs.getString("Msg"));
				v1.setSender(rs.getString("Sender"));
				v1.setTime(rs.getString("Time"));
				ls.add(v1);
			}
			
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	
}