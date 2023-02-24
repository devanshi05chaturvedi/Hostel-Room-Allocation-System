<%-- 
    Document   : StudentLoginPage
    Created on : 23 Feb, 2023, 5:53:37 PM
    Author     : dell
--%> 
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Student.css" rel="stylesheet" type="text/css">
        <title>Student Login</title>
    </head>
    <body>
        <form name="f1">
            <table bgcolor='darkblue' height='60%' width='100%' >
                <tr>
                    <td>
                        <img class='imagelogo' height="80px" width="150px" src='https://leggerhythms.org/wp-content/uploads/2019/09/Banasthali-Logo.gif'>
                    </td>
                    <td >
                        <font color='white'>
                            <h1 align='left' font-size='52'>Banasthali Vidyapith</h1>
                        </font>
                    </td>
                </tr>
            </table>
            <table bgcolor='steelblue' height='5px' width='100%'>
            </table>
            <div class="tab">
                <input class="SideTabBtn" type="submit" value="FAQ" name="FAQ's" />
                <input class="SideTabBtn" type="submit" value="About Us" name="aboutus" />
                <input class="SideTabBtn" type="submit" value="Location" name="Location" />
                <input class="SideTabBtn" type="submit" value="Photo Gallery" name="photogallery" />
                <input class="SideTabBtn" type="submit" value="Feedback" name="feedback" />
            </div>
        <image class="studentImg" src="data:image/png;base64,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"/>
        <font color="white" >
            <table class="LoginTbl" align="right" height="250px" width="100px">
                <tr>
                    <td>Username</td>
                    <td>
                        <input type="text" name="studentid" size="80" />
                    </td>
                </tr>
                <tr>
                    <td>Old Password</td>
                    <td>
                        <input type="text" name="oldpwd" size="80" />
                    </td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td>
                        <input type="text" name="studentpwd"size="80" />
                    </td>
                </tr>
            </table>
        </font>
        <table height='30%' width='10%'>
            <tr align='center' colspan='2'>
                <td>
                    <input class='loginBtn' type="submit" value="Change" name="ChangepwdStudent" />
                </td>
            </tr>
        </table>
    </form>
    </body>
    <footer>
        created by
    </footer>
</html>
<%
   if(request.getParameter("ChangePwdStudent")!=null)
    { 
        try
        {
        String oldpwd=request.getParameter("oldpwd");
        String studentid=request.getParameter("studentid");
        String studentpwd=request.getParameter("studentpwd");
        String query="Update student set studentpwd='"+studentpwd+"' where studentid='"+studentid+"'";
//        +"' and pwd='"+pwd+"'"
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/hostel","hostel","hostel");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        boolean status=rs.next();
        if(status)
        {
            response.sendRedirect("StudentLogin.jsp");
        }
        else
        {
            out.println("<script>alert('Invalid record')</script>");
        }
        }
        catch(Exception ex)
        {
                ex.printStackTrace();
        }
    }
%>
