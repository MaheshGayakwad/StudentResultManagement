<%@page import = "StudentDao.StudentDao" %>
<%@page import = "java.sql.*" %>



<%


String course = request.getParameter("course");

String branch = request.getParameter("branch");

String roll = request.getParameter("roll");

String name = request.getParameter("name");

String father = request.getParameter("father");

String gender = request.getParameter("gender");



try{
	
	Connection con = StudentDao.getConnection();
	
	String sql = "insert into Student(course,branch,roll,name,father_name,gender) values(?,?,?,?,?,?)";
	
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, course);
	ps.setString(2, branch);
	ps.setString(3, roll);
	ps.setString(4, name);
	ps.setString(5, father);
	ps.setString(6, gender);
	
	
	int status = ps.executeUpdate();
	
	
		response.sendRedirect("adminHome.jsp");
	
	
}catch(Exception e){
	System.out.println(e);
}


%>