<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

<%
    if ((session.getAttribute("id") == null) || (session.getAttribute("id") == "")) {
%>
You are not logged in<br><br/>
<a href="index.jsp">Please Login</a>
<%} %>
<%     if ((session.getAttribute("id").equals("admin")) || (session.getAttribute("pwd").equals("admin"))) {
%>
<%List <String> datarow = (List<String>)session.getAttribute("firstname");
 %>
 <%List <String> datacol = (List<String>)session.getAttribute("userid");
 %>
<p align="center"><h3>Welcome <%=session.getAttribute("id") %> , </h3></p>
<br></br>
<table border="10" align="center">
<tr><th><%=datacol.get(0)%></th>
<th><%=datacol.get(1)%></th>
<th><%=datacol.get(2)%></th>
<th><%=datacol.get(3)%></th>
<th><%=datacol.get(4)%></th>
<th><%=datacol.get(5)%></th></tr>

<% for(int i = 1; i < datarow.size(); i+=7) { %>
        <tr>      
            <td><%=datarow.get(i).toString()%></td>
                <td><%=datarow.get(i+1).toString()%></td>
                <td><%=datarow.get(i+2).toString()%></td>
                <td><%=datarow.get(i+3).toString()%></td>
                <td><%=datarow.get(i+4).toString()%></td>
                <td><%=datarow.get(i+5).toString()%>  
                </td>
        </tr>
    <% } %>
    
</table>
<br></br>
<center><form action="logout.jsp">
    <input type="submit" value="Logout" />
</form></center><%} else {
%>
 <%List <String> datarow = (List<String>)session.getAttribute("firstname");
 %>
 <%List <String> datacol = (List<String>)session.getAttribute("userid");
 %>
<p align="center"><h3>Welcome <%=session.getAttribute("id") %> , </h3></p>
<br></br>
<table border="10" align="center">
<tr><th><%=datacol.get(0)%></th>
<th><%=datacol.get(1)%></th>
<th><%=datacol.get(2)%></th>
<th><%=datacol.get(3)%></th>
<th><%=datacol.get(4)%></th>
<th><%=datacol.get(5)%></th></tr>

       <% for(int i = 1; i < datarow.size(); i+=7) { %>
        <tr>      
            <td><%=datarow.get(i).toString()%></td>
                <td><%=datarow.get(i+1).toString()%></td>
                <td><%=datarow.get(i+2).toString()%></td>
                <td><%=datarow.get(i+3).toString()%></td>
                <td><%=datarow.get(i+4).toString()%></td>
                <td><%=datarow.get(i+5).toString()%>  
                </td>
        </tr>
    <% } %>
    </table>
<br></br>
<center><form action="updateinfo.jsp">
    <input type="submit" value="Update Info" />
</form></center>
<center><form action="logout.jsp">
    <input type="submit" value="Logout" />
</form></center>
<%
    }
%>