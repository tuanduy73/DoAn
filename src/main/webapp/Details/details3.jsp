
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
  <%@page import="Service.BillProductService"%>
   <%@page import="Table.BillProduct" %>
<%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="shorcut icon" type="image/png" href="../css/images/hero.jpg">

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

  <!-- Detail CSS -->
  <link rel="stylesheet" type="text/css" href="../css/details.css">

  <title>Chi Tiết Sản Phẩm</title>
  
</head>
<body>
<%
  	String n = "";
	HttpSession httpSession = request.getSession();
	Object object = httpSession.getAttribute("name");
	n = String.valueOf(object);
  %>
<div id="header"><header class="hero">
	<div class="header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
						<a class="navbar-brand logo hoverheader" href="Index.html">TUAN DUY</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
						<li class="nav-item hoverheader">
							<a class="nav-link" href="Index.jsp">Trang Chủ</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="Products.jsp">Sản Phẩm</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="Contact.jsp">Liên Hệ</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="AboutUs.jsp">Về Chúng Tôi</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="../WebJS/purchase.jsp">
								<i class="fas fa-shopping-cart"><sup id="show">1</sup></i>
							</a>
						</li>
						<li class="nav-item hoverheader">
							<div class="dropdown">
							  <button class="btn btn-secondary dropdown-toggle fas fa-user" style="font-size: 25px" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">			
							  </button>
							  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							    <a class="dropdown-item">Xin Chào <%out.print(n);%></a>
							    <a class="dropdown-item" href="../Information/Profile.jsp">Information</a>
							    <a class="dropdown-item" href="LogOut.jsp">LogOut</a>
							  </div>
							</div>
						</li>
					</ul>
				</div>
			</div> <!-- het container -->
		</nav> <!-- háº¿t nav -->
		<a class="nav-link" href="Sign.jsp"><i class="fas fa-user login" style="opacity: 1; transition: all 0.5s ease 0s;"> Đăng Nhập/ Đăng Kí</i></a>
	</div> <!-- het header -->
  </header>  <!-- het hero -->


</div>
  <div class="gt">Chi Tiết Sản Phẩm</div>
  
 <div class="container">
    
    <div class="row" id="detail">
			<div class="col-7 mt-5 pt-5">
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
			<div class="carousel-item">
			<img src="../css/images/cayenne.png" style="height:70%" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item active">
			<img src="../css/images/cayenne.png" style="height:70%" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
			<img src="../css/images/cayenne.png" style="height:70%" class="d-block w-100" alt="...">
			</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
			</a>
			</div>
			</div>
			<sql:setDataSource var="data" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
								url="jdbc:sqlserver://localhost:1433;databaseName=SUPERMARKET"
								user="sa" password="123456" />
								
			<sql:query var="result" dataSource="${data}">
				Select * from CAR where id='3'
			</sql:query>
			
			<c:forEach var="rows" items="${result.rows}">
			<div class="col-5 mt-5 pt-5">
			<p class="detail__p mb-lg-4 pb-lg-4"><c:out value="${rows.name}"/></p> 
			<p class="detail__p pb-lg-4">600.000 <sup>$</sup></p>
			</c:forEach>
			
			<div class="buy mt-lg-5 mt-4">
			<span class="substract" onclick="function substract(){
				var i = parseInt($('.quantity').text(),10);
				if (i > 0) {
					i --;
					$('.quantity').text(i);
				};
			}substract()">-</span>
			<span class="quantity">1</span>
			<span class="plus" onclick="function plus()
			{
				var i = parseInt($('.quantity').text(),10);
				if (i < 1000) {
					i ++;
					$('.quantity').text(i);
				};
			}
			plus()">+</span>
			</div>
			<div class="addtocart text-center py-md-3 py-2 mt-lg-5 mt-4">
			<a href="../WebJS/AddOrder/Order3.jsp">Thêm Vào Giỏ</a>
			</div>
			
			<c:forEach var="rows" items="${result.rows}">
			<p class="detail__text mt-lg-5 mt-4">Xuất xứ: <c:out value="${rows.xuatxu}"/> <br><br> Nhà cung cấp: Denso<br><br>Số điện thoại: 0763411170<br><br>Tình trạng: Còn hàng</p>
			</c:forEach>
			<span class="ttmh mt-md-5 mt-4"><a href="../After-Login/Products.jsp" style="color: white">Tiếp Tục Mua Hàng</a></span>
			<span class="tt mt-md-5 mt-4"><a href="../WebJS/AddOrder/Order3.jsp" style="color: black">Thanh Toán</a></span>
			</div>
			<div class="col-12">
			<p class="detail__text2 mt-lg-5 mt-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
			</div>

			</div> 
			<!-- het row -->
  </div> 
  <!-- het container -->

  <div class="container-fluid">
    <div class="row">
      <div class="col-12 text-center detail__lhmh">
        Liên Hệ Mua Hàng:  0763411170
      </div>
    </div>
  </div>

<!-- Footer -->
  <div id="footer"><footer>
	<div class="container-fluid">
		<div class="above">
			<div class="row">
				<div class="col-lg-6 col-12">
					<div class="row">
						<div class="khoinoidung pl-md-5 pl-sm-4">
							<p class="text1">TUAN DUY AUTO</p>
							<p class="text1--2 bold">Tuan Duy cam kết nỗ lực hết mình 
								nhằm cung cấp sản phẩm và dịch vụ 
							đúng với những giá trị mà khách hàng mong đợi.</p>
							<div class="sdt my-4">
								<i class="fas fa-phone-alt"></i>
								<span class="text1--2">0763411170</span>
							</div>
							<div class="addres my-4">
								<i class="fas fa-map-marker-alt"></i>
								<span class="text1--2">171 Minh Khai, Hai Ba Trung, Ha Noi</span>
							</div>
							<div class="mail my-4">
								<i class="fas fa-envelope"></i>
								<span class="text1--2">nguyentuanduy070320@gmail.com</span>
							</div>
						</div> <!-- het khoi noi dung -->
						<hr class="hr" style="width: 94%; border: 1px solid #B8B8B8;margin-top: 0;margin-bottom: 0;opacity: 0">
					</div> <!-- het row trong row 1 -->
				</div> <!-- het col 1 -->
				<div class="col-lg-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="row">
								<div class="chinhsach col-sm-4 col-12 pl-xl-5 pl-lg-4">
									<p class="text1 my-sm-4">chính sách</p>
									<p class="text1--2 my-4">Cam kết chính hãng</p>
									<p class="text1--2 my-4">Đổi mới sản phẩm</p>
									<p class="text1--2 my-4">Thử hàng tại chỗ</p>
									<hr class="hr2" style="width: 50%; border: 1px solid #B8B8B8;margin-top: 0;margin-bottom: 0;opacity: 0">
								</div> <!-- het chinh sach -->
								
								<div class="baohiem col-sm-4 col-12 pl-xl-5 pl-lg-4"> 
									<p class="text1 my-4">bảo hiểm</p>
									<p class="text1--2 my-4">Bảo hành hậu mãi</p>
									<p class="text1--2 my-4">Miễn phí cứu hộ</p>
									<p class="text1--2 my-4">Bảo hiểm xe hơi</p>
									<hr class="hr2" style="width: 50%; border: 1px solid #B8B8B8;margin-top: 0;margin-bottom: 0;opacity: 0">
								</div> <!-- het bao hiem -->
								
								<div class="lienket col-sm-4 col-12 pl-xl-5 pl-lg-4">
									<p class="text1 my-4">Liên kết</p>
									<p class="text1--2 my-4">Hệ thống cửa hàng</p>
									<p class="text1--2 my-4">Về chúng tôi</p>
									<p class="text1--2 my-4">Chăm sóc khách hàng</p>
								</div>  <!-- het lien ket -->
							</div> <!-- het row -->
						</div> <!-- het col trong row 2 -->
					</div> <!-- het row trong row 2 -->
				</div> <!-- het col 2 -->
			</div> <!-- het row -->
		</div> <!-- het above -->
		<hr style="width: 94%; border: 1px solid #B8B8B8;margin-top: 0;margin-bottom: 0">
		<div class="row under mx-0">
			<div class="col-sm-9 col-12 under--text pl-xl-5 pl-lg-4 pl-md-4">
				Niềm vui của bạn là động lực của chúng tôi
			</div>
			<div class="col-sm-3 col-12 text-right under--text pr-lg-4 pr-xl-5">
				<span class="under--text__denso">denso</span>
				<i class="fab fa-facebook-square"></i>
			</div>
		</div>
	</div>
</footer>

  <style>.fb-livechat, .fb-widget{display: none}.ctrlq.fb-button, .ctrlq.fb-close{position: fixed; right: 24px; cursor: pointer}.ctrlq.fb-button{z-index: 999; background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff; width: 60px; height: 60px; text-align: center; bottom: 30px; border: 0; outline: 0; border-radius: 60px; -webkit-border-radius: 60px; -moz-border-radius: 60px; -ms-border-radius: 60px; -o-border-radius: 60px; box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16); -webkit-transition: box-shadow .2s ease; background-size: 80%; transition: all .2s ease-in-out}.ctrlq.fb-button:focus, .ctrlq.fb-button:hover{transform: scale(1.1); box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)}.fb-widget{background: #fff; z-index: 1000; position: fixed; width: 360px; height: 435px; overflow: hidden; opacity: 0; bottom: 0; right: 24px; border-radius: 6px; -o-border-radius: 6px; -webkit-border-radius: 6px; box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)}.fb-credit{text-align: center; margin-top: 8px}.fb-credit a{transition: none; color: #bec2c9; font-family: Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; border: 0; font-weight: 400}.ctrlq.fb-overlay{z-index: 0; position: fixed; height: 100vh; width: 100vw; -webkit-transition: opacity .4s, visibility .4s; transition: opacity .4s, visibility .4s; top: 0; left: 0; background: rgba(0, 0, 0, .05); display: none}.ctrlq.fb-close{z-index: 4; padding: 0 6px; background: #365899; font-weight: 700; font-size: 11px; color: #fff; margin: 8px; border-radius: 3px}.ctrlq.fb-close::after{content: "X"; font-family: sans-serif}.bubble{width: 20px; height: 20px; background: #c00; color: #fff; position: absolute; z-index: 999999999; text-align: center; vertical-align: middle; top: -2px; left: -5px; border-radius: 50%;}.bubble-msg{width: 120px; left: -140px; top: 5px; position: relative; background: rgba(59, 89, 152, .8); color: #fff; padding: 5px 8px; border-radius: 8px; text-align: center; font-size: 13px;}</style><div class="fb-livechat"> <div class="ctrlq fb-overlay"></div><div class="fb-widget"> <div class="ctrlq fb-close"></div><div class="fb-page" data-href="https://www.facebook.com/AutoTranLan" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"> </div><div class="fb-credit"> <a href="https://chanhtuoi.com" target="_blank">Powered by Chanhtuoi</a> </div><div id="fb-root"></div></div><a href="https://m.me/AutoTranLan" title="Gửi Tin Nhắn Cho Duy qua Facebook" class="ctrlq fb-button"> <div class="bubble">1</div><div class="bubble-msg">Bận Cần Hỗ Trợ ?</div></a></div><script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script><script>jQuery(document).ready(function($){function detectmob(){if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")}; setTimeout(function(){$("div.fb-livechat").fadeIn()}, 8 * t.delay); if(!detectmob()){$(".ctrlq").on("click", function(e){e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide("slow"), t.button.show()})) : t.button.fadeOut("medium", function(){t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});</script>
  <!-- jQuery -->
  
  <script src="../WebJS/LibraryJS/jquery-3.4.1.min.js"></script>

  <!-- Popper JS -->
  <script src="../WebJS/LibraryJS/popper.min.js"></script>

  <!-- Boostrap JS -->
  <script src="../WebJS/LibraryJS/bootstrap.min.js"></script>

  <!-- Script JS -->
  <script src="../WebJS/LibraryJS/script.js"></script>
	
</body>
</html>