
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
     
           
        <title>Details</title>
    </head>
    <body class="container" style="height: 200%">
        <button type="button" onclick="function()" style="background-color: black; float: right" id="button2"><a href="logout" style="text-decoration: none; color: white; font-size: medium;">Logout</a></button>
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
             
          <form>
        <table border="1" cellpadding="10" cellspacing="2" class="table2" style="color: white">
            <tr>
               
                <th> Mileage </th>
                <th> Power </th>
                <th> Color </th>
                <th> Doors </th>
                <th> Fuel Type </th>
                <th> GearBox </th>
                <th> Number of seats </th>
                <th> Modification Description </th>
               
                <th> Email </th>
               
           </tr>
            
           
               <%
                   try
                   {
                       Class.forName("com.mysql.jdbc.Driver").newInstance();
                       Connection conn=DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6408556","sql6408556","4wYpZakE2k");
                       String Query="select * from seller";
                       Statement stmt=conn.createStatement();
                       ResultSet rs=stmt.executeQuery(Query);
                       while(rs.next()){
                          %>
           <tr>
                          <td><%= rs.getString("Mileage")  %></td>
                            <td><%= rs.getString("Power")  %></td>
                            <td> <%= rs.getString("Color")  %></td>
                           <td> <%= rs.getInt("Doors")  %></td>
                          <td><%= rs.getString("Fuel Type")  %></td>
                         <td> <%= rs.getString("GearBox")  %></td>
                         <td> <%= rs.getInt("Number of seats")  %></td>
                              <td><%= rs.getString("Modification Description")  %></td>
                             
                             <td><%= rs.getString("Email")  %></td>
                        
           </tr>
                               
                               <%
                          
                       }
                       
                       
                   }
                   
                   catch(Exception e){
                       out.println(e);
                   }
 %>         
        </table>
    
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
