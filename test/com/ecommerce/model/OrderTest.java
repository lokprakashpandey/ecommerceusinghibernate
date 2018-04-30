/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ecommerce.model;

import java.util.Date;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author lokpr
 */
public class OrderTest {
    
    public OrderTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getId method, of class Order.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        Order instance = new Order();
        Long expResult = null;
        Long result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class Order.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        Long id = null;
        Order instance = new Order();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of hashCode method, of class Order.
     */
    @Test
    public void testHashCode() {
        System.out.println("hashCode");
        Order instance = new Order();
        int expResult = 0;
        int result = instance.hashCode();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of equals method, of class Order.
     */
    @Test
    public void testEquals() {
        System.out.println("equals");
        Object object = null;
        Order instance = new Order();
        boolean expResult = false;
        boolean result = instance.equals(object);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of toString method, of class Order.
     */
    @Test
    public void testToString() {
        System.out.println("toString");
        Order instance = new Order();
        String expResult = "";
        String result = instance.toString();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCustomer method, of class Order.
     */
    @Test
    public void testGetCustomer() {
        System.out.println("getCustomer");
        Order instance = new Order();
        Customer expResult = null;
        Customer result = instance.getCustomer();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCustomer method, of class Order.
     */
    @Test
    public void testSetCustomer() {
        System.out.println("setCustomer");
        Customer customer = null;
        Order instance = new Order();
        instance.setCustomer(customer);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getOrder_date method, of class Order.
     */
    @Test
    public void testGetOrder_date() {
        System.out.println("getOrder_date");
        Order instance = new Order();
        Date expResult = null;
        Date result = instance.getOrder_date();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setOrder_date method, of class Order.
     */
    @Test
    public void testSetOrder_date() {
        System.out.println("setOrder_date");
        Date order_date = null;
        Order instance = new Order();
        instance.setOrder_date(order_date);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProducts method, of class Order.
     */
    @Test
    public void testGetProducts() {
        System.out.println("getProducts");
        Order instance = new Order();
        List<Product> expResult = null;
        List<Product> result = instance.getProducts();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setProducts method, of class Order.
     */
    @Test
    public void testSetProducts() {
        System.out.println("setProducts");
        List<Product> products = null;
        Order instance = new Order();
        instance.setProducts(products);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
