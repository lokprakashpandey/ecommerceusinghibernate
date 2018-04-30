package com.ecommerce.dao;

import com.ecommerce.model.Customer;
import com.ecommerce.model.Profile;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class InsertDao {

    
    public void insertCustomerProfile(Customer cu, Profile pr) {
        
        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

        Session session = sessionFactory.openSession();

        session.beginTransaction();

        //System.out.println("a--->>>" + cu.getUname());
        //System.out.println("b--->>>" + pr.getFullname());
        
        session.save(cu);
        session.save(pr);

        session.getTransaction().commit();
    }
    
}
