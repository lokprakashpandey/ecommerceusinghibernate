/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ecommerce.dao;

import com.ecommerce.model.Customer;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 *
 * @author lokpr
 */
public class CheckDao {
    
    public Customer authenticate(String u, String p){
        
        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

        Session session = sessionFactory.openSession();

        session.beginTransaction();
        
        Query query = session.createQuery("from Customer where uname = :username and password = :pass");
        query.setParameter("username", u);
        query.setParameter("pass", p);
        
        List list = query.list();
        
        if(!list.isEmpty()) {
            return (Customer)list.get(0);
        }
        else 
            return null;
    }
}
