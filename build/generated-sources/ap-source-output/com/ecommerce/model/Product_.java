package com.ecommerce.model;

import com.ecommerce.model.Order;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-04-26T21:29:07")
@StaticMetamodel(Product.class)
public class Product_ { 

    public static volatile SingularAttribute<Product, String> path;
    public static volatile SingularAttribute<Product, Integer> quantity;
    public static volatile SingularAttribute<Product, Float> price;
    public static volatile SingularAttribute<Product, String> name;
    public static volatile SetAttribute<Product, Order> orders;
    public static volatile SingularAttribute<Product, Long> id;

}