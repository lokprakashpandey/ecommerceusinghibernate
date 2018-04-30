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
        <div class="contact">
            <h2 class=" contact-in">CONTACT</h2>
                <div class="col-md-6 contact-top">
                    <h3>Info</h3>
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.2327395394627!2d-79.73073808483427!3d43.64332587912155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b3feff9be89cb%3A0x13838ed39bbfd0f8!2sMississauga%2C+ON+L5W+1M5!5e0!3m2!1sen!2sca!4v1524674430632" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>

                    <p>Digital Exciting Pvt Ltd</p>
                    <ul class="social ">
                        <li><span><i > </i>583 Rossellini Drive, Mississauga, Ontario </span></li>
                        <li><span><i class="down"> </i>(+1) 123 456 7890</span></li>
                        <li><a href="mailto:info@example.com"><i class="mes"> </i>info@example.com</a></li>
                    </ul>
                </div>
                <div class="col-md-6 contact-top">
                    <h3>Want to work with me?</h3>
                        <div>
                                <span>Your Name </span>		
                                <input type="text" value="" >						
                        </div>
                        <div>
                                <span>Your Email </span>		
                                <input type="text" value="" >						
                        </div>
                        <div>
                                <span>Subject</span>		
                                <input type="text" value="" >	
                        </div>
                        <div>
                                <span>Your Message</span>		
                                <textarea> </textarea>	
                        </div>
                        <input type="submit" value="SEND" >	
                </div>
                <div class="clearfix"> </div>
        </div>
    </div>

<%@include file="footer.jsp" %>