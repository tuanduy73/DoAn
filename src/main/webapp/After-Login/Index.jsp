<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
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

  <!-- Home CSS -->
  <link rel="stylesheet" type="text/css" href="../css/home.css">

  <title>Trang Chủ</title>
  
</head>
<body>

  <!-- Header -->
  <%
  	String n = "";
	HttpSession httpSession = request.getSession();
	Object object = httpSession.getAttribute("name");
	n = String.valueOf(object);
  %>
  <nav class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container">
      <a class="navbar-brand logo hoverheader" href="#">TUAN DUY</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
          <li class="nav-item hoverheader">
            <a class="nav-link" href="#">Trang Chủ</a>
          </li>
          <li class="nav-item hoverheader">
            <a class="nav-link" href="Products.jsp">Sản Phẩm</a>
          </li>
          <li class="nav-item hoverheader">
            <a class="nav-link" href="Contact.jsp">Liên lạc</a>
          </li>
          <li class="nav-item hoverheader">
            <a class="nav-link" href="AboutUs.jsp">Về Chúng Tôi</a>
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
  </nav> <!-- hết nav -->
  
  <div class="bd-example">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1" class=""></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2" class=""></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active" data-interval="10000">
          <img src="../css/images/carousel.png" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block text-left col-lg-6 col-8 text-md-right text-lg-left carouselin">
            <h3 class="title">Tuan Duy Auto</h3>
            <p class="title-under">Là một nhà sản xuất linh kiện, chúng tôi đã xây dựng một bãi lái thử từ giai đoạn rất sớm so với các công ty khác. Chúng tôi sở hữu các cơ sở đánh giá tương đương với những hãng sản xuất ô tô nhằm giúp chúng tôi đảm bảo hiệu suất sản phẩm và chất lượng vượt trên cả sự kỳ vọng của khách hàng. 
            </p>
            <div class="btn btn-secondary mt-lg-4 mt-md-2 carousel--top--xt">Xem Thêm</div>
          </div>
        </div>
        <div class="carousel-item" data-interval="10000">
          <img src="../css/images/carousel2.png" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block text-left col-lg-6 col-8 text-md-right text-lg-left carouselin">
            <h3 class="title">Tuan Duy Auto</h3>
            <p class="title-under">Chúng tôi đang tiến hành nghiên cứu và phát triển các công nghệ mới có thể được áp dụng trong vòng 5 đến 20 năm tới. Các nghiên cứu của chúng tôi bao gồm nhiều chủ đề, từ vật liệu bán dẫn cho tới vi tảo giúp sản xuất dầu. 
            </p>
            <div class="btn btn-secondary mt-lg-4 mt-md-2 carousel--top--xt">Xem Thêm</div>
          </div>
        </div>
        <div class="carousel-item" data-interval="10000">
          <img src="../css/images/carousel3.png" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block text-left col-lg-6 col-8 text-md-right text-lg-left carouselin">
            <h3 class="title">Tuan Duy Auto</h3>
            <p class="title-under">Chúng tôi đã đổi tên công ty từ Nippondenso thành DENSO. Bằng cách bỏ đi từ “Nippon” - có nghĩa là Nhật Bản trong tiếng Nhật, chúng tôi đang hướng đến mục tiêu trở thành một công ty toàn cầu thực sự. Tinh thần DENSO đại diện cho các giá trị và nguyên tắc của chúng tôi. 
            </p>
            <div class="btn btn-secondary mt-lg-4 mt-md-2 carousel--top--xt">Xem Thêm</div>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

  <!-- Main -->
  <div class="container-fluid">
    <div class="row">
      <div class="col-12 welcome py-5 my-5 text-center">Welcom to Tuan Duy Auto</div>
    </div> <!-- het row -->
  </div> <!-- het container-fluid   -->

  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-12">
        <img src="../css/images/denso1.png" class="img">
      </div>
      <div class="col-lg-6 col-md-12 px-5">
        <h1 class="underwelcome--title pb-5">Denso</h1>
        <p class="underwelcome--text">DENSO là Tập đoàn hàng đầu thế giới chuyên cung cấp công nghệ, hệ thống và linh kiện ô tô tiên tiến cho các hãng sản xuất ô tô nổi tiếng. <br><br>

          Chúng tôi cam kết góp phần xây dựng một thế giới tốt đẹp hơn thông qua các sản phẩm và công nghệ số một toàn cầu của mình. <br><br>

        Công ty TNHH DENSO Việt Nam được thành lập ngày 4/1/2001 (thời điểm chính thức nhận giấy phép đầu tư) tại Khu công nghiệp Thăng Long, Đông Anh, Hà Nội, Việt Nam.  </p>
      </div>
    </div> <!-- het row -->

    <div class="row py-md-5 my-md-5 py-3 my-3">
      <div class="col-md-4 col-12 cachduoi">
        <img src="../css/images/spm.png" class="img">
        <div class="spm text-center">
          <span class="spm--big">sản phẩm mới</span><br>
          <span class="spm--small">phụ kiện xe hơi 2019</span>
          <div class="nut">Sale 20%</div>
        </div>
      </div>
      <div class="col-md-4 col-12 cachduoi">
        <img src="../css/images/giare.png" class="img">
        <div class="spm text-center">
          <span class="spm--big">giá rẻ</span><br>
          <span class="spm--small">phụ kiện công suất tốt</span>
          <div class="nut">Sale 20%</div>
        </div>
      </div>
      <div class="col-md-4 col-12 cachduoi">
        <img src="../css/images/khuyenmai.png" class="img">
        <div class="spm text-center">
          <span class="spm--big">khuyến mại</span><br>
          <span class="spm--small">khuyến mại tháng 9</span>
          <div class="nut">Sale 20%</div>
        </div>
      </div>
    </div> <!-- het row -->

    <div class="row">

      <div class="col-12 text-center">
        <h1 class="tdto">Sản Phẩm</h1>
      </div> <!-- het col -->

      <div class="col-12 text-center pb-md-5 pt-3 pb-4 col-12 spm--td">
        Cùng tham quan các sản phẩm nổi bật của chúng tôi
      </div>

      <!-- <div class="col-12 text-center">
        <div class="spm--td--list pb-5 mb-md-5">
          <div class="spm__imput--radio"><input type="radio" name="radio"><span class="spm_span-radio">khác</span></div>
          <div class="spm__imput--radio"><input type="radio" name="radio"><span class="spm_span-radio">phụ kiện</span></div>
          <div class="spm__imput--radio"><input type="radio" name="radio"><span class="spm_span-radio">đồ chơi xe hơi</span></div>
          <div class="spm__imput--radio"><input type="radio" name="radio"><span class="spm_span-radio">nội thất xe hơi</span></div>
          <div class="spm__imput--radio"><input type="radio" name="radio"><span class="spm_span-radio">hàng mới về</span></div>
        </div>
      </div> -->
    </div> <!-- het row -->
  </div> <!-- het container -->

  <div class="container">

    <div class="row" id="content"></div> <!-- het row -->

    <div class="row mb-5 pb-5">
      <div class="btn btn-primary xemthem my-md-5"><a href="Product.html" style="color: white">Xem Thêm</a></div>
    </div>
  </div> <!-- het container -->

  <div class="container">
    <div class="row mb-5 pb-5">
      <div class="col-5">
        <p class="mb-5 sph--tdto">Slogan thương hiệu dựa trên Triết lý DENSO</p>
        <div class="spm--carousel pt-5 px-5">Các dây chuyền sản xuất và thiết bị đều được sản xuất trong nhà xưởng để có thể đạt được độ chính xác và chất lượng sản phẩm bắt buộc của chúng tôi. “Mang lại hy vọng cho tương lai của hành tinh, cho xã hội và tất cả mọi người”.
        </div>
      </div>
      <div class="col-7">
        <div id="carouselExampleControls" class="carousel" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="../css/images/carousel4.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="../css/images/carousel5.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="../css/images/carousel6.png" class="d-block w-100" alt="...">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon prev" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon next" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div> <!-- het carousel -->
      </div> <!-- het col -->
    </div> <!-- het row -->

    <div class="row">
      <div class="col-md-4 col-12 my-md-5 my-3 py-md-5 py-3">
        <img src="../css/images/km.png" class="img">
        <span class="kmbhtt">khuyến mãi</span>
      </div>
      <div class="col-md-4 col-12 my-md-5 my-3 py-md-5 py-3">
        <img src="../css/images/bh.png" class="img">
        <span class="kmbhtt">bảo hành</span>
      </div>
      <div class="col-md-4 col-12 my-md-5 my-3 py-md-5 py-3">
        <img src="../css/images/tt.png" class="img">
        <span class="kmbhtt">tin tức</span>
      </div>
    </div>
  </div> <!-- het container -->

  <div id="carouselExampleControls" class="carousel slide py-5 my-5" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="carousel--wrap col-8 text-center">
          <img src="../css/images/fbavt.svg" class="pb-5 avt">
          <p>Tôi là khách hàng thân quen của Tuan Duy Auto, phụ tùng dồi dào, uy tín bậc nhất Thái Nguyên. Dịch vụ bán hàng và chăm sóc xe quá tốt và chuyên nghiệp, sẽ còn đến Trần Lan dài dài</p>
          <span>cuccucukd</span><br>
          <span>(otofun)</span>
        </div> <!-- het carousel--wrap -->
        <img src="../css/images/feedback.png" class="d-block imgres" alt="...">
      </div> <!--het slide active -->
      <div class="carousel-item">
        <div class="carousel--wrap col-8 text-center">
          <img src="../css/images/fbavt.svg" class="pb-5 avt">
          <p>Tôi là khách hàng thân quen của Tuan Duy Auto, phụ tùng dồi dào, uy tín bậc nhất Thái Nguyên. Dịch vụ bán hàng và chăm sóc xe quá tốt và chuyên nghiệp, sẽ còn đến Trần Lan dài dài</p>
          <span>cuccucukd</span><br>
          <span>(otofun)</span>
        </div> <!-- het carousel--wrap -->
        <img src="../css/images/feedback.png" class="d-block imgres" alt="...">
      </div> <!-- het slide -->
      <div class="carousel-item">
        <div class="carousel--wrap col-8 text-center">
          <img src="../css/images/fbavt.svg" class="pb-5 avt">
          <p>Tôi là khách hàng thân quen của Tuan Duy Auto, phụ tùng dồi dào, uy tín bậc nhất Thái Nguyên. Dịch vụ bán hàng và chăm sóc xe quá tốt và chuyên nghiệp, sẽ còn đến Trần Lan dài dài</p>
          <span>cuccucukd</span><br>
          <span>(otofun)</span>
        </div> <!-- het carousel--wrap -->
        <img src="../css/images/feedback.png" class="d-block imgres" alt="...">
      </div> <!-- het slide -->
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

  <div class="row mr-0 text-center">

    <div class="col-12">
      <h1 class="tdto">Dịch Vụ</h1>
    </div> <!-- het col -->
    
    <div class="col-12 py-3 spm--td cachduoi1">
      Dịch vụ chăm sóc khách hàng đa dạng và phong phú 
    </div>
  </div> <!-- het row -->

  <div class="row mr-0 my-md-5 pb-md-5 pb-5">
    <div class="col-md-6 col-12 mb-4 mb-md-0 pr-0">
      <img src="../css/images/dv1.png" class="img">
      <span class="dichvu--mid">chăm sóc xe</span>
    </div>
    <div class="col-md-6 col-12">
      <div class="row">
        <div class="col-6 pr-0 mb-3">
          <img src="../css/images/dv2.png" class="img">
          <span class="dichvu--mid">sửa xe</span>
        </div>
        <div class="col-6 pr-0 mb-3">
          <img src="../css/images/dv3.png" class="img">
          <span class="dichvu--mid">thay dầu</span>
        </div>
      </div> <!-- het row -->
      <div class="row">
        <div class="col-6 pr-0">
          <img src="../css/images/dv4.png" class="img">
          <span class="dichvu--mid">sơn xe</span>
        </div>
        <div class="col-6 pr-0">
          <img src="../css/images/dv5.png" class="img">
          <span class="dichvu--mid">độ xe</span>
        </div>
      </div> <!-- het row -->
    </div> <!-- het col-6 -->
  </div> <!-- het row ngoai -->

  <div class="row mr-0 mb-md-5 mb-3 pb-md-5 pb-3">
    <div class="btn btn-primary xemthem mb-md-5 mb-4"><a href="service.html" style="color: white">Xem Thêm</a></div>
  </div>

  <div class="back-to-top"><i class="fas fa-chevron-circle-up"></i></div> 
  <div class="container-fluid banner">
    <div class="row">
      <div class="col-12 text-center">
        <p class="new1">đăng ký nhận tin tức cùng chúng tôi</p>
      </div>
      <div class="col-md-6 col-8 m-auto">
        <div class="email">
          <div class="left">
            <i class="far fa-envelope"></i>
            <input class="nhaptt" type="email" placeholder="Nhập email của bạn tại đây" name="">
          </div> <!-- het left -->
          <i class="fas fa-chevron-right" style="cursor: pointer;"></i>
        </div> <!-- het email -->
      </div> <!-- het newsletter -->
    </div> <!-- het row -->
  </div> <!-- het container -->
  <div class="row mr-0 split"></div>
  
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


</div>

  <style>.fb-livechat, .fb-widget{display: none}.ctrlq.fb-button, .ctrlq.fb-close{position: fixed; right: 24px; cursor: pointer}.ctrlq.fb-button{z-index: 999; background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff; width: 60px; height: 60px; text-align: center; bottom: 30px; border: 0; outline: 0; border-radius: 60px; -webkit-border-radius: 60px; -moz-border-radius: 60px; -ms-border-radius: 60px; -o-border-radius: 60px; box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16); -webkit-transition: box-shadow .2s ease; background-size: 80%; transition: all .2s ease-in-out}.ctrlq.fb-button:focus, .ctrlq.fb-button:hover{transform: scale(1.1); box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)}.fb-widget{background: #fff; z-index: 1000; position: fixed; width: 360px; height: 435px; overflow: hidden; opacity: 0; bottom: 0; right: 24px; border-radius: 6px; -o-border-radius: 6px; -webkit-border-radius: 6px; box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)}.fb-credit{text-align: center; margin-top: 8px}.fb-credit a{transition: none; color: #bec2c9; font-family: Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; border: 0; font-weight: 400}.ctrlq.fb-overlay{z-index: 0; position: fixed; height: 100vh; width: 100vw; -webkit-transition: opacity .4s, visibility .4s; transition: opacity .4s, visibility .4s; top: 0; left: 0; background: rgba(0, 0, 0, .05); display: none}.ctrlq.fb-close{z-index: 4; padding: 0 6px; background: #365899; font-weight: 700; font-size: 11px; color: #fff; margin: 8px; border-radius: 3px}.ctrlq.fb-close::after{content: "X"; font-family: sans-serif}.bubble{width: 20px; height: 20px; background: #c00; color: #fff; position: absolute; z-index: 999999999; text-align: center; vertical-align: middle; top: -2px; left: -5px; border-radius: 50%;}.bubble-msg{width: 120px; left: -140px; top: 5px; position: relative; background: rgba(59, 89, 152, .8); color: #fff; padding: 5px 8px; border-radius: 8px; text-align: center; font-size: 13px;}</style><div class="fb-livechat"> <div class="ctrlq fb-overlay"></div><div class="fb-widget"> <div class="ctrlq fb-close"></div><div class="fb-page" data-href="https://www.facebook.com/AutoTranLan" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"> </div><div class="fb-credit"> <a href="https://chanhtuoi.com" target="_blank">Powered by Chanhtuoi</a> </div><div id="fb-root"></div></div><a href="https://m.me/AutoTranLan" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button"> <div class="bubble">1</div><div class="bubble-msg">Bạn cần hỗ trợ?</div></a></div><script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script><script>jQuery(document).ready(function($){function detectmob(){if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")}; setTimeout(function(){$("div.fb-livechat").fadeIn()}, 8 * t.delay); if(!detectmob()){$(".ctrlq").on("click", function(e){e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide("slow"), t.button.show()})) : t.button.fadeOut("medium", function(){t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});</script>
  
  <!-- jQuery -->
  <script src="../WebJS/LibraryJS/jquery-3.4.1.min.js"></script>

  <!-- Popper JS -->
  <script src="../WebJS/LibraryJS/popper.min.js"></script>

  <!-- Boostrap JS -->
  <script src="../WebJS/LibraryJS/bootstrap.min.js"></script>

  <!-- Script JS -->
  <script src="../WebJS/LibraryJS/scipt.js"></script>
  
  <script src="https://unpkg.com/@popperjs/core@2"></script>

</body>
</html>