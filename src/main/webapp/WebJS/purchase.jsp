<%@page import="java.sql.Date"%>
<%@page import="QuanLi.BillDao"%>
<%@page import="Table.Bill"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.List"%>
<%@page import="QuanLi.BillProductDao"%>
<%@page import="Table.BillProduct"%>
<%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
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

  <!-- Purchase CSS -->
  <link rel="stylesheet" type="text/css" href="../css/purchase.css">

  <title>Thanh Toán</title>
  
<style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>
<body data-new-gr-c-s-check-loaded="14.1028.0" data-gr-ext-installed="">

  <!-- Header -->
  <div id="header"><header class="hero">
	<div class="header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand logo hoverheader" href="../After-Login/Index.jsp">TUAN DUY</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
						<li class="nav-item hoverheader">
							<a class="nav-link" href="../After-Login/Index.jsp">Trang Chủ</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="../After-Login/Products.jsp">Sản Phẩm</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="../After-Login/Contact.jsp">Liên lạc</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="../After-Login/AboutUs.jsp">Về Chúng Tôi</a>
						</li>
						<li class="nav-item hoverheader">
							<a class="nav-link" href="../WebJS/purchase.jsp">
								<i class="fas fa-shopping-cart"><sup id="show">0</sup></i>
							</a>
						</li>
					</ul>
				</div>
			</div> <!-- het container -->
		</nav> <!-- hết nav -->
	</div> <!-- het header -->
  </header>  <!-- het hero -->


</div>
  <div class="gt">thanh toán</div>

  <!-- Main -->
  <div class="col-12 text-center tieude my-lg-5 my-lg-4 py-lg-5 my-5">Giỏ Hàng</div>
  
  <div class="container">

    <div class="row mb-md-5 mb-4 mx-0">
      <div class="col-md-4 col-12">
        <img src="../css/images/thanhtoan.png" style="width: 100%">
      </div>

      <div class="col-md-8 col-12 mt-5 mt-md-0">
        <div class="row" id="giohang"><div class="table-responsive mb-5 pb-md-5 pb-0 text-center">
		<table class="table table-striped">
		
		<thead class="thead-light">
		<tr>
		<td scope="col">Sản Phẩm</td>
		<td scope="col">Giá</td>
		<td scope="col">Xuất Xứ</td>
		<td scope="col">Thanh Toán</td>
		<td scope="col">Xoá</td>
		</tr>
		</thead>
		<tbody>
		<%

			List<BillProduct> billProducts = new BillProductDao().getAllBillProduct();
			
			for (BillProduct billProduct: billProducts) {
		%>
		
		<tr>
		
		<td><%=billProduct.getName12()%></td>
		<td><%=billProduct.getPrice() %></td>
		<td><%=billProduct.getXuatxu()%></td>
		<td><%=billProduct.getPrice()%></td>
	
		<th><a href="DelateCar.jsp">History</a></th>

		</tr>
	<%}%>
		</tbody>
		
		<tbody>
			<%

			Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
        	String sql1 ="SELECT SUM(price) as payment from BILLPRODUCT";

            Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
            	    ResultSet.CONCUR_READ_ONLY);
            
            ResultSet rs = statement.executeQuery(sql1);
	
        		rs.last();		
			%>
				
		<tr>
		<th scope="col">Tổng tiền</th>
		<th scope="col"></th>
		<th scope="col"></th>
		<th scope="col" style="color:red" id="money"><%=rs.getFloat("payment")%></th>
		<th scope="col"></th>
		</tr>

		</tbody>
		
		</table>
	
		</div></div>
        <div class="row khoixuly">
          <div class="col-12">
            <a href="../After-Login/Products.jsp"><span class="ttmh">Tiếp tục mua hàng</span></a>
            <a href="Purchase-Continue.jsp"><span class="tt">Thanh toán</span></a>
          </div>
        </div> <!-- het row -->
      </div> <!-- het col-8 -->

    </div> <!-- het row -->
  </div> <!-- het container -->

  <div class="container-fluid pt-md-5">
    <div class="row purchase__lhmh">
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-12 purchase__lhmh--info">
            Liên Hệ Mua Hàng:  0913 256 874
          </div>
          <div class="col-7">
            <div class="row">
              <div class="col-6 purchase__lhmh--tk">
                BIDV: <br>
                CTK: Đỗ Duy Anh <br>
                STK: 003100338627 <br>
                CN  : Sài Gòn <br>
              </div>
              <div class="col-6 purchase__lhmh--tk">
                Vietcombank:  <br>
                CTK: Nguyen Tuan Duy <br>
                STK: 003100338627 <br>
                CN  : Hải Phòng <br>
              </div>
            </div>
          </div>
        </div> <!-- het row -->
      </div> <!-- het container -->
    </div> <!-- het row -->
  </div> <!-- het container-fluid -->


  <!-- Footer -->
  <div id="footer"><footer>
	<div class="container-fluid">
		<div class="above">
			<div class="row">
				<div class="col-lg-6 col-12">
					<div class="row">
						<div class="khoinoidung pl-md-5 pl-sm-4">
							<p class="text1">Tuan Duy Auto</p>
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


</div>

  <style>.fb-livechat, .fb-widget{display: none}.ctrlq.fb-button, .ctrlq.fb-close{position: fixed; right: 24px; cursor: pointer}.ctrlq.fb-button{z-index: 999; background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff; width: 60px; height: 60px; text-align: center; bottom: 30px; border: 0; outline: 0; border-radius: 60px; -webkit-border-radius: 60px; -moz-border-radius: 60px; -ms-border-radius: 60px; -o-border-radius: 60px; box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16); -webkit-transition: box-shadow .2s ease; background-size: 80%; transition: all .2s ease-in-out}.ctrlq.fb-button:focus, .ctrlq.fb-button:hover{transform: scale(1.1); box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)}.fb-widget{background: #fff; z-index: 1000; position: fixed; width: 360px; height: 435px; overflow: hidden; opacity: 0; bottom: 0; right: 24px; border-radius: 6px; -o-border-radius: 6px; -webkit-border-radius: 6px; box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)}.fb-credit{text-align: center; margin-top: 8px}.fb-credit a{transition: none; color: #bec2c9; font-family: Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; border: 0; font-weight: 400}.ctrlq.fb-overlay{z-index: 0; position: fixed; height: 100vh; width: 100vw; -webkit-transition: opacity .4s, visibility .4s; transition: opacity .4s, visibility .4s; top: 0; left: 0; background: rgba(0, 0, 0, .05); display: none}.ctrlq.fb-close{z-index: 4; padding: 0 6px; background: #365899; font-weight: 700; font-size: 11px; color: #fff; margin: 8px; border-radius: 3px}.ctrlq.fb-close::after{content: "X"; font-family: sans-serif}.bubble{width: 20px; height: 20px; background: #c00; color: #fff; position: absolute; z-index: 999999999; text-align: center; vertical-align: middle; top: -2px; left: -5px; border-radius: 50%;}.bubble-msg{width: 120px; left: -140px; top: 5px; position: relative; background: rgba(59, 89, 152, .8); color: #fff; padding: 5px 8px; border-radius: 8px; text-align: center; font-size: 13px;}</style><div class="fb-livechat" style="display: block;"> <div class="ctrlq fb-overlay"></div><div class="fb-widget"> <div class="ctrlq fb-close"></div><div class="fb-page fb_iframe_widget" data-href="https://www.facebook.com/AutoTranLan" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;container_width=0&amp;height=400&amp;hide_cover=true&amp;href=https%3A%2F%2Fwww.facebook.com%2FAutoTranLan&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=false&amp;small_header=true&amp;tabs=messages&amp;width=360"><span style="vertical-align: bottom; width: 360px; height: 0px;"><iframe name="fe51fc4cb995d" width="360px" height="400px" data-testid="fb:page Facebook Social Plugin" title="fb:page Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v2.9/plugins/page.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df5bcc4e5f3d3d8%26domain%3Dduyanhdo.github.io%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fduyanhdo.github.io%252Ff1af4d0e6e28bf4%26relation%3Dparent.parent&amp;container_width=0&amp;height=400&amp;hide_cover=true&amp;href=https%3A%2F%2Fwww.facebook.com%2FAutoTranLan&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=false&amp;small_header=true&amp;tabs=messages&amp;width=360" class="" style="border: none; visibility: visible; width: 360px; height: 0px;"></iframe></span></div><div class="fb-credit"> <a href="https://chanhtuoi.com" target="_blank">Powered by Chanhtuoi</a> </div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div></div><a href="https://m.me/AutoTranLan" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button"> <div class="bubble">1</div><div class="bubble-msg">Bạn cần hỗ trợ?</div></a></div><script src="https://connect.facebook.net/en_US/sdk.js?hash=dc445a8c911430016af321712160f633" async="" crossorigin="anonymous"></script><script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script><script>jQuery(document).ready(function($){function detectmob(){if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")}; setTimeout(function(){$("div.fb-livechat").fadeIn()}, 8 * t.delay); if(!detectmob()){$(".ctrlq").on("click", function(e){e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide("slow"), t.button.show()})) : t.button.fadeOut("medium", function(){t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});</script>

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