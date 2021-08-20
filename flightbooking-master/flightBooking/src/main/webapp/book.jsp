<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Travelo</title>
      <style type="text/css"> 
        
        body{
    margin:0;
    padding: 0;
}
.result-container{
    width: 90%;
    margin-left: 5%;
    background:rgba(0,0,0,0.1);

}
.result-text{
    
    font-size: 20px;
    
    width:10%;
    text-align: center;
    display:  inline-block;

}
/*#######  upperContainer  #######*/
.container{
    width: 100%;
    
    display: block;
    background-image: url("images/home_slider.jpg")
}
.navBar{
    overflow: hidden;
    padding: 15px;
}
.sticky {
    position: fixed;
    top: 0;
    height: 50px;
    width: 100%;
    background: rgba(20, 1, 1, 0.4); 
  }
.navul{
    text-decoration: none;
    display:block;
}
.navli{
    padding: 20px;
    margin-top: 50px;
}
.navli, .navli a{
    font-size: 20px;
    text-decoration: none;
    display: inline;
    color:white;
}
.navli_left{
    padding: 20px;

}
.navli_left,.navli_left a{
    padding-right: 10%;
    font-size: 40px;
    display:inline;
    
    text-decoration: none;
    color:white;

}
.navli_right ,.navli_right a{
    padding-left: 18%;
    color:white;
    display: inline;
    text-decoration: none;
    font-size: 20px;
}
.navli_right{
    padding: 20px;
}
.text{
    padding: 10px;
    font-family: 'Times New Roman', Times, serif;
    text-align: center;
    font-size: 50px;
    color: white;
}

/*######  SignIn Modal ######*/
.modal{
    display: none;
    position: fixed;
    z-index: 1;
    padding-top: 5%;
    left: 0;
    top: 0;
    width: 100%;
    height:100%;
    overflow: auto;
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4);
}

.signin-modal-content{
    background: rgba(255,255,255,0.5);
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 50%;
}
.close{
    color: rgb(53, 52, 52);
    float: right;
    font-size: 28px;
    font-weight: bold;
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

#signIn-png{
    border-radius: 100px;
    opacity: 0.8;
    height: 130px;
    
}
.signin-image-container{
    text-align: center;
}

.sign-input{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    background: rgba(255,255,255,0.7);
  }
 .signin-text-container{
   
 }
  .signin-form{
      font-size: 25px;
      width: 80%;
      padding: 7%;
  }
  .signin-button-container{
      text-align: center;
      

  }
  #signin-button,#signup-button{
      margin-top: 4%;
      padding: 5px;
      font-size: 30px;
      width: 100%;
      background-color: #000;
      color: white;
  }
  #signin-button:hover,#signup-button:hover {
        background-color: rgb(63, 61, 61);
  }
/*#####  search container #####*/

.search_container{
    
    background: rgba(255,255,255,0.26);
    margin-left: 1%;
    margin-right: 1%;
   
    text-align: center;
    color: black;
    border-radius: 20px;
    padding: 4%;

}
.searchText{
    
    display: block;
    background-color: white;
    width: 20%;
    margin-left: 40%;
    padding: 20px;
    font-size: 20px;
    border-radius: 20px 20px 0 0;
}
.search-query{
    background-color: white;
    width:90%;
    margin-left: 5%;
}
.search-input{
    padding: 10px;
    font-size: 15px;
    margin: 1%;
    margin-top: 3%;
    background-color: #f9f6f6;
    border: none;
    margin-bottom: 3%;
    font-weight: bold;
}
#searchButton{
    margin-left: 2%;
    background-color: #000;
    color: white;
    border: none;
    padding: 20px;
    border-radius: 20px;
    width: 100px;
}

/*#####    ######*/
.dropdown-content {
    display: none;
    position: absolute;
    right: 0;
    margin:1%;
    background: rgba(255,255,255,0.26);
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    
    font-size: 20px;
    border-radius: 20px;
  }
  .dropdown-content a {
      opacity: 1;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    
  }
  .dropdown-content a:hover {
      background-color: #f1f1f1;
  }
  .navli_right:hover .dropdown-content {
    color:red; 
    display:block; 
    }
  
    /*##### fearures  ######*/
    .feature-container{
        text-align: left;
    }
    .col{
        display: flex;
        width: 90%;
        text-align: center;
        margin-left: 5%;
        padding: 4%;
    }
    .row{
        width: 33.33%;
    
    }
    .logo-row img{
        height: 80px;
        width: 80px;

    }
    .row-text h3, .row-text p{
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
    }
    
    /*##### footer  #####*/
footer{
    width: 100%;
}
    .footer{
        background-image: url("images/footer_1.jpg");
        height:400px;
        width: 100%;
       
    }
    .footer h2{
        color: white;
        font-size: 25px;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }
    .footer-title{
        text-align: center;
        padding: 4%;

    }
    .footer-form-container{
        text-align: center;
        padding: 10px;
    }
    .footer-input{
        padding:20px;
        color:white;
        background: rgba(255,255,255,0.5);
        border: none;
        margin-left: 30px;
    }
    .footer-button{
        padding: 20px;
        width: 100px;
        color: white;
        background: rgba(255,255,255,0.5);
        border: none;
        border-radius: 20px;
        margin-left: 30px;
    }
    .form,h1{
    text-align: center;}
    input,h1{
    	font-size: 20px;
    	display:block;
    	margin:15px;
    	margin-left: 40%;
    	
    	padding:15px;
    	padding-left: 30px;
    	padding-right: 30px;
    }
    
    .content{
    text-align: center;
    display: flex;
    padding:40px;
    margin-left:25%;
    }
    .buttonForm{
    margin-left:45%;
    background: blue;
    color: white;
    border:none;
    
    }
    .buttonForm:hover {
	background: green;
}
.details{
	font-size: 20px;
	text-align: left;
}
        </style>
        <link rel="stylesheet" type="text/css" href="search.css">
    </head>
    <body>
       <jsp:include page="include/header.jsp"></jsp:include>
        
        <%@ page isELIgnored="false" %>
       <%@ page import="java.sql.ResultSet" %>
        <% ResultSet rd=(ResultSet)request.getAttribute("rd"); 
        rd.next();
        HttpSession ses=request.getSession();
        ses.setAttribute("id", rd.getString(9));
        ses.setAttribute("price", rd.getString(6));
        %>
       <div class="content">
       <div class="details">
       
       		<div class="flightdetails">
       		<h2>Flight Details</h2>
       			<h4> Flight Name: <%=rd.getString(1) %></h4>
       			<h4> Source: <%=rd.getString(2) %></h4>
       			<h4> Destination: <%=rd.getString(3) %></h4>
       			<h4> Date: <%=rd.getString(4) %></h4>
       			<h4> Time: <%=rd.getString(5) %></h4>
       		<h4> Price: <%=rd.getString(6) %></h4>
       		<h4> Class: <%=rd.getString(7) %></h4>
       		
       		</div>
       </div>
       
       
       
       

 <div class="form">
  		<h1 style="font-size: 30px; width: 100%"> Enter your details </h1>
 	<form action="confirm">
 	
 	<input name="pasenger1" type="text " placeholder="Enter your name" required="required">
 	<input name="seats" type="number" placeholder="No of seats"  required="required">
 	<input name="phone" type="text" placeholder="Phone No"  required="required">
 	<input class="buttonForm" type="submit">
 	</form>
 </div>
 </div>
 <jsp:include page="include/bottom.jsp"></jsp:include>
</body>
<jsp:include page="include/footer.jsp"></jsp:include>
</html>