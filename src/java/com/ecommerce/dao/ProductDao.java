package com.ecommerce.dao;

import com.ecommerce.model.Product;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class ProductDao {

    public List <Product> getProductList() {

        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

        Session session = sessionFactory.openSession();

        session.beginTransaction();

        Query query = session.createQuery("from Product");

        query.setMaxResults(12);
        
        List <Product> list = query.list();
        
        return list;

    }
    
    public Product getProduct(long p){
        
        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

        Session session = sessionFactory.openSession();

        session.beginTransaction();
        
        Query query = session.createQuery("from Product where id = :pid");
   
        query.setParameter("pid", p);
        
        List list = query.list();
        
        return (Product) list.get(0);
    }
}
