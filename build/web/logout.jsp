<%@page import="com.ecommerce.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.model.Product"%>
<%@include file = "header.jsp" %>

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
              
        <div class="header-bottom-in">
            <div class="container">
                <div class="header-bottom-on">
                  <p class="wel">Bye Bye 
                  <strong><% 
                              String name = (String) session.getAttribute("uname");
                              out.println(name+".");
                                
                              session.invalidate();
                              
                          %>
                          <a href="index.jsp">(LogIn Again)</a>
                  </strong>
                  </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
      </div>

<%@include file = "footer.jsp" %>