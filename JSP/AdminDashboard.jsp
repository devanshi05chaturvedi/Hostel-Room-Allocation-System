<%-- 
    Document   : AdminDashboard
    Created on : Mar 4, 2023, 5:06:39 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <h1>Welcome</h1>
        <table>
            <tr>
                <td>
                    Add Hostel's Details:
                </td>
                <td>
                    <input type="submit" value="Click here" name="btnHostelAdd" />
                </td>
            </tr>
            <tr>
                <td>
                    Add Student's Details:
                </td>
                <td>
                    <input type="submit" value="Click here" name="btnStudentAdd" />
                </td>
            </tr>
            <tr>
                <td>
                    Allocate Hostels:
                </td>
                <td>
                    <input type="submit" value="Click here" name="btnAllocate" />
                </td>
            </tr>
            <tr>
                <td>
                    View Hostel's Details:
                </td>
            <br>
            <td>
                <input type="submit" value="Hostel Details" name="btnViewHostel" />
            </td>
            </tr>
            <tr>
                <td>
                    View Student's Details:
                </td>
            <br>
                <td>
                    <input type="submit" value="Student Details" name="btnViewStudent" />
                </td>
            </tr>
        </table>
    </body>
</html>
