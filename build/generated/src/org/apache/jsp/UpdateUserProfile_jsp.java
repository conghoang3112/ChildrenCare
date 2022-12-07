package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UpdateUserProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <div class=\"container\">\n");
      out.write("            <form>\n");
      out.write("                <div class=\"row \">\n");
      out.write("                    <div class=\"col-8 border border-end-1 \">\n");
      out.write("                        <div class=\"row d-flex flex-row\">\n");
      out.write("                            <div class=\"col pt-5 text-center\">\n");
      out.write("                                <Label>Firt Name:</Label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col pt-5\">\n");
      out.write("                                <Input type=\"text\" required></Input>\n");
      out.write("                            </div>\n");
      out.write("                            <hr>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row  \">\n");
      out.write("                            <div class=\"col pt-5 text-center\">\n");
      out.write("                                <Label>Last Name:</Label>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col pt-5\">\n");
      out.write("                                <Input type=\"text\" required></Input>\n");
      out.write("                            </div>\n");
      out.write("                            <hr>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col pt-5 text-center\">\n");
      out.write("                                <Label>Phone:</Label>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col pt-5\">\n");
      out.write("                                <Input type=\"text\" required></Input>\n");
      out.write("                            </div>\n");
      out.write("                            <hr>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row  \">\n");
      out.write("                            <div class=\"col pt-5 text-center\">\n");
      out.write("                                <Label>Sex:</Label>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col pt-5\">\n");
      out.write("                                <div class=\"row \">\n");
      out.write("                                    <div class=\"col d-flex\">\n");
      out.write("                                        <input type=\"radio\" id=\"Male\" name=\"fav_language\" value=\"Male\">\n");
      out.write("                                          <label for=\"Male\">Male</label><br>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col\">\n");
      out.write("                                        <input type=\"radio\" id=\"Female\" name=\"fav_language\" value=\"Female\">\n");
      out.write("                                          <label for=\"Female\">Female</label><br>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <hr>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col pt-5 text-center\">\n");
      out.write("                                <Label>Address:</Label>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col pt-5\">\n");
      out.write("                                <Input type=\"text\" required></Input>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <hr>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row pt-5 \">\n");
      out.write("                            <div class=\"col text-center\">\n");
      out.write("                                <Label>Age:</Label>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col \">\n");
      out.write("                                <Input type=\"text\" required></Input>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4 d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("\n");
      out.write("                        <div class=\"row d-flex flex-column  justify-content-center align-items-center\"\n");
      out.write("                            style=\"width:301px;height:301px;border:1px solid #000;\">\n");
      out.write("\n");
      out.write("                            <img src=\"\" class=\"rounded-3 text-center \" style=\"width: 300px;\" alt=\"Avatar\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row d-flex flex-row justify-content-center align-items-center\">\n");
      out.write("                            <div class=\"custom-file\">\n");
      out.write("                                <input type=\"file\" class=\"custom-file-input\" id=\"chosefileimage\">\n");
      out.write("                                <label class=\"custom-file-label\" for=\"chosefileimage\"></label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\" col-6 ps-5 pt-2 text-center\">\n");
      out.write("                        <button class=\"btn btn-primary\" type=\"submit\">Update Profile</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
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
