<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="QuanLi.GameDao"%>
<%@page import="Table.Gaming"%>
<%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../css/Profile.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script src="../WebJS/LibraryJS/bootstrap.min.js"></script>
 <script src="../WebJS/LibraryJS/jquery-3.4.1.min.js"></script>
  <!-- Boostrap CSS -->
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

  <!-- Font Awesome -->
  <link rel="stylesheet" type="text/css" href="../css/all.min.css">

  <!-- Global CSS -->
  <link rel="stylesheet" type="text/css" href="../css/global.css">

  <!-- Responsive CSS -->
  <link rel="stylesheet" type="text/css" href="../css/responsive.css">

  <!-- Header CSS -->
  <link rel="stylesheet" type="text/css" href="../css/header.css">

  <!-- Footer CSS -->
  <link rel="stylesheet" type="text/css" href="../css/footer.css">

  <!-- Products CSS -->
  <link rel="stylesheet" type="text/css" href="../css/products.css">
<title>Edit</title>
</head>
<body>
<div class="container emp-profile">
            <form method="post" action="Edit-Post.jsp">
			       <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nhap Mat Khau Cu: </label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="password" name="mkcu">
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-6">
                                                <label>Mat Khau Moi: </label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="password" name="mkmoi">
                                            </div>
                                        </div> 
                                         <div class="row">
                                            <div class="col-md-6">
                                                <label>Vui Long Nhap Lai: </label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="password" name="loop">
                                            </div>
                                        </div>  
                                        <br>
                                        <br>
                                     	 <div class="row">
                                            <div class="col-md-6">
                                                <label></label>
                                            </div>
                                            <div class="col-md-6 ">
                                                <input type="submit" value="Edit Profile"/>
                                            </div>
                                        </div>  
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</body>
</html>