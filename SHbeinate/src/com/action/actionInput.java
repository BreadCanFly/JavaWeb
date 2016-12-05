package com.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.SHbeinate.HibernateSessionFactory;
import com.SHbeinate.Test;
import com.opensymphony.xwork2.ActionSupport;

public class actionInput extends ActionSupport {

	
	private String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	//private Integer ID;
	
	
	/*public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}*/

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		
		//test1.setId(ID);
		
		Session session=HibernateSessionFactory.getSession();
			Transaction transaction=session.beginTransaction();
		
			Test test1=new Test();
			test1.setName(name);
			if(test1.getName()!=null)
			{
				session.save(test1);
			}
			transaction.commit();
			HibernateSessionFactory.closeSession();
		
		                           
		return "success";
		
	}
}
