<%-- 
    Document   : AdminHostelAllocationPage
    Created on : 24 Feb, 2023, 6:13:23 PM
    Author     : chaar
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/HostelAllocationPage.css" >
        <title>Hostel Allocation Page</title>
    </head>
    <body>
        <form name="f1">
            <table bgcolor='darkblue' height='60%' width='100%' >
                <tr>
                    <td>
                        <img class='bvlogo' src='https://leggerhythms.org/wp-content/uploads/2019/09/Banasthali-Logo.gif'>
                    </td>
                    <td>
                        <font color='white'>
                            <h1 font-size='52'>
                                Banasthali Vidyapith
                            </h1>
                        </font>
                    </td>
                </tr>
            </table>
            <table bgcolor='steelblue' height='5px' width='100%'></table>
            <div class="tab">
                <input class="SideTabBtn" type="submit" value="FAQ" name="FAQ's" />
                <input class="SideTabBtn" type="submit" value="About Us" name="aboutus" />
                <input class="SideTabBtn" type="submit" value="Location" name="Location" />
                <input class="SideTabBtn" type="submit" value="Photo Gallery" name="photogallery" />
                <input class="SideTabBtn" type="submit" value="Feedback" name="feedback" />
            </div>
            <table  align="left">
                <tr>
                    <td>
                        <input class='btnHostelCapacity' type="submit" value="Hostels" name="hostelDetails" />
                    </td>
                    <td>
                        <input class ="btnClassStrength" type="submit" value="Class strength" name ="classDetails" />
                    </td>
                </tr>
            </table>
    </form>
    </body>
</html>

<%
    try{
        if(request.getParameter("hostelDetails")!=null){
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Chaarvi");
                Statement stmt = conn.createStatement();
                String query = "select * from HOSTELTABLE";
                ResultSet rs = stmt.executeQuery(query);
                out.println("</br>");
                out.println("<html><body>");
                out.println("<table width = '50%' border='1'>");
                out.println("<tr>");
                    out.println("<td> HostelId </td><td> HostelName </td><td> Capacity </td><td> No. of students </td><td> Seater </td>");
                    out.println("</tr>");
                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getInt(3) + "</td><td>" + rs.getInt(4) + "</td><td>" + rs.getInt(5) + "</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
                out.println("</body></html>");
            }
            catch(Exception se){
                se.printStackTrace();
            }
        }
    }
    catch(Exception ex)
        {
                ex.printStackTrace();
        }
%>
