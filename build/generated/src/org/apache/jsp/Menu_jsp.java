package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>       \n");
      out.write("               #Menubox{       \n");
      out.write("                   position:absolute;       \n");
      out.write("                   top:20%;       \n");
      out.write("                   left:40%;       \n");
      out.write("               }       \n");
      out.write("          \n");
      out.write("               /* unvisited link */       \n");
      out.write("               a:link {       \n");
      out.write("                   color: #800448;       \n");
      out.write("               }       \n");
      out.write("          \n");
      out.write("               /* visited link */       \n");
      out.write("               a:visited {       \n");
      out.write("                   color: yellow;       \n");
      out.write("               }       \n");
      out.write("          \n");
      out.write("               /* mouse over link */       \n");
      out.write("               a:hover {       \n");
      out.write("                   color: orange;       \n");
      out.write("               }       \n");
      out.write("          \n");
      out.write("               /* selected link */       \n");
      out.write("               a:active {       \n");
      out.write("                   color:red ;       \n");
      out.write("               }       \n");
      out.write("            #Heading{\n");
      out.write("            Font-family:verdana;\n");
      out.write("            font-size:20px;\n");
      out.write("            border:3px;\n");
      out.write("            border-style:ridge;\n");
      out.write("            border-color:grey; \n");
      out.write("            color:Green\n");
      out.write("          }\n");
      out.write("           </style>       \n");
      out.write("         <title>         \n");
      out.write("               <p> Select the stuff!<p</p>         \n");
      out.write("           </title>        \n");
      out.write("       </head>       \n");
      out.write("       <body background=\"Eminem-Wallpaper-Desktop.jpg\" >         \n");
      out.write("           <div id='Menubox'>       \n");
      out.write("               <center>         \n");
      out.write("                          \n");
      out.write("                   <table border='6' cellspacing='15'>         \n");
      out.write("                       <th id=\"Heading\">Select option!</th>         \n");
      out.write("                       <tr>         \n");
      out.write("                           <td style='text-align:center;color:Gold; font-size:20px;'>         \n");
      out.write("                               <a href='CreateAcct'><font face='verdana'>New Registration</font></a>         \n");
      out.write("                           </td>         \n");
      out.write("                       </tr>         \n");
      out.write("                       <tr >         \n");
      out.write("                           <td style='text-align:center; font-size:20px;'>         \n");
      out.write("                               <a href='NewReport'><font face='verdana'>New Report       \n");
      out.write("                           </td>         \n");
      out.write("                       </tr>         \n");
      out.write("                       <tr>         \n");
      out.write("                           <td style='text-align:center;font-size:20px;'>         \n");
      out.write("                               <a href='Update'><font face='verdana'>Update Registered user       \n");
      out.write("                           </td>         \n");
      out.write("                       </tr>         \n");
      out.write("                       <tr>         \n");
      out.write("                           <td style='text-align:center; font-size:20px;'>         \n");
      out.write("                               <a href='Delete'><font face='verdana'>Delete User      \n");
      out.write("                           </td>         \n");
      out.write("                       </tr>         \n");
      out.write("                       <tr>         \n");
      out.write("                           <td style='text-align:center;font-size:20px;'>         \n");
      out.write("                               <a href='Logout'><font face='verdana'>Log Out         \n");
      out.write("                           </td>         \n");
      out.write("                       </tr>         \n");
      out.write("                   </table>         \n");
      out.write("               </center>       \n");
      out.write("           </div>       \n");
      out.write("       </body>           \n");
      out.write("   </html>   ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
