package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("\n");
      out.write("<link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-xs-12 col-sm-12 col-md-4 well well-sm\">\n");
      out.write("            <legend><a href=\"http://www.jquery2dotnet.com\"><i class=\"glyphicon glyphicon-globe\"></i></a> Sign up!</legend>\n");
      out.write("            <form action=\"#\" method=\"post\" class=\"form\" role=\"form\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xs-6 col-md-6\">\n");
      out.write("                        <input class=\"form-control\" name=\"firstname\" placeholder=\"First Name\" type=\"text\"\n");
      out.write("                               required autofocus />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xs-6 col-md-6\">\n");
      out.write("                        <input class=\"form-control\" name=\"lastname\" placeholder=\"Last Name\" type=\"text\" required />\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <input class=\"form-control\" name=\"youremail\" placeholder=\"Your Email\" type=\"email\" />\n");
      out.write("                <input class=\"form-control\" name=\"reenteremail\" placeholder=\"New Password\" type=\"password\" />\n");
      out.write("                <input class=\"form-control\" name=\"password\" placeholder=\"Re-enter Password\" type=\"password\" />\n");
      out.write("            \n");
      out.write("                <br />\n");
      out.write("                <br />\n");
      out.write("                <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">\n");
      out.write("                    Sign up</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
