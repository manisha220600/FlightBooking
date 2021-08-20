<div class="container">
            <div class="navBar" id="navbar">
                <ul class="navul">
                    <li class="navli_left"><a href="index.jsp">Travelo</a></li>
                    <div style="text-align: center ; display: inline;">
                    <li class="navli"><a href="index.jsp">Home</a></li>
                    <li class="navli"><a href="#">About Us</a></li>
                    <li class="navli"><a href="#">Services</a></li>
                    <li class="navli"><a href="#">Contact</a></li>
                    </div>
                      <%@ page isELIgnored="false" %>
                    <% HttpSession ses=request.getSession();
                    
                    if(ses.getAttribute("name")==null){
                    	
                    
                    %>
                    <li class="navli_right"><a href="#">SignIn</a>
                        <div class="dropdown-content">
                                <a href="#" id="signIn">Sign In</a>
                                <a href="#" id="signUp">Sign Up</a>
                                
                              </div></li>
                              <!-- Signin Modal-->
                              <div  class="modal" id="signInModal">
                                  <div class="signin-modal-content">
                                      <div class="signin-image-container">
                                          <img src="images/signin.png" id="signIn-png">
                                  <span class="close">&times;</span>
                                </div>
                                  <div class="signin-text-container">
                                      <form class="signin-form" action="signin">
                                      <label><b>UserName</b></label>
                                      <input class="sign-input" type="text" name="UserName" placeholder="Enter UserName" required>
                                      <label><b>Password</b></label>
                                      <input class="sign-input" type="password" placeholder="Enter Password" name="Password" required>
                                      <div class="signin-button-container">
                                      <button type="submit" id="signin-button">Sign In</button>
                                    </div>
                                    </form>
                                  </div>
                              </div>
                            </div>
                             <!-- Signup Modal-->
                             <div  class="modal" id="signupModal">
                                    <div class="signin-modal-content">
                                        <div class="signin-image-container">
                                            <img src="images/signin.png" id="signIn-png">
                                    <span class="close">&times;</span>
                                  </div>
                                    <div class="signin-text-container">
                                        <form class="signin-form" action="signup">
                                        <label><b>UserName</b></label>
                                        <input class="sign-input" type="text" name="UserName" placeholder="Enter UserName" required>
                                        <label><b>Email</b></label>
                                        <input class="sign-input" type="email" name="email" placeholder="Enter Email" required>
                                        <label><b>Phone No</b></label>
                                        <input class="sign-input" type="text" name="phone" placeholder="Enter Phone No" required>
                                        <label><b>Password</b></label>
                                        <input class="sign-input" type="password" placeholder="Enter Password" name="Password" required>
                                        <div class="signin-button-container">
                                        <button type="submit" id="signup-button">Register</button>
                                      </div>
                                      </form>
                                    </div>
                                </div>
                              </div>
                            <%   
                    }
                    else if(ses.getAttribute("name").equals("admin")){
                    	%>
                   	 <li class="navli_right"><a href="#">${name }</a>
                   	   <div class="dropdown-content">
                               <a href="admin.jsp" id="My Bookings">Add Flight</a>
                               <a href="transactions.jsp" id="My Account">View all bookings</a>
                               <form action="logout">
                              <a><button id="Logout" type="submit" style="border:none; font-size: 20px; background: none;">Log out</button></a>
                               </form>
                             </div></li>
                   	 <%
                   	
                    }
                    
                    else{
                    	%>
                    	 <li class="navli_right"><a href="#">${name }</a>
                    	   <div class="dropdown-content">
                                <a href="transactions.jsp" id="My Bookings">My Bookings</a>
                                <a href="account.jsp" id="My Account">My Account</a>
                                <form action="logout">
                               <a><button id="Logout" type="submit" style="border:none; font-size: 20px; background: none;">Log out</button></a>
                                </form>
                              </div></li>
                    	 <%
                    	
                    }
                            
                            
                            %>
                    
                </ul>
            </div>