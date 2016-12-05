package com.SHbeinate;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;



public class query {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String hql="from Test";
		Session session=HibernateSessionFactory.getSession();
		Query query=session.createQuery(hql);
		List<?> list=query.list();
		Iterator<?> iter=list.iterator(); 
		Test test=null;
		while(iter.hasNext())
		{
			test=(Test)iter.next();
			System.out.println(test.getId()+test.getName());
		} 
		
		HibernateSessionFactory.closeSession();
		
	}

}
