package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class NewRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"Eminem-eminem-27184134-1024-768.jpg\"><center><br>     \n");
      out.write("             <font color='blue' size=\"14\">Please fill below information<br></font>     \n");
      out.write("             <font color='orange' size=\"12\">Registration Form</font>    \n");
      out.write("             <form action='CreateAcct' method='post'>     \n");
      out.write("             ID:<input type='number' name='Id'> <br><br>     \n");
      out.write("             Name:<input type='text' name='Name'> <br><br>     \n");
      out.write("             Address:<input type='text' name='Address'> <br><br>     \n");
      out.write("             Gender     \n");
      out.write("             <input type='radio' name='gender' value='M'/>Male     \n");
      out.write("             <input type='radio' name='gender' value='F'/>Female<br><br>     \n");
      out.write("             Username:<input type='text' name='Username'> <br><br>     \n");
      out.write("             Password:<input type='text' name='Password'><br><br>     \n");
      out.write("             <input type='submit' name='submit' value='Submit'> <br><br>     \n");
      out.write("             </form>     \n");
      out.write("             </center></body>     \n");
      out.write("</html>\n");
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
