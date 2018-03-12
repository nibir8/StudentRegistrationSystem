<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.*"%>
<%
    String userid = request.getParameter("uname");  
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_registration",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    String colName="";
	String row = null;
    //ResultSet rsadmin;
    if ((userid.equals("admin")) && (pwd.equals("admin"))) {
    	rs = st.executeQuery("select * from members");
        ResultSetMetaData metadata = rs.getMetaData();
        	int columnCount = metadata.getColumnCount();    
            for (int i = 2; i <= columnCount; i++) {
                colName = colName + metadata.getColumnName(i) + " ";      
            }
            while (rs.next()) {
        	for(int i=1;i<=columnCount;i++){
        		row = row + rs.getString(i) + ", ";
        	}
            }
            List<String> myListrow = new ArrayList<String>(Arrays.asList(row.split(",")));
            List<String> myListcol = new ArrayList<String>(Arrays.asList(colName.split(" ")));
            session.setAttribute("userid",myListcol);
            session.setAttribute("firstname", myListrow);
            session.setAttribute("id", userid);
            session.setAttribute("pwd", pwd);
            //out.println("welcome " + userid);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("success.jsp");
    }
    else{
    	try{
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    ResultSetMetaData metadata = rs.getMetaData();
    int columnCount = metadata.getColumnCount();    
    for (int i = 2; i <= columnCount; i++) {
        colName = colName + metadata.getColumnName(i) + " ";      
    }
    while (rs.next()) {
    	for(int i=1;i<=columnCount;i++){
    		row = row + rs.getString(i)+ ", ";
    	}
        }
    
        List<String> myListrow = new ArrayList<String>(Arrays.asList(row.split(",")));
        List<String> myListcol = new ArrayList<String>(Arrays.asList(colName.split(" ")));
        session.setAttribute("userid",myListcol);
        session.setAttribute("firstname", myListrow);
        session.setAttribute("id", userid);
        session.setAttribute("pwd", pwd);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
     
    }catch(Exception e){
    	response.sendRedirect("ErrorPage.jsp");
    }
    }
%>