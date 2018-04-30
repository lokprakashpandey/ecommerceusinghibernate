package com.ecommerce.dao;

import com.ecommerce.model.Customer;
import com.ecommerce.model.Order;
import com.ecommerce.model.Product;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class OrderDao {
    
    
     public static Customer getCustomer(long customer_id){
        
        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

        Session session = sessionFactory.openSession();

        session.beginTransaction();
        
        Query query = session.createQuery("from Customer where id = :cid");
   
        query.setParameter("cid", customer_id);
        
        List list = query.list();
        
        return (Customer) list.get(0);
    }
     
     public static void insertProductOrder(Order order, List <Product> cart, List<Integer> quantity){
         
        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

        Session session = sessionFactory.openSession();

        session.beginTransaction();
        
        Query query;
        
        List list;
        Product pr;
        
        List <Order> orders = new ArrayList<>();
        orders.add(order);
        
        
        List <Product> products = new ArrayList<>();
        
        for(int i=0;i<cart.size();i++) {
        
        query = session.createQuery("from Product where id = :pid");
        query.setParameter("pid", cart.get(i).getId());
        list = query.list();
        pr = (Product) list.get(0);
        pr.setQuantity(cart.get(i).getQuantity() - quantity.get(i));
        
        pr.setOrders(orders);
        products.add(pr);
        
//        pr = cart.get(i);
//        pr.setQuantity(cart.get(i).getQuantity() - quantity.get(i));
        
//        cart.get(i).setQuantity(cart.get(i).getQuantity() - quantity.get(i));
//        
//        cart.get(i).setOrders(orders);
//        
//        session.merge(cart.get(i));
//        
      //note: merge = save + update
        
        //session.saveOrUpdate(cart.get(i));
        }
//        
//        for(int i=0;i<cart.size();i++) {
//        
//            cart.get(i).setOrders(orders);
//        }
        
        order.setProducts(products);
        
        session.save(order);
        
        //session.flush();
        
        session.getTransaction().commit();
     }
     
}
