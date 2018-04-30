package com.ecommerce.model;

import com.ecommerce.model.Customer;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-04-26T21:29:07")
@StaticMetamodel(Profile.class)
public class Profile_ { 

    public static volatile SingularAttribute<Profile, Date> date;
    public static volatile SingularAttribute<Profile, String> path;
    public static volatile SingularAttribute<Profile, Character> gender;
    public static volatile SingularAttribute<Profile, String> hobbies;
    public static volatile SingularAttribute<Profile, Long> id;
    public static volatile SingularAttribute<Profile, String> fullname;
    public static volatile SingularAttribute<Profile, Customer> customer;

}