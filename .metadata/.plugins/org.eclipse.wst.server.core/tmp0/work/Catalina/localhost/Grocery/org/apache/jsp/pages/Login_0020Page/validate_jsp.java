/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.13
 * Generated at: 2022-05-25 07:09:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages.Login_0020Page;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class validate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

 Connection conn=null;
  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("    \r\n");
      out.write("    \r\n");
      groceryDatabase.DB obj = null;
      obj = (groceryDatabase.DB) _jspx_page_context.getAttribute("obj", jakarta.servlet.jsp.PageContext.PAGE_SCOPE);
      if (obj == null){
        obj = new groceryDatabase.DB();
        _jspx_page_context.setAttribute("obj", obj, jakarta.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title></title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");

		String loginStatus = null;
		String name = null;
		String phoneNumber =null;
		String password = null;
		String registerStatus = null;
		String errorMsg = null;
	try{
		name = request.getParameter("nameFull");
		phoneNumber = request.getParameter("phoneNumber").replaceAll("[^0-9]", "");
		password = request.getParameter("password");
		if (name == ""){
			loginStatus = obj.login(phoneNumber, password);
		}else{
			String[] nameParts = name.split(" ");
			String first_name = "";
			for(int i = 0; i < nameParts.length-1; i++){
				first_name += nameParts[i] + " ";
			}
			
			registerStatus = obj.register(phoneNumber, password, first_name.trim(), nameParts[nameParts.length-1]).trim();
		}
		
	}catch(Exception e){
		errorMsg = e.getMessage();
	} 
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<script>\r\n");
      out.write("	\r\n");
      out.write("	const loginStatus = \"");
      out.print(loginStatus);
      out.write("\";\r\n");
      out.write("	const name = \"");
      out.print(name);
      out.write("\";\r\n");
      out.write("	const phoneNumber = \"");
      out.print(phoneNumber);
      out.write("\";\r\n");
      out.write("	const password = \"");
      out.print(password);
      out.write("\";\r\n");
      out.write("	if(name == \"\"){\r\n");
      out.write("		if(loginStatus == \"Login Success\"){\r\n");
      out.write("			console.log(\"sucess\");\r\n");
      out.write("			\r\n");
      out.write("			localStorage.setItem(\r\n");
      out.write("				    'userDetails',\r\n");
      out.write("				    JSON.stringify({\r\n");
      out.write("				      phone: phoneNumber,\r\n");
      out.write("				      password: password,\r\n");
      out.write("				    })\r\n");
      out.write("				  );\r\n");
      out.write("		}else if(loginStatus == \"Wrong Password\"){\r\n");
      out.write("			console.log(\"Wrong Pass\");\r\n");
      out.write("			\r\n");
      out.write("		}else if(loginStatus == \"Account not found\"){\r\n");
      out.write("			console.log(\"NotFound\");\r\n");
      out.write("			\r\n");
      out.write("		}else{\r\n");
      out.write("			console.log(loginStatus);\r\n");
      out.write("		}\r\n");
      out.write("	}else{\r\n");
      out.write("		const registrationStatus = '");
      out.print(registerStatus);
      out.write("';\r\n");
      out.write("		if(registrationStatus == \"registration successful\"){\r\n");
      out.write("			console.log(\"Registered Successfully.\")\r\n");
      out.write("		}else{\r\n");
      out.write("			console.log(\"Error: \", registrationStatus)\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
