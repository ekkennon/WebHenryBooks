<%-- 
    Document   : index
    Created on : Apr 25, 2011, 8:41:00 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script language="javascript" type="text/javascript">
        function pageAction(action)
        {
            alert('console');
            /*
            document.selection.storeid.value=action;
            if (ajax) {
                ajax.open('get','StoreSelection');
                ajax.send(null);
            } else {
                document.selection.submit();
            }*/
        }
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HenryBooks Logon</title>
        <style>
            .error {
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to the Inventory System</h1>
        <h2>Please enter your user id and password</h2>
        <form action="Logon" method="post">
            <table>
                <tr>
                    <td>User ID:</td>
                    <td><input type="text" name="userid" id="userid"
                               value="${empty user.userid ? cookie.userid.value : user.userid}">
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" id="password">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Logon">
        </form>
        <br/>
        <p class="error">${msg}</p>
    </body>
</html>
