package com.action;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;





import com.SHbeinate.HibernateSessionFactory;
import com.SHbeinate.Test;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.mail.handlers.text_html;

public class actionTest extends ActionSupport {

	
	public String execute() throws Exception {
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
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("TestList", list);
		
		return "success";
		
	}
}
