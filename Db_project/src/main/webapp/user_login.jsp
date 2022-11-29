<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/paws_database"; 
out.print("loggin you in");
    try{
       String email = request.getParameter("email");   
        String password = request.getParameter("password");
       // String email = "yashalnawaid123@gmail.com";   
       // String password = "yashal17";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection(connectionURL, "yashal", "YashalNawaid");    
        PreparedStatement pst = conn.prepareStatement("Select email,password,pet_name from pets where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
      // Statement st =conn.createStatement();
       //String query = "Select email,password,pet_name from users where email="+email+ " and password="+password+";";
       ResultSet rs = pst.executeQuery();  
        //ResultSet rs =st.executeQuery(query);
      //String pet_name= rs.getString("pet_name");
      //out.print(pet_name);
    //  Statement statement = null;
//ResultSet resultSet = null;
     // statement=conn.createStatement();
//String name="aashir";
//String sql ="select * from users";
//resultSet = statement.executeQuery(sql);

      
        if(rs.next())    {       
           out.println("Valid login credentials"); 
           String pet_name=rs.getString("pet_name");
           //out.print(name);
           session.setAttribute("pet_name",pet_name);  
       response.sendRedirect("HomePage.jsp");
        
        }
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
</body>
</html>