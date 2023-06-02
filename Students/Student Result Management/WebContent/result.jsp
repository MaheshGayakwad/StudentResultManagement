<%@page import = "StudentDao.StudentDao" %>
<%@page import = "java.sql.*" %>



<%


String roll = request.getParameter("roll");

String s1 = request.getParameter("s1");

String s2 = request.getParameter("s2");

String s3 = request.getParameter("s3");

String s4 = request.getParameter("s4");

String s5 = request.getParameter("s5");

String s6 = request.getParameter("s6");

String s7 = request.getParameter("s7");



try{
	
	Connection con = StudentDao.getConnection();
	
	String sql = "insert into result(roll,s1,s2,s3,s4,s5,s6,s7) values(?,?,?,?,?,?,?,?)";
	
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, roll);
	ps.setString(2, s1);
	ps.setString(3, s2);
	ps.setString(4, s3);
	ps.setString(5, s4);
	ps.setString(6, s5);
	ps.setString(7, s6);
	ps.setString(8, s7);
	
	
	int status = ps.executeUpdate();
	
	
		response.sendRedirect("adminHome.jsp");
	
	
}catch(Exception e){
	System.out.println(e);
}


%>