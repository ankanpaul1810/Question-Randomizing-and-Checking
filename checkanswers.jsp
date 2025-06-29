<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<html>
<head>
<title>Answer check</title>
<%
int x;
int[] m = (int[]) session.getAttribute("q");
for (x=1; x<=10; x++)
	{
	String q = String.valueOf(x);
	String p = request.getParameter(q);
	out.println(p);
	PreparedStatement ps=con.prepareStatement("select amswer from QUESTION where QNO=?");
	ps.setString(1,String.valueOf(m[x-1]));
	ResultSet rs=ps.executeQuery();
	 if(rs.next())
	 {
		 String y=rs.getString(1);
		 if(y.equals(p)==true)
		 {
			 out.println(", The answer is right"+"<br>");
		 }
		 else
		 {
			 out.println(", The answer is wrong"+"<br>");
		 }
		 
	 }
	
	}
%>
<%

%>
</head>
</html>


