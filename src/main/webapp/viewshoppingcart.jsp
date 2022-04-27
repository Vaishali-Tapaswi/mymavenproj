<%@page import="java.util.Vector"%>
<%@page import="java.util.Enumeration"%>
<HTML>
<HEAD><TITLE>Shopping Page</TITLE></HEAD>

<BODY>
<%@ page import="com.servlets.ShoppingCartItem" %>
<% System.out.println("within viewshoppingcart.jsp"); %>

<CENTER>
	<%@ include file="pages/includes/DWRHeader1.jspf" %>
<BR><BR>


<%
	Vector<ShoppingCartItem> scitems = (Vector) session.getAttribute("cart");
	if (scitems == null)
	{
		out.print("Vector was null");
		out.print("Nothing in shopping cart");
	} else {
		out.print("Vector was not null");
		Enumeration enum1 = scitems.elements();
		while (enum1.hasMoreElements())
		{
			ShoppingCartItem item = (ShoppingCartItem) enum1.nextElement();
			out.print(item.getName());
		}
	}


%>


<BR>

<A HREF="./welcome.jsp">Back To The Home Page</A>
<BR>
</CENTER>
<BR>
<%@ include file="pages/includes/DWRFooter1.jspf" %>
</BODY>
</HTML>