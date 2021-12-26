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
<title>Information</title>
<link rel="stylesheet" type="text/css" href="../css/Profile.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script src="../WebJS/LibraryJS/bootstrap.min.js"></script>
 <script src="../WebJS/LibraryJS/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                        <%
                        HttpSession httpSession = request.getSession();
                    	Object object = httpSession.getAttribute("name");
                    	String Username = String.valueOf(object);
                    	JDBCConnection jdbc = new JDBCConnection();
                    	Connection connection = jdbc.getJDBCConnection();
                    	Statement stm = connection.createStatement();
                    	String sql="SELECT*FROM DANGNHAP WHERE TEN = '" + Username + "'";         
                    	ResultSet rs = stm.executeQuery(sql);
                    	if(rs.next()){
                        %>
                                    <h5>
                                        <%=rs.getString("TEN")%>
                                    </h5>
                                    <h6>
                                        Web Developer and Designer
                                    </h6>
                                    <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="Profile.jsp" role="tab" aria-controls="home" aria-selected="false">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="History.jsp" role="tab" aria-controls="profile" aria-selected="true">Timeline</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getInt("ID")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getString("TEN")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getString("EMAIL")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getString("PHONE")%></p>
                                            </div>
                                        </div>
                                        <%} %>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Profession</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Web Developer and Designer</p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                        <%
	                                        String sql1="SELECT*FROM BILL WHERE TEN = '" + Username + "'";         
	                                    	rs = stm.executeQuery(sql1);
	                                    	if(rs.next()){
                                        %>
                                            <div class="col-md-6">
                                                <label>Ngày Mua Hàng</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getDate("buyDate")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getFloat("priceTotal")%></p>
                                            </div>
                                        </div>
                                <%} %>                      
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</body>
</html>