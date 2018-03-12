<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <script>
function validateForm() {
    var x = document.forms["myForm"]["uname"].value;
    var y = document.forms["myForm"]["pass"].value;
    if ((x == "")||(y == "")) {
        alert("Fields cannot be blank");
        return false;
    }
}
</script>
    <body>
        <form name="myForm" method="post" action="login.jsp" onsubmit="return validateForm()">
            <center>
            <table border="5" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" value="Login" /></center></td>
                        <td><center><input type="reset" value="Reset" /></center></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not Registered?&nbsp;&nbsp;<a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>