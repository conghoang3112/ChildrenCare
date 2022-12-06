package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddConservation_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>AddConservation</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("        <html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>AddConservation</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("        integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"row border border-bottom\" style=\"background-color:aliceblue;height: 200px; width: 100%;\">\n");
      out.write("\n");
      out.write("        <div class=\"col-3 d-flex justify-content-center\">\n");
      out.write("            <div class=\"row d-flex align-content-center\">\n");
      out.write("                <a class=\"logo\" href=\"#\">\n");
      out.write("                    <img src=\"\" height=\"24\" class=\"logo-light-mode\" alt=\"Logo\">\n");
      out.write("\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-6  d-flex justify-content-center\">\n");
      out.write("            <div class=\"row d-flex align-content-center\">\n");
      out.write("                <h2>Childrent Care</h2>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-3 d-flex justify-content-end \">\n");
      out.write("            <div class=\"row d-flex align-content-center\">\n");
      out.write("                <i>account</i>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"row\" style=\"    height: 25px;background-color: lightskyblue; width: 100%;\">\n");
      out.write("        <nav class=\"d-flex justify-content-evenly\">\n");
      out.write("            <a href=\"#\">Service</a> |\n");
      out.write("            <a href=\"#\">Conservation</a> |\n");
      out.write("            <a href=\"#\">Doctor</a> |\n");
      out.write("            <a href=\"#\">Special</a>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row \">\n");
      out.write("        <form>\n");
      out.write("        <div class=\"col \">\n");
      out.write("            <div class=\"row  d-flex \">\n");
      out.write("               \n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                    <label for=\"Special\">Slect Special:</label>\n");
      out.write("                    <select name=\"Special\" id=\"Special\">\n");
      out.write("                        <option value=\"A\">a</option>\n");
      out.write("                        <option value=\"B\">b</option>\n");
      out.write("                        <option value=\"C\">c</option>\n");
      out.write("                        <option value=\"D\">d</option>\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                    <label for=\"Doctor\">Slect Doctor:</label>\n");
      out.write("                    <select name=\"Doctor\" id=\"Doctor\">\n");
      out.write("                        <option value=\"A\">a</option>\n");
      out.write("                        <option value=\"B\">b</option>\n");
      out.write("                        <option value=\"C\">c</option>\n");
      out.write("                        <option value=\"D\">d</option>\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"row  d-flex \">\n");
      out.write("               \n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                    <label for=\"Special\">Slect Special:</label>\n");
      out.write("                    <select name=\"Special\" id=\"Special\">\n");
      out.write("                        <option value=\"A\">a</option>\n");
      out.write("                        <option value=\"B\">b</option>\n");
      out.write("                        <option value=\"C\">c</option>\n");
      out.write("                        <option value=\"D\">d</option>\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                    <label for=\"Doctor\">Slect Doctor:</label>\n");
      out.write("                    <select name=\"Doctor\" id=\"Doctor\">\n");
      out.write("                        <option value=\"A\">a</option>\n");
      out.write("                        <option value=\"B\">b</option>\n");
      out.write("                        <option value=\"C\">c</option>\n");
      out.write("                        <option value=\"D\">d</option>\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"row  d-flex \">\n");
      out.write("               \n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                    <label for=\"Method\">Slect Method:</label>\n");
      out.write("                    <select name=\"Method\" id=\"Method\">\n");
      out.write("                        <option value=\"A\">Online</option>\n");
      out.write("                        \n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row   \">\n");
      out.write("               \n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                    <label for=\"Issue\">Health Issue:</label>\n");
      out.write("                    <textarea name=\"Issue\" rows=\"4\" cols=\"150\" >\n");
      out.write("\n");
      out.write("                    </textarea>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"row   \">\n");
      out.write("               \n");
      out.write("                <div class=\"col ms-5 mt-5\">\n");
      out.write("                   \n");
      out.write("                    <button type=\"submit\" value=\"\">Add</button>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("        integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
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
