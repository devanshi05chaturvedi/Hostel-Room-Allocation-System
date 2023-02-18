<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body bgcolor='pink'>
        <h2 align="center">Login Form</h2>
        <form name="f1">
            <table align="center" bgcolor='yellow' width='60%'>
               
                    <tr>
                        <td> Enter the user Id:</td>
                        <td><input type="text" name="txtuid" value="" size="40"></td>
                    </tr>
                    <tr>
                        <td>Enter the Password:</td>
                        <td><input type="password" name="txtpwd" value="" size="40"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align='center'><input type="submit" value="SignIn" name="btn_signIn">                    
                        </td>
                        
                    </tr>
                
            </table>

        </form>
        
    </body>
</html>

<%
    if(request.getParameter("btn_signIn")!=null)
    {
        try
        {
                response.sendRedirect("emp.jsp");
              
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
        
 %>       
