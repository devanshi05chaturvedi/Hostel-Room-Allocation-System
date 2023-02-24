<%-- 
    Document   : WardenLogin
    Created on : 10 Jan, 2023, 4:39:53 PM
    Author     : chaar
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Warden.css" rel="stylesheet" type="text/css">
        <title>Warden Login</title>
    </head>
    <form>
    <body>
        <table bgcolor='darkblue' height='60%' width='100%' >
                <tr>
                    <td>
                        <img class='imagelogo' height="100px" width="100px" src='https://leggerhythms.org/wp-content/uploads/2019/09/Banasthali-Logo.gif'>
                    </td>
                    <td>
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
        <image class="wardenImg" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAREhEQEBMVEA8WEBgQExAVExASDxESFRUZGBoWExUYHighGRolGxgVITEhJSsrLjAvFyAzODM4NyotLiwBCgoKDg0OGxAQGzYmICYwODA3NjUrNzU3LTAtLTUtLi8wNS0tKy0uLTIvLS0tLTctMjUtNS0tLTctLS0tLS03Lf/AABEIALkBEQMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYDBAcCCAH/xAA6EAACAQIDBQUFBwMFAQAAAAAAAQIDEQQSIQUGMVFhEyJBkaEycYGxwQcUI0JScvAzktFissLh8TT/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFAgEG/8QAJxEBAAICAQQBBAIDAAAAAAAAAAECAxESBCExQRMiMlFxgfAjUmH/2gAMAwEAAhEDEQA/AO4gAAAAAAAAAAAAAAAAAAAV/fneSOzsJUxLSnO6p0oPRTqy9lPpo2+kWBOVa8YK85KK5yaivNn7Sqxkrxakuaaa80fJ22NtV8ZUdXFTlVm3e8neMekI8IrojY3d27iMFU7TDVHTkndxV+yqLlUhwkv4jvg90+rARG6u3IY7C0cVBZc8e9C98lSLtKN/G0k9SXOHgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD8Zxj7c94cNXjRwNGp2leliO1qqOtOH4c45ZS4Z7yWi4a3L/APaZtueC2diK1J5arUaVOS4wlUkoZl1SbfwPmSEW769W29W+bb4s7rHt7A4/HyEffZkhsrY9XEyy0Y91PvVZXVOP/fQkNs7sV8Ks/wDUo21motZf3R8F11E5KRbjvuljFea8ojs6L9jW9uFo0fuFebpVnWlOEp2VKeeyUYy4KV1wdr30OvI+RXy8uR3r7G946mLws6NZudTDyjBTbvKVOSeXM/FrLJX5JC1faKYdBABw8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFa+0XY0sZs7E0ILNUydpTj+qpTamo/HLb4nzpu5siWLqKmrxprvVZLilwUV/qf+eR9Xs5DtHY7wu0MVOEctGs+1cFwjVTveK5STb99+ekeXLwpOvKz0uP5LxE+Hnd/AVaV4yVKnSUbQowUpTg78Z1HpJ87Lj4m1tKGIyR7KVJyT76qxkoVFbgnF9x9bM8YDBuNevWzNxqKCjDLbKottt29p97jxskvA97awbrwUIzcEqkZOWTNmindpJ2afKXg0UJ+5q6mK6UHfHdx0IrEUoZKUrOdO9+wqPwTXGLd1/6dI+wfAKOCrYi95VsQ1b9MaXdSfxcn8UV/fytKWFVGmnnrVoUUuDd5Xt6LzOlfZ9sF4DA0cPJ3qd6pUfhnqScml0V0vgX8N5tT6mX1dIrfssYAJFUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADTx+zaVZNVI3eVxUvzRT5G4VjezfzAbOvHEVb1rXWHprPWafC6WkU+cmjy0RMal7WZidwgNubGqUHFOWl32dSycZaezUg/5yZr7K2fUqTtdVKlvYilChCN9ZW116tvp4mKtvhT2nGE6VlCN+5e9WLfFVF4fLqZtg7WVDFQjkdRzhJOzs6cdHmemuqtbQzpmsW4em3HL4uc/d/f4WfG7sQeHyunGvVjONZNtwkpwd/wAKad6ckr2lzs2Sm72Eq0qKhWnKpUzzm3OfaShGc3KNPP8Amyxajfxy3PMdu4fK5TmqaWrc+7Fe+XAkoSTSad01dNapp8i/Sa61VjXm0zuz0ADtwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANDbu04YTD1sTU9ilSlUfN5Vol1bsvifI+1cfVxVariazvVq1HOT6vwXRKyXRH0/vxiu5CgtXN5pLjeK4Jrq/kcQ3+3bhTlQlRpqnnz9o1dQTWW1o8E9ZcLFe+aOXFdxdPaac/yqmycJOU12blBrjUi3FxXRrxOz7rbMdJSqVJOdSSjFSlJykoWT1k9b3+SKhulsmMksyyUot6vR1p29lc3zOiYZpNrhrb0RSyXm8rvxxTHMR5R+9tfLh5LxnKMfXM/RE99kG3/AL3gIwk71cPN4eXPItab/ssvfFlK32xV506S/LFzfvlw9F6k79mGCo4S04JxeISVRuTazXeWy4JK7/uO+nyRW3dDmwTbDEx+3UAAaTLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHPdu43NiaravlfZx6KOj9bkPtCMK0XTqRThx6p80/Blk3h2DWlXc6UM8ane0slGXje/Dn8TYwe7FOlF1cVLMorM4R0irc3xfoZtsV7Xlt1z4aY6zv14ccw+zcS6uWCcpUpWUm7QjbVavRJ8bdSxbyQryjF5fw0lOdne0kuXGy59Sx16maUpWUU3dRSsorwSXRFc3xx+Sl2SfeqaPpBcfPReZH8m5Q13b6Y9tbZGA7RdrWvNt91Nt3S0u+fL4FlwlbLo9F4PkyL2BhZxw1N1G23qk+MYvgvgvqSX3WpaLytqbtBpXUne1l1v4HM953C9XjEcJl0nZWLValCotbrX9ydn6o3DQ2Jg3Ro06b4pXl+6Tu/Vm+a1N8Y2+fya5Tx8bAAdOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACsb4Y72aEfHvz93gvr8EWaUravhxOcY/EurUnUf5pXXRcF6WKvVX411+U2Cu7b/DXk0k29EtW+SKVh4PH4y9m6S191KL0T/c/myX3sxzjBUIPvzV5P9NP/tq3mSm6WzVQpJtWnUWd80vyp/P4mfDTr9FJt7nwlPuay28fDV2TJ/cnE3hUovjGWZLpLj6r1IkybNr9jiIVOEZfhz90rK/weVkuK3G8Sq5N3rO15ABqqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0Nu1cuHqvxyOP92n1Oc4rERpQlUm7Rirv/C6nQN5//nn74/7kcV3o2n2lRYeDvCErzt+aa8OqXzfQz+r++P0v9HTl2ZNiYWWLxDnUWl+0qLwUV7MF8vMvFOXe/nU0tgbP+70UpL8SXfn0dtF8F9TYw77y8vRlVPmvyt28Q3DBirWSfBvK/c0/+jMa+O9lc7t+SbPZQx5XHd3G9rRWb+pD8OfvXB/FWZKFG2Jj+xrxb0p1YqMuSl4Pz+bLyjSwZOdP+wp5acbAAJ0YAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAK9v/WlDZ+JnDSUYJp8u8tTj24+ze1rdrLWFPXX81TSy+vkdq3xwsq2BxdOKvKWHnlXOSi2vVIomwcFGhCNKPhF3f6pPVv+dCh1f3Q0OmyccUxHnaSxL7svdbz0NbDvvL9z/wBrM2Mei6yXpr9DXwr70ff/AMSpPl7HhIGriHecI9H6o2SNrVrVM3J2/wA/U9khkVNzp2SvKLenj7i8bu4uVShBzTU49yV00214681YgNiYbFNueHlCNKTu5SUZa+Ktx+RcKadld3dtXayb9xc6Wkx9SvntE9noAF1WAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABjrwzRlHnFrzRzjD6SXkdKZzraNPJWqR5VHb3XuvQpdZHiVnp58w84+XsrpJ+ljFh/aX7n8pI/cbK8n+1LzZ+Yf24+9/8AIo+1n0koxbaSV23ZLm3wMK3cxcn/AE7a31lD/JK7Bo5q0eUVm8uHqy2FvF08ZI3KvfLNJ1CrbB2BiKM1OVRQj+aEW5Z1yfBfEtKALuPHFI1Cve82ncgAO3IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADxWzWeW2bwvwIiuqv5s309AJhzS4tIpG9EEsRKSaalFS052t9CXK3vjsnF11SeEnklFyU05uClF2t4PVNepB1FJvTUJsExF+86aNOpmbf+tR/t/iM2Ffeh/PBlZw26O2o8a0OLl/WfG37TZw+6+2Iyi3WjZLX8Z8rfp5lH4Lx6X/8f+0Om7tqMVObaTbUVdq9l/76E4pp8GmVTZOHnTo04VJZ6igs8r3vPi7Ple5tmjirxpEM3JO7SsQIWh2v5c309SXo5rLNbN424Ejh7AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeXFPirnl0Ifpj5IyADD91p/pj5Ifdaf6Y+SMwAxLDw/SvJHtRS4Kx6AAAAAAAAAAAAAAAAAAAAAAB//9k="/>
        <font color='white'>
        <table class="LoginTbl" align='right' bgcolor="darkblue" height="150px" width="100px">
            <tr>
            <td>
                Username:
            </td>
            <td>
            <input type="text" name="wardenid" value="" size="80" />
            </td>
           </tr>
           <tr>
               <td>
                   Password:
               </td>
           <td>
               <input type="text" name="wardenpwd" value="" size="80" />
           </td>
           </tr>
        </table>
        </font>
        <table height='30%' width='10%'>
           <tr align='center' colspan='2'>
               <td>
                   <input class='loginBtn' type="submit" value="Login" name="WardenLogin" />
               </td>
           </tr>
        </table>
    </body>
    </form>
    <footer>
        created by
    </footer>
</html>
<%
   if(request.getParameter("WardenLogin")!=null)
    { 
        try
        {
            String wardenid=request.getParameter("wardenid");
            String wardenpwd=request.getParameter("wardenpwd");
    //        out.print(uid);
            String query="select * from warden where wardenid='"+wardenid+"' and wardenpwd='"+wardenpwd+"'";
    //        +"' and pwd='"+pwd+"'"
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/hostel","hostel","hostel");
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            boolean status=rs.next();
            if(status)
            {
                response.sendRedirect("WardenRedirect.jsp");
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
