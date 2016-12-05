package com.action;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.SHbeinate.HibernateSessionFactory;
import com.SHbeinate.Test;
import com.opensymphony.xwork2.ActionSupport;

public class actionDelete extends ActionSupport {

	private Integer id;
	private String name;







	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}







		
	public String execute() throws Exception {
		
		Session session=HibernateSessionFactory.getSession();
		
		
		Transaction transaction=session.beginTransaction();
		
		if(getName()!=null)
		{
			Test test=(Test)session.get(Test.class,getId());
			session.delete(test);
			
		}
		transaction.commit();
		HibernateSessionFactory.closeSession();
	
		
		return "success";
	}
}
