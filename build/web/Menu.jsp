<%-- 
    Document   : Menu
    Created on : 9 Jun, 2017, 2:50:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>       
               #Menubox{       
                   position:absolute;       
                   top:20%;       
                   left:40%;       
               }       
          
               /* unvisited link */       
               a:link {       
                   color: #800448;       
               }       
          
               /* visited link */       
               a:visited {       
                   color: yellow;       
               }       
          
               /* mouse over link */       
               a:hover {       
                   color: orange;       
               }       
          
               /* selected link */       
               a:active {       
                   color:red ;       
               }       
            #Heading{
            Font-family:verdana;
            font-size:20px;
            border:3px;
            border-style:ridge;
            border-color:grey; 
            color:Green
          }
           body{
                background-size: cover;
            }
           </style>       
         <title>         
               <p> Select the stuff!<p</p>         
           </title>        
       </head>       
       <body background="Eminem-Wallpaper-Desktop.jpg" >         
           <div id='Menubox'>       
               <center>         
                          
                   <table border='6' cellspacing='15'>         
                       <th id="Heading">Select option!</th>         
                       <tr>         
                           <td style='text-align:center;color:Gold; font-size:20px;'>         
                               <a href='NewRegistration.jsp'><font face='verdana'>New Registration</font></a>         
                           </td>         
                       </tr>         
                       <tr >         
                           <td style='text-align:center; font-size:20px;'>         
                               <a href='NewReport.jsp'><font face='verdana'>New Report       
                           </td>         
                       </tr>         
                       <tr>         
                           <td style='text-align:center;font-size:20px;'>         
                               <a href='SearchUpdate.jsp'><font face='verdana'>Update Registered user       
                           </td>         
                       </tr>         
                       <tr>         
                           <td style='text-align:center; font-size:20px;'>         
                               <a href='SearchDelete.jsp'><font face='verdana'>Delete User      
                           </td>         
                       </tr>         
                       <tr>         
                           <td style='text-align:center;font-size:20px;'>         
                               <a href='LogOutPage.jsp'><font face='verdana'>Log Out         
                           </td>         
                       </tr>         
                   </table>         
               </center>       
           </div>       
       </body>           
   </html>   