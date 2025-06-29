<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<html>
<head>MCQ</head>
<body>
    <form name="f1" method="get" action="checkanswers.jsp">
<%
try
{
	%>
	<table>
	<%
	int a, i = 0 ,j;
	int[] x=new int [10];
	while (i < 10)
	{
	double b=Math.random();
	a=(int) ( 10*b)+1;
	boolean flag=false;
	for(j=0;j<i;j++)
	{
	if(x[j] ==a)
	{
	flag=true;
	break;
	}
	}
	if (flag==false)
	{
	x[i] = a;
	i++;
	}
	}
	session.setAttribute("q", x);
 i=1;
 for(int k=0; k<x.length; k++)
 {	 
	 PreparedStatement ps=con.prepareStatement("select * from QUESTION where QNO=?");
	 ps.setString(1,String.valueOf(x[k]));
	 ResultSet rs=ps.executeQuery();
	 if(rs.next())
		 {
		 %>
		 <tr>
		 <td><%= i %> .&nbsp <%= rs.getString(2) %></td>
		 </TR>
		 <tr>
		 <td><input type="radio" name="<%=i %>" value="<%=rs.getString(3)%>"><%=rs.getString(3)%></td>
		 <td><input type="radio" name="<%=i %>" value="<%=rs.getString(4)%>"><%=rs.getString(4)%></td>
		 <td><input type="radio" name="<%=i %>" value="<%=rs.getString(5)%>"><%=rs.getString(5)%></td> 
		 <td><input type="radio" name="<%=i %>" value="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
		 </tr>
		 <%
		 i++;
		 }
	 }
 %>
 </table>
 <%
 }
catch(Exception e)
{
	out.println (e.getMessage());
	}
%>
<tr align="center">
                    <td colspan="2">
                        <input type="submit" name="b1" value="Submit">
                        <input type="reset" name="b2" value="Reset">
                    </td>
                </tr>
</body>
</html>