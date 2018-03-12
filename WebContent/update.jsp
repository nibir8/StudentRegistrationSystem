<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");  
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_registration",
            "root", "root");
    Statement st = con.createStatement();
    HttpSession ses = request.getSession();
    String name = (String)request.getSession().getAttribute("id");
    try{
    int i = st.executeUpdate("UPDATE members SET first_name ='"+fname+"', last_name = '"+lname+"', email='"+email+"', pass='"+pwd+"' where uname='"+session.getAttribute("id")+"'");
    if (i > 0) {
         //session.setAttribute("userid", user
         response.sendRedirect("updatesuccess.jsp");
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
     } else {
         response.sendRedirect("index.jsp");
     }
    }catch(Exception e){
    	response.sendRedirect("ErrorPage.jsp");
    }
    
%>