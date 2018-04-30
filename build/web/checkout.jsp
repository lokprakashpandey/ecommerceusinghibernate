<%@page import="com.ecommerce.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.model.Product"%>
<%@include file="header.jsp" %>

<% List <Product> l = new ProductDao().getProductList(); %>
  <!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=" " ></a>
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
		
	</div>
                                        
	<div class="container">
	    <div class="check-out">
                <h4 class="title">Shopping cart items</h4>
                
                    <%
                    if(session.getAttribute("cart")!=null){

                        List <Product> cart = (List <Product>)session.getAttribute("cart");
                        List <Integer> quantity = (List <Integer>)session.getAttribute("quantity");
                    %>
                    <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>S.N.</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>

                    <%    
                        for(int i=0; i<cart.size(); i++){
                    %>
                    <tbody>
                        <tr>
                            <td><%= i+1 %></td>
                            <td><%= cart.get(i).getName() %></td>
                            <td><%= cart.get(i).getPrice() %></td>
                            <td><%= quantity.get(i).intValue() %></td>
                        </tr>
                        <%
                            }
                         }
                        %>
                        </tbody>
                    </table>

                    <br>Click<a href="products.jsp"> here</a> to continue shopping 
                    <br><br> 
                    <form method="post" action="OrderServlet">
                    <button class="btn btn-primary" name="pay" type="submit">Proceed to Payment</button></p>
                    </form>
    	    </div>
        </div>

 
<%@include file="footer.jsp" %>