
<%@page 
import="java.io.FileReader"
import="java.io.File"
import="java.io.FileInputStream"
import="java.io.BufferedReader"
import="java.io.BufferedInputStream"
import="java.io.InputStreamReader"
import="java.sql.Connection"
import="java.sql.DriverManager"
import="java.sql.ResultSet"
import="java.sql.SQLException"
import="java.sql.Statement"
%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
   position: absolute;
   height:100vh;
   background-color: #FFFFFF;
   overflow: hidden;
}
.left{
width:20vw;
background-color: #202020;
height:105vh;
position: absolute;
margin-left:-10px;
margin-top:-10px;
 overflow: hidden;
}
	.markdown-body {
	    position: absolute;
	    top: 0px;
	    height:105vh;
		box-sizing: border-box;
		min-width: 200px;
		width:80vw;
		margin-left: 20vw;
		padding: 45px;
	    overflow: scroll;
	    background-color: #FFFFFF;
	}

	@media (max-width: 767px) {
		.markdown-body {
			padding: 15px;
		}
	}
    pre{
  background-color: #F6F8FA;
   padding-top: 25px;
  padding-right: 25px;
  padding-bottom: 25px;
  padding-left: 25px;
       font-size: 16px;
    }
    .lang-kotlin .hljs-comment{
    color:#6a737d
    }
    .lang-kotlin .hljs-keyword{
    color:#d73a49
    }
    .lang-kotlin .hljs-literal{
    color:#005cc5
    }
    .lang-kotlin .hljs-selector-tag{
    color:#6f42c1
    }
    .lang-kotlin .hljs-type{
    color: #005cc5
    }
    .lang-kotlin .hljs-title{
    color: #6f42c1
    }
    .lang-kotlin .hljs-built_in{
    color:#005cc5
    }
</style>
</head>
<body>
   <%
   Statement stmt = null;
   Connection conn = null;
   String USER = "eva92061";
   String PASS = "sam28520";
   String ip1="180.177.242.55";
   String DB_URL = "jdbc:mysql://"+ip1+":3306/square_studio?useSSL=false&serverTimezone=UTC";
   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(DB_URL,USER,PASS);
   stmt = conn.createStatement();
   ResultSet rs=stmt.executeQuery("select * from post");
   while(rs.next()){
	   out.println(rs.getString("Content"));  
   }
   %>
</body>
</html> 