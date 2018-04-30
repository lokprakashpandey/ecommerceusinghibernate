<%@page import="com.ecommerce.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.model.Product"%>
<%@page import="com.ecommerce.model.Customer"%>
<%@include file="header.jsp" %>
<% 
    Customer c = (Customer)request.getAttribute("customer");
    
    if(c != null) {
    session.setAttribute("uname", c.getUname());
    session.setAttribute("cid", c.getId());
    }
    
    List <Product> l = new ProductDao().getProductList();
    
%>
  <!--header-->
	<div class="header">
            <div class="header-top">
                <div class="container">	
                    <div class="header-top-in">			
                        <div class="logo">
                                <a href="index.html"><img src="images/logo.png" alt=" " ></a>
                        </div>
                        <div class="header-in">
                            <ul class="icon1 sub-icon1">
                                <li><a href="logout.jsp">LOGOUT</a></li>
                                <li> <a href="checkout.jsp" >CHECKOUT</a> </li>	
                                
                                <%
                                if(session.getAttribute("cart")!=null){

                                    List <Product> cart = (List <Product>)session.getAttribute("cart");
                                    List <Integer> quantity = (List <Integer>)session.getAttribute("quantity");
                                %>

                                <li><div class="cart">
                                        <a href="#" class="cart-in"> </a>
                                        <span> <%= cart.size() %></span>
                                    </div>
                                    <ul class="sub-icon1 list">
                                        <h3>Items List (<%= cart.size() %>)</h3>
                                        <div class="shopping_cart">

                                            <%    
                                                    float total = 0;
                                                    for(int i=0; i<cart.size(); i++){
                                            %>

                                            <div class="cart_box">
                                                <div class="message">
                                                    <div class="alert-close"> </div> 
                                                    <div class="list_img">
                                                        <img src="images/<%= cart.get(i).getPath() %>" class="img-responsive" alt="<%= cart.get(i).getName() %>">
                                                    </div>
                                                    <div class="list_desc">
                                                        <h4><%= cart.get(i).getName() %></h4>
                                                        <%= quantity.get(i).intValue() %> x
                                                        <span class="actual">
                                                        <%= cart.get(i).getPrice() %>
                                                        </span>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>

                                            <%
                                                total += quantity.get(i).intValue()*cart.get(i).getPrice();
                                              }
                                            %>            


                                        </div>
                                        <div class="total">
                                                <div class="total_left">Cart Subtotal : </div>
                                                <div class="total_right"><%= total %></div>
                                                <div class="clearfix"> </div>
                                        </div>
                                        <div class="login_buttons">
                                            <div class="check_button">
                                                <a href="checkout.jsp">Check out</a>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                      <div class="clearfix"></div>
                                    </ul>
                                </li>

                                <% } else { 

                                %>
                                <li><div class="cart">
                                        <a href="#" class="cart-in"> </a>
                                        <span> 0</span>
                                    </div>
                                </li>
                                <% } %>
                            
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>

            
    <div class="header-bottom">
        <div class="container">
            <div class="h_menu4">
                <a class="toggleMenu" href="#">Menu</a>
                <ul class="nav">
                    <%
                        
                    for(int i=0; i < 7; i++) {    
                    %>
                    <li><a href="#">
                    <%
                        if(i == 0) {
                            out.println("<i> </i>");
                        }
                    %>
                    <%=
                    l.get(i).getName()
                    %>
                    </a></li>
                    <%
                    }
                    %>
                    
                    <li class="active"><a href="#" > More </a>
                        <ul class="drop">
                            <%
                            for(int i=7; i < l.size(); i++) {
                                out.println("<li><a href='#'>");
                                out.println(l.get(i).getName());
                                out.println("</a></li>");
                            }    
                            %>
                        </ul>
                    </li>
                    <li><a href="contact.jsp" > Contact </a></li>
		</ul>
		<script type="text/javascript" src="js/nav.js"></script>
	    </div>
		</div>
		</div>
		<div class="header-bottom-in">
		<div class="container">
		<div class="header-bottom-on">
			<p class="wel">Welcome 
                        
                        <strong><% 
                                    String name = (String) session.getAttribute("uname");
                                    out.println(name);
                                %></strong>
                        
                        </p>
			
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>
	
    <div class="container">
        <div class="products">
            <h2 class=" products-in">PRODUCTS</h2>
            
            <%
            for(int i=0; i<l.size(); i=i+4) {
            %>
            <div class="top-products">
            <%
                    for(int j=i; j<i+4; j++) {
            %>
                <div class="col-md-3 md-col">
                    <div class="col-md">
                        <form method="post" action="ProductServlet?action=add&id=<%= l.get(j).getId() %>">
                        <img  src="images/<%= l.get(j).getPath() %>" alt="<%= l.get(j).getName() %>" />	
                            <div class="top-content">
                                <input type="number" name="quantity" min="1" required><strong><%= l.get(j).getName() %></strong>
                                    <div class="white">
                                        <button type="submit" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">
                                            ADD TO CART
                                        </button>
                                        <p class="dollar"><span class="in-dollar">$</span>
                                            <span><%= l.get(j).getPrice()%></span>
                                        </p>
                                        <div class="clearfix"></div>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
            <% } %>
            <div class="clearfix"></div>
            </div>
            <% } %>
        </div>
    </div>

<%@include file="footer.jsp" %>