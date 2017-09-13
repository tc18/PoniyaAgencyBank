package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class datasheet {
	public List search(){
		List ls=new ArrayList();
		try
		{
			SessionFactory s =new Configuration().configure().buildSessionFactory();
			
			Session session = s.openSession();
			Query q=session.createQuery("from list_vehicles");

			ls=q.list();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	
	}
}
