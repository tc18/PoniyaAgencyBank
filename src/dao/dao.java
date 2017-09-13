package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import vo.employee_vehicle;

public class dao {

	public List search1()
	{
		List ls=new ArrayList<>();
		try
		{
		
		System.out.println("in search");
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from list_vehicles ORDER BY `Reg_No` ASC");
		
		
		
		while(rs.next())
		{
			String main=rs.getString("Reg_No");
			System.out.print(main+" ");
			String s1,s2,s3,s4,s5,s6;
			
			if(main.equals(""))
			{
				
			}
			else
			{
				s1=(String) main.subSequence(0, 2);
				s2=(String) main.substring(2);
				s3="";
				s4="";
				s5="";
				s6="";
								
				if(Character.isDigit( s2.charAt(0)))
				{
					s3=s2.substring(1);
					if(Character.isDigit( s3.charAt(0)))
					{
						s4=s3.substring(1);
					}
					if(Character.isAlphabetic( s3.charAt(0)))
					{
						s4=s3;
					}
					
				}
				else
				{
					s2=s2.substring(1);
					if(Character.isDigit( s2.charAt(0)))
					{
						s3=s2.substring(1);
						if(Character.isDigit( s3.charAt(0)))
						{
							s4=s3.substring(1);
						}
						if(Character.isAlphabetic( s3.charAt(0)))
						{
							s4=s3;
						}
						
					}
				}
				
				
				if(Character.isAlphabetic( s4.charAt(0)))
				{
					if(Character.isAlphabetic(s4.substring(1).charAt(0)))
					{
						s5=s4.substring(0,2);
						s6=s4.substring(2);
					}
					if(Character.isDigit( s4.substring(1).charAt(0)))
					{
						s5=s4.substring(0,1);
						if(Character.isDigit( s4.substring(1).charAt(0)))
						{
							s6=s4.substring(1);
						}
						else
						{
							s6=s4.substring(2);
						}
					}
					else
					{
						s4=s4.substring(1);
						if(Character.isDigit( s4.substring(1).charAt(0)))
						{
							s5=s4.substring(0,1);
							if(Character.isDigit( s4.substring(1).charAt(0)))
							{
								s6=s4.substring(1);
							}
							else
							{
								s6=s4.substring(2);
							}
						}
					}
					
				}
				
				int l=s6.length();
				String l2=""+l;
				if(l2.equals("4"))
				{
					s6=s6;
				}
				if(l2.equals("3"))
				{
					s6="0"+s6;
				}
				if(l2.equals("2"))
				{
					s6="00"+s6;
				}
				if(l2.equals("1"))
				{
					s6="000"+s6;
				}
				
				System.out.println(s1+" "+s5+" "+s6);
				
				/*v.setFirst2(s1);
				v.setMiddle2(s5);
				v.setLast4(s6);*/
			}
			
			
		}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return ls;
	}
	
	public static void main(String a[])
	{
	 dao d=new dao();
	 d.search1();
	}
}
