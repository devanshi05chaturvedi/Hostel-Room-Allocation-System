<%-- 
    Document   : AdminLogin
    Created on : 10 Jan, 2023, 4:50:52 PM
    Author     : chaar
--%>
<%@page import = "java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Admin.css" rel="stylesheet" type="text/css">
        <title>Admin Login</title>
    </head>
    <body>
        <form>
        <table bgcolor='darkblue' height='60%' width='100%' >
                <tr>
                    <td>
                        <img class='imagelogo' height="100px" width="100px" src='https://leggerhythms.org/wp-content/uploads/2019/09/Banasthali-Logo.gif'>
                    </td>
                    <td >
                        <font color='white'>
                            <h1 align='left' font-size='52'>Banasthali Vidyapith</h1>
                        </font>
                    </td>
                </tr>
            </table>
        </table>
            <table bgcolor='steelblue' height='5px' width='100%'>
            </table>
        <div class="tab">
                    <input class="SideTabBtn" type="submit" value="FAQ" name="btnFAQ's" />
                    <input class="SideTabBtn" type="submit" value="About Us" name="btnaboutus" />
                    <input class="SideTabBtn" type="submit" value="Location" name="btnLocation" />
                    <input class="SideTabBtn" type="submit" value="Photo Gallery" name="btnphotogallery" />
                    <input class="SideTabBtn" type="submit" value="Feedback" name="btnfeedback" />
        </div>
        <image class="adminImg" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4YjrlMimSMjhMvTKzXBaCEVbd86PfIMHPeA&usqp=CAU"/>
        <font color='white'>
        <table class="LoginTbl" align="right" bgcolor="darkblue" height="150px" width="100px">
            <tr>
            <td>
                ID
            </td>
            <td>
            <input type="text" name="adminid" value="" size="80" />
            </td>
           </tr>
           <tr>
               <td>
                   Name
               </td>
           <td>
               <input type="text" name="adminname" value="" size="80" />
           </td>
           </tr>
        </table>
        </font>
        <table height='30%' width='10%'>
            <tr align='center' colspan='2'>
     <%--<table cellspacing='4' cellpadding='4' border='10' align='center' bgcolor='darkslateblue' height='30%'width='10%'>
           <tr align='center' colspan='2'>--%>
               <td>
                   <input class='loginBtn' type="submit" value="Login" name="AdminLogin" />
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
   if(request.getParameter("AdminLogin")!=null)
    { 
        try
        {
        String adminid=request.getParameter("adminid");
        String adminname=request.getParameter("adminname");
//        out.print(uid);
        String query="select * from admin where adminid='"+adminid+"' and adminname='"+adminname+"'";
//        +"' and pwd='"+pwd+"'"
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/hostel","hostel","hostel");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        boolean status=rs.next();
        if(status)
        {
            response.sendRedirect("StudentChoice.jsp");
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
