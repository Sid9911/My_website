<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="newcss22.css">
         <link rel="shortcut icon" type="image/jpeg" href="images1/icon.png">
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
        
        <title>Buying</title>
    </head>
    <body class="container" style="height: 200%">
      <button type="button" onclick="function()" style="background-color: black; float: right" id="button2"><a href="logout" style="text-decoration: none; color: white; font-size: medium;">Logout</a></button>
        <form>
           
          <div class="logo_container">
               <nav>
                   <img src="images1/logo.jpg" class="logo">
                <ul>
                     <li><a href="main1.html">Home</a></li>
                   <li><a href="list of shops1.html">List of shops</a></li>
                   <li><a href="buying.jsp">Buying</a></li>
                   <li><a href="selling.html">Selling</a></li>
                   <li><a href="#">Live customization</a>
                       <ul>
                           <li><a href="Interior.html">Interior</a></li>
                             <li><a href="Exterior.html">Exterior</a></li>
                         </ul>
                   </li>
                    <li><a href="Contact_us.html">Contact Us</a></li>
                 </ul>
               </nav>
             </div>
            <div class="social-icons">
        <div class="btn-group-vertical">
            <button type="button" class="btn btn-dark" data-toggle="tooltip" data-placement="left" title="Share on Facebook"  onclick="function()" id="button"><a href="https://www.facebook.com">
                    <i class="fa fa-facebook"></i></a>
          </button>
            <button type="button" class="btn btn-dark" data-toggle="tooltip" data-placement="left" title="Share on Twitter"  onclick="function()" id="button"><a href="https://twitter.com">
                    <i class="fa fa-twitter"> </i></a>
          </button>
          <button type="button" class="btn btn-dark" data-toggle="tooltip" data-placement="left" title="Share on Email"  onclick="function()" id="button"><a href="https://mail.google.com">
                    <i class="fa fa-envelope"></i></a>
            </button>
        </div>
    </div>
         
     
        <table class="table1"   border="1" cellpadding="10" cellspacing="2" style="color: white">
            <tr>
                <th> Vehicle Name </th>
                <th> Type </th>
                <th> Make </th>
                <th> Model </th>
                 <th> Seller Name </th>
                <th> Contact Details</th>
                  <th> Address </th>
               
                  <th class="nob"><a href="Details.jsp" style="text-decoration: none;color: white;font-weight: bolder;" class="rdmore"> Read more</a></th>
           </tr>
           
           
               <%
                   try
                   {
                       
                       Class.forName("com.mysql.jdbc.Driver").newInstance();
                       Connection conn=DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6408556","sql6408556","4wYpZakE2k");
                      PreparedStatement ps=conn.prepareStatement("select * from seller");
                      ResultSet rs=ps.executeQuery();
                   
                   
                       while(rs.next()){
                  
                     %>
           <tr>
                           <td> <%= rs.getString("Vehicle Name") %></td>
                            <td> <%= rs.getString("Type")  %></td>
                            <td> <%= rs.getString("Make")  %></td>
                            <td><%= rs.getString("Model")  %></td>
                           <td><%= rs.getString("Seller Name")  %></td>
                            <td><%= rs.getString("Contact Details") %></td>
                            <td> <%= rs.getString("Address")  %></td>
                           
                            
                               
           </tr>
                               
                               <%
                               }    
                          
                       }
                       
                       
                   
                   
                   catch(Exception e){
                       System.out.println(e);
                   }
  %>       
  

        </table>
  <h4 style="color: red; text-align: center">**TO SEE THE CAR, PLEASE CONTACT THE SELLER**</h4>

        </form>
       <script>
              $(document).ready(function() {
                   $("#button").click(function(){
    if(document.referrer != 'http://localhost:8080/'){ 
        history.pushState(null, null, 'main1.html');
        window.addEventListener('popstate', function () {
            history.pushState(null, null, 'main1.html');
        });
    }
                   });
});
           </script>
           <script>
              $().ready(function() {
                     $("#button2").click(function(){
    if(document.referrer != 'http://localhost:8080/'){ 
        history.pushState(null, null, 'index.html');
        window.addEventListener('popstate', function () {
            history.pushState(null, null, 'index.html');
        });
    }
                     });
});
           </script>

    </body>
</html>
