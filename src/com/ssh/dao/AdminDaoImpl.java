package com.ssh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.ssh.domain.Admin;  
  
public class AdminDaoImpl implements AdminDao {  
	private SessionFactory sessionFactory;
	 
	 public void setSessionFactory(SessionFactory sessionFactory) {
		 this.sessionFactory = sessionFactory;
	 }
    public Admin login(final String name, final String pass) {  
    	 Session session = sessionFactory.openSession();
    	 //Criteria criteria = session.createCriteria(Admin.class);
    	 Object obj = session  
                 .createQuery(  
                         "select * from admin where name=:name and pass=:pass")  
                 .setString("name", name)  
                 .setString("pass", pass).uniqueResult();  
         return (Admin) obj;
    }  
}  