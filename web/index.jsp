<%@page import="com.ecommerce.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.model.Product"%>
<%@include file="header.jsp" %>
<script src='https://www.google.com/recaptcha/api.js'></script>

<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
					<p class="wel">Welcome visitor <i class="em em---1"></i>&nbsp;&nbsp;&nbsp;</p> 
                            
                            <!-- Trigger the modal with a button -->
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#loginModal">login</button>

                            <!-- Modal -->
                            <div id="loginModal" class="modal fade" role="dialog">
                              <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Login</h4>
                                  </div>
                                  <div class="modal-body">
                                      <form class="form-horizontal" method="post" action="CustomerServlet">
                                        <div class="form-group">
                                            <label class="control-label col-sm-3">Username :</label>
                                            <div class="col-sm-9">
                                            <input type="text" class="form-control" name="username" placeholder="Enter username:" required>
                                            </div>
                                        </div>                                            
                                        <div class="form-group">
                                            <label class="control-label col-sm-3">Password :</label>
                                            <div class="col-sm-9">
                                            <input type="password" class="form-control" name="password" placeholder="Enter password:" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                              <div class=" col-sm-offset-3 col-sm-9">
                                                  <div class="g-recaptcha" data-sitekey="6Ld1jFUUAAAAABDJg4gtDAUAdNBuHeC1rpcWooY6"></div>
                                              </div>
                                        </div>
                                        <div class="form-group"> 
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-default" name="login" value="Log In">Log In</button>
                                            </div>
                                        </div>  
                                      </form>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                        
                        or 
                            
                            <!-- Trigger the modal with a button -->
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#createModal">create an account</button>

                            <!-- Modal -->
                            <div id="createModal" class="modal fade" role="dialog">
                              <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Create an account</h4>
                                  </div>
                                  <div class="modal-body">
                                      
                                      
                                      <form class="form-horizontal" method="post" action="UploadServlet" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class="control-label col-sm-3">Full Name :</label>
                                                <div class="col-sm-9">
                                                  <input type="text" class="form-control" name="fullname" placeholder="Enter full name:" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-sm-3">Gender :</label>
                                                <div class="col-sm-9">
                                                    <div class="radio">
                                                      <label><input type="radio" name="gender" value="M" required>Male</label>
                                                    </div>
                                                    <div class="radio">
                                                      <label><input type="radio" name="gender" value="F">Female</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-sm-3">Username :</label>
                                                <div class="col-sm-9">
                                                  <input type="text" class="form-control" name="username" placeholder="Enter username:" required>
                                                </div>
                                            </div>                                            
                                            <div class="form-group">                    
                                                <div class="input-group col-sm-12">
                                                  <input type="email" class="form-control" name="email" placeholder="Email" required>
                                                </div>
                                                <div class="input-group col-sm-12">
                                                  <input type="password" class="form-control" name="password" placeholder="Password" required>
                                                </div>
                                            </div>

                                            
                                            <div class="form-group">
                                                <label class="control-label col-sm-3">Hobbies :</label>
                                                <div class="col-sm-9">
                                                    <select multiple class="form-control" name="hobbies" required>
                                                        <option value="Sports">Sports</option>
                                                        <option value="Traveling">Traveling</option>
                                                        <option value="Music">Music</option>
                                                        <option value="Other">Other</option>
                                                     </select>
                                                </div>
                                            </div>
                                          
                                            <div class="form-group"> 
                                                <label class="control-label col-sm-3">Birthday :</label>
                                                <div class="col-sm-9">
                                                  <input type="date" class="form-control" name="birthday" required>
                                                </div>
                                            </div>
                                          
                                            <div class="form-group">
                                                <label class="control-label col-sm-3">Picture :</label>
                                                <div class="col-sm-9">
                                                    <input type="file" name="pic" class="btn btn-default" required>
                                                </div>
                                            </div>
                                          
                                          
                            
                                            <div class="form-group"> 
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <button type="submit" class="btn btn-default" name="create" value="Create Account">Create account</button>
                                                </div>
                                            </div>
                                        </form>
                                      
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                       
                        
			
                            <div class="clearfix"></div>
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
                                List <Product> l = new ProductDao().getProductList();
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
	<div class="banner-mat">
		<div class="container">
			<div class="banner">
	
			    <!-- Slideshow 4 -->
			    <div class="slider">
                                <ul class="rslides" id="slider1">
                                  <li><img src="images/banner.jpg" alt="">
                                  </li>
                                  <li><img src="images/banner1.jpg" alt="">
                                  </li>
                                  <li><img src="images/banner.jpg" alt="">
                                  </li>
                                  <li><img src="images/banner2.jpg" alt="">
                                  </li>
                                </ul>
                            </div>

                            <div class="banner-bottom">
                                    <div class="banner-matter">
                                            <a href="single.html" class="hvr-shutter-in-vertical ">Purchase</a>
                                    </div>
                                    <div class="purchase">
                                            <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Purchase</a>
                                    </div>
                                    <div class="clearfix"></div>
                            </div>
			</div>				
			<!-- //slider-->
		</div>
	</div>		
<%@include file="footer.jsp" %>                