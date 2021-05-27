<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="http://localhost:8080/PhoneMart/resources/img/apple-icon.png" />
<link rel="icon" type="image/png"
	href="http://localhost:8080/PhoneMart/resources/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>PhoneCart</title>
<meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
	name="viewport" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!-- CSS Files -->
<link
	href="http://localhost:8080/PhoneMart/resources/css/material-dashboard.css?v=2.1.2"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="http://localhost:8080/PhoneMart/resources/demo/demo.css"
	rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper">
		<div class="sidebar" data-color="green" data-background-color="black"
			data-image="http://localhost:8080/PhoneMart/resources/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> PhoneMart </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item "><a class="nav-link" href="../dashboard">
							<i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item active  "><a class="nav-link"
						href="../addPhone"> <i class="material-icons">phone</i>
							<p>Edit Phone</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="../adminView">
							<i class="material-icons">smartphone</i>
							<p>View Phone</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="javascript:;">Edit Phone</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">

						<ul class="navbar-nav">

							<li class="nav-item dropdown"><a class="nav-link"
								href="javascript:;" id="navbarDropdownProfile"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="material-icons">person</i>
									<p class="d-lg-none d-md-block">Account</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownProfile">
									<a class="dropdown-item" href="#">Profile</a> <a
										class="dropdown-item" href="#">Settings</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Log out</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-success">
									<h4 class="card-title">Edit Phone</h4>
									<p class="card-category">Fill form and submit</p>
								</div>
								<div class="card-body">
									<form action="/PhoneMart/update/${phone.getPhoneId()}">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="bmd-label-floating">Phone
														Name</label> <input type="text" name="phoneName"
														value="${ phone.getPhoneName() }" class="form-control" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">Brand</label> <input
														type="text" name="brand" value="${phone.getBrand()}"
														class="form-control" />
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Model</label>
													<input type="text" name="model" value="${phone.getModel()}"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Color</label> <input
														type="text" name="color"
														value="${phone.getFeatures().getColor()}"
														class="form-control" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Dimensions</label> <input
														type="text" name="dimensions"
														value="${phone.getFeatures().getDimensions()}"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label class="bmd-label-floating">Image Url</label> <input
														type="text" name="imgUrl" value="${phone.getImgUrl()}"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Cost</label> <input
														type="text" name="cost" value="${phone.getCost()}"
														class="form-control" />
												</div>
											</div>
											<div class="col-md-8">
												<div class="form-group">
													<label class="bmd-label-floating">Processor</label> <input
														type="text" name="processor"
														value="${phone.getFeatures().getProcessor()}"
														class="form-control" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Main Camera</label> <input
														type="text" name="mainCamera"
														value="${phone.getFeatures().getMainCamera()}"
														class="form-control" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Selfie Camera</label> <input
														type="text" name="selfieCamera"
														value="${phone.getFeatures().getSelfieCamera()}"
														class="form-control" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Battery</label>
													<input type="text" name="battery"
														value="${phone.getFeatures().getBattery()}"
														class="form-control" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Memory</label>
													<input type="text" name="memory"
														value="${phone.getFeatures().getMemory()}"
														class="form-control" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">OS</label>
													<input type="text" name="os"
														value="${phone.getFeatures().getOs()}"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="row"></div>
										<a href="http://localhost:8080/PhoneMart/delete/${phone.getPhoneId()}"
											class="btn btn-danger ml-auto"> <i
											class="material-icons">delete</i> Delete Phone
										</a>
										<button type="submit" class="btn btn-success pull-right">
											Update Phone</button>
										<div class="clearfix"></div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<footer class="footer"> </footer>
		</div>
	</div>
	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors ml-auto mr-auto">
							<span class="badge filter badge-purple" data-color="purple"></span>
							<span class="badge filter badge-azure" data-color="azure"></span>
							<span class="badge filter badge-green" data-color="green"></span>
							<span class="badge filter badge-warning" data-color="orange"></span>
							<span class="badge filter badge-danger" data-color="danger"></span>
							<span class="badge filter badge-rose active" data-color="rose"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Images</li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="http://localhost:8080/PhoneMart/resources/img/sidebar-1.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="http://localhost:8080/PhoneMart/resources/img/sidebar-2.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="http://localhost:8080/PhoneMart/resources/img/sidebar-3.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="http://localhost:8080/PhoneMart/resources/img/sidebar-4.jpg"
						alt="" />
				</a></li>
				<li class="button-container"><a
					href="https://www.creative-tim.com/product/material-dashboard"
					target="_blank" class="btn btn-primary btn-block">Free
						Download</a></li>
				<!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
				<li class="button-container"><a
					href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html"
					target="_blank" class="btn btn-default btn-block">
						View Documentation </a></li>
				<li class="button-container github-star"><a
					class="github-button"
					href="https://github.com/creativetimofficial/material-dashboard"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a>
				</li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-twitter">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-facebook">
						<i class="fa fa-facebook-f"></i> &middot; 50
					</button> <br /> <br />
				</li>
			</ul>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/core/jquery.min.js"></script>
	<script
		src="http://localhost:8080/PhoneMart/resources/js/core/popper.min.js"></script>
	<script
		src="http://localhost:8080/PhoneMart/resources/js/core/bootstrap-material-design.min.js"></script>
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/arrive.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/material-dashboard.js?v=2.1.2"
		type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="http://localhost:8080/PhoneMart/resources/demo/demo.js"></script>
	<script>
      $(document).ready(function () {
        $().ready(function () {
          $sidebar = $(".sidebar");

          $sidebar_img_container = $sidebar.find(".sidebar-background");

          $full_page = $(".full-page");

          $sidebar_responsive = $("body > .navbar-collapse");

          window_width = $(window).width();

          fixed_plugin_open = $(
            ".sidebar .sidebar-wrapper .nav li.active a p"
          ).html();

          if (window_width > 767 && fixed_plugin_open == "Dashboard") {
            if ($(".fixed-plugin .dropdown").hasClass("show-dropdown")) {
              $(".fixed-plugin .dropdown").addClass("open");
            }
          }

          $(".fixed-plugin a").click(function (event) {
            // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
            if ($(this).hasClass("switch-trigger")) {
              if (event.stopPropagation) {
                event.stopPropagation();
              } else if (window.event) {
                window.event.cancelBubble = true;
              }
            }
          });

          $(".fixed-plugin .active-color span").click(function () {
            $full_page_background = $(".full-page-background");

            $(this).siblings().removeClass("active");
            $(this).addClass("active");

            var new_color = $(this).data("color");

            if ($sidebar.length != 0) {
              $sidebar.attr("data-color", new_color);
            }

            if ($full_page.length != 0) {
              $full_page.attr("filter-color", new_color);
            }

            if ($sidebar_responsive.length != 0) {
              $sidebar_responsive.attr("data-color", new_color);
            }
          });

          $(".fixed-plugin .background-color .badge").click(function () {
            $(this).siblings().removeClass("active");
            $(this).addClass("active");

            var new_color = $(this).data("background-color");

            if ($sidebar.length != 0) {
              $sidebar.attr("data-background-color", new_color);
            }
          });

          $(".fixed-plugin .img-holder").click(function () {
            $full_page_background = $(".full-page-background");

            $(this).parent("li").siblings().removeClass("active");
            $(this).parent("li").addClass("active");

            var new_image = $(this).find("img").attr("src");

            if (
              $sidebar_img_container.length != 0 &&
              $(".switch-sidebar-image input:checked").length != 0
            ) {
              $sidebar_img_container.fadeOut("fast", function () {
                $sidebar_img_container.css(
                  "background-image",
                  'url("' + new_image + '")'
                );
                $sidebar_img_container.fadeIn("fast");
              });
            }

            if (
              $full_page_background.length != 0 &&
              $(".switch-sidebar-image input:checked").length != 0
            ) {
              var new_image_full_page = $(".fixed-plugin li.active .img-holder")
                .find("img")
                .data("src");

              $full_page_background.fadeOut("fast", function () {
                $full_page_background.css(
                  "background-image",
                  'url("' + new_image_full_page + '")'
                );
                $full_page_background.fadeIn("fast");
              });
            }

            if ($(".switch-sidebar-image input:checked").length == 0) {
              var new_image = $(".fixed-plugin li.active .img-holder")
                .find("img")
                .attr("src");
              var new_image_full_page = $(".fixed-plugin li.active .img-holder")
                .find("img")
                .data("src");

              $sidebar_img_container.css(
                "background-image",
                'url("' + new_image + '")'
              );
              $full_page_background.css(
                "background-image",
                'url("' + new_image_full_page + '")'
              );
            }

            if ($sidebar_responsive.length != 0) {
              $sidebar_responsive.css(
                "background-image",
                'url("' + new_image + '")'
              );
            }
          });

          $(".switch-sidebar-image input").change(function () {
            $full_page_background = $(".full-page-background");

            $input = $(this);

            if ($input.is(":checked")) {
              if ($sidebar_img_container.length != 0) {
                $sidebar_img_container.fadeIn("fast");
                $sidebar.attr("data-image", "#");
              }

              if ($full_page_background.length != 0) {
                $full_page_background.fadeIn("fast");
                $full_page.attr("data-image", "#");
              }

              background_image = true;
            } else {
              if ($sidebar_img_container.length != 0) {
                $sidebar.removeAttr("data-image");
                $sidebar_img_container.fadeOut("fast");
              }

              if ($full_page_background.length != 0) {
                $full_page.removeAttr("data-image", "#");
                $full_page_background.fadeOut("fast");
              }

              background_image = false;
            }
          });

          $(".switch-sidebar-mini input").change(function () {
            $body = $("body");

            $input = $(this);

            if (md.misc.sidebar_mini_active == true) {
              $("body").removeClass("sidebar-mini");
              md.misc.sidebar_mini_active = false;

              $(".sidebar .sidebar-wrapper, .main-panel").perfectScrollbar();
            } else {
              $(".sidebar .sidebar-wrapper, .main-panel").perfectScrollbar(
                "destroy"
              );

              setTimeout(function () {
                $("body").addClass("sidebar-mini");

                md.misc.sidebar_mini_active = true;
              }, 300);
            }

            // we simulate the window Resize so the charts will get updated in realtime.
            var simulateWindowResize = setInterval(function () {
              window.dispatchEvent(new Event("resize"));
            }, 180);

            // we stop the simulation of Window Resize after the animations are completed
            setTimeout(function () {
              clearInterval(simulateWindowResize);
            }, 1000);
          });
        });
      });
    </script>
</body>
</html>
