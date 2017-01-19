<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>Jobs</title>

  <!--dynamic table-->
  <link href="assets/js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="assets/js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link href="assets/js/data-tables/DT_bootstrap.css" rel="stylesheet" />

  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/style-responsive.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="assets/js/html5shiv.js"></script>
  <script src="assets/js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="assets/index.html"><img src="assets/images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="assets/index.html"><img src="assets/images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->


        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="assets/images/photos/user-avatar.png" class="media-object">
                    <div class="media-body">
                        <h4><a href="#">John Doe</a></h4>
                        <span>"Hello There..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">Account Information</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>Profile</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
                    <li><a href="#"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
                </ul>
            </div>

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="assets/index.html"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
                <li class="menu-list"><a href="assets/"><i class="fa fa-laptop"></i> <span>Layouts</span></a>
                    <ul class="sub-menu-list">
                        <li ><a href="assets/blank_page.html"> Blank Page</a></li>
                        <li><a href="assets/boxed_view.html"> Boxed Page</a></li>
                        <li><a href="assets/leftmenu_collapsed_view.html"> Sidebar Collapsed</a></li>
                        <li><a href="assets/horizontal_menu.html"> Horizontal Menu</a></li>

                    </ul>
                </li>
                <li class="menu-list"><a href="assets/"><i class="fa fa-book"></i> <span>UI Elements</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/general.html"> General</a></li>
                        <li><a href="assets/buttons.html"> Buttons</a></li>
                        <li><a href="assets/tabs-accordions.html"> Tabs & Accordions</a></li>
                        <li><a href="assets/typography.html"> Typography</a></li>
                        <li><a href="assets/slider.html"> Slider</a></li>
                        <li><a href="assets/panels.html"> Panels</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href="assets/"><i class="fa fa-cogs"></i> <span>Components</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/grids.html"> Grids</a></li>
                        <li><a href="assets/gallery.html"> Media Gallery</a></li>
                        <li><a href="assets/calendar.html"> Calendar</a></li>
                        <li><a href="assets/tree_view.html"> Tree View</a></li>
                        <li><a href="assets/nestable.html"> Nestable</a></li>

                    </ul>
                </li>

                <li><a href="assets/fontawesome.html"><i class="fa fa-bullhorn"></i> <span>Fontawesome</span></a></li>

                <li class="menu-list"><a href="assets/"><i class="fa fa-envelope"></i> <span>Mail</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/mail.html"> Inbox</a></li>
                        <li><a href="assets/mail_compose.html"> Compose Mail</a></li>
                        <li><a href="assets/mail_view.html"> View Mail</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href="assets/"><i class="fa fa-tasks"></i> <span>Forms</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/form_layouts.html"> Form Layouts</a></li>
                        <li><a href="assets/form_advanced_components.html"> Advanced Components</a></li>
                        <li><a href="assets/form_wizard.html"> Form Wizards</a></li>
                        <li><a href="assets/form_validation.html"> Form Validation</a></li>
                        <li><a href="assets/editors.html"> Editors</a></li>
                        <li><a href="assets/inline_editors.html"> Inline Editors</a></li>
                        <li><a href="assets/pickers.html"> Pickers</a></li>
                        <li><a href="assets/dropzone.html"> Dropzone</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href="assets/"><i class="fa fa-bar-chart-o"></i> <span>Charts</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/flot_chart.html"> Flot Charts</a></li>
                        <li><a href="assets/morris.html"> Morris Charts</a></li>
                        <li><a href="assets/chartjs.html"> Chartjs</a></li>
                        <li><a href="assets/c3chart.html"> C3 Charts</a></li>
                    </ul>
                </li>
                <li class="menu-list nav-active"><a href="#"><i class="fa fa-th-list"></i> <span>Data Tables</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/basic_table.html"> Basic Table</a></li>
                        <li class="active"><a href="assets/dynamic_table.html"> Advanced Table</a></li>
                        <li><a href="assets/responsive_table.html"> Responsive Table</a></li>
                        <li><a href="assets/editable_table.html"> Edit Table</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href="#"><i class="fa fa-map-marker"></i> <span>Maps</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/google_map.html"> Google Map</a></li>
                        <li><a href="assets/vector_map.html"> Vector Map</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href="assets/"><i class="fa fa-file-text"></i> <span>Extra Pages</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="assets/profile.html"> Profile</a></li>
                        <li><a href="assets/invoice.html"> Invoice</a></li>
                        <li><a href="assets/pricing_table.html"> Pricing Table</a></li>
                        <li><a href="assets/timeline.html"> Timeline</a></li>
                        <li><a href="assets/blog_list.html"> Blog List</a></li>
                        <li><a href="assets/blog_details.html"> Blog Details</a></li>
                        <li><a href="assets/directory.html"> Directory </a></li>
                        <li><a href="assets/chat.html"> Chat </a></li>
                        <li><a href="assets/404.html"> 404 Error</a></li>
                        <li><a href="assets/500.html"> 500 Error</a></li>
                        <li><a href="assets/registration.html"> Registration Page</a></li>
                        <li><a href="assets/lock_screen.html"> Lockscreen </a></li>
                    </ul>
                </li>
                <li><a href="assets/login.html"><i class="fa fa-sign-in"></i> <span>Login Page</span></a></li>

            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->
    
    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

        <!--toggle button start-->
        <a class="toggle-btn"><i class="fa fa-bars"></i></a>
        <!--toggle button end-->

        <!--search start-->
        <form class="searchform" action="index.html" method="post">
            <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
        </form>
        <!--search end-->

        <!--notification menu start -->
        <div class="menu-right">
            <ul class="notification-menu">
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                        <i class="fa fa-tasks"></i>
                        <span class="badge">8</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-head pull-right">
                        <h5 class="title">You have 8 pending task</h5>
                        <ul class="dropdown-list user-list">
                            <li class="new">
                                <a href="#">
                                    <div class="task-info">
                                        <div>Database update</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning">
                                            <span class="">40%</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="new">
                                <a href="#">
                                    <div class="task-info">
                                        <div>Dashboard done</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 90%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" role="progressbar" class="progress-bar progress-bar-success">
                                            <span class="">90%</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div>Web Development</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 66%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="66" role="progressbar" class="progress-bar progress-bar-info">
                                            <span class="">66% </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div>Mobile App</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="33" role="progressbar" class="progress-bar progress-bar-danger">
                                            <span class="">33% </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div>Issues fixed</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 80%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar">
                                            <span class="">80% </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="new"><a href="assets/">See All Pending Task</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge">5</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-head pull-right">
                        <h5 class="title">You have 5 Mails </h5>
                        <ul class="dropdown-list normal-list">
                            <li class="new">
                                <a href="assets/">
                                    <span class="thumb"><img src="assets/images/photos/user1.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">John Doe <span class="badge badge-success">new</span></span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="assets/">
                                    <span class="thumb"><img src="assets/images/photos/user2.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jonathan Smith</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="assets/">
                                    <span class="thumb"><img src="assets/images/photos/user3.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jane Doe</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="assets/">
                                    <span class="thumb"><img src="assets/images/photos/user4.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Mark Henry</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="assets/">
                                    <span class="thumb"><img src="assets/images/photos/user5.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jim Doe</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                </a>
                            </li>
                            <li class="new"><a href="assets/">Read All Mails</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <span class="badge">4</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-head pull-right">
                        <h5 class="title">Notifications</h5>
                        <ul class="dropdown-list normal-list">
                            <li class="new">
                                <a href="assets/">
                                    <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #1 overloaded.  </span>
                                    <em class="small">34 mins</em>
                                </a>
                            </li>
                            <li class="new">
                                <a href="assets/">
                                    <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #3 overloaded.  </span>
                                    <em class="small">1 hrs</em>
                                </a>
                            </li>
                            <li class="new">
                                <a href="assets/">
                                    <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #5 overloaded.  </span>
                                    <em class="small">4 hrs</em>
                                </a>
                            </li>
                            <li class="new">
                                <a href="assets/">
                                    <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #31 overloaded.  </span>
                                    <em class="small">4 hrs</em>
                                </a>
                            </li>
                            <li class="new"><a href="assets/">See All Notifications</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <img src="assets/images/photos/user-avatar.png" alt="" />
                        John Doe
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                        <li><a href="#"><i class="fa fa-user"></i>  Profile</a></li>
                        <li><a href="#"><i class="fa fa-cog"></i>  Settings</a></li>
                        <li><a href="#"><i class="fa fa-sign-out"></i> Log Out</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!--notification menu end -->

        </div>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                Dynamic Table
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <a href="#">Data Tables</a>
                </li>
                <li class="active"> Dynamic Table </li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
        <div class="row">
        <div class="col-sm-12">
        <section class="panel">
	        <header class="panel-heading">
	            Dynamic Table
	            <span class="tools pull-right">
	                <a href="javascript:;" class="fa fa-chevron-down"></a>
	                <a href="javascript:;" class="fa fa-times"></a>
	             </span>
	        </header>
	        <div class="panel-body">
		        <div class="adv-table">
			        <table class="display table table-bordered table-striped" id="dynamic-table">
				        <thead>
					        <tr>
					            <th>任务名称</th>
					            <th>任务分组</th>
					            <th>corn表达式</th>
					            <th class="hidden-phone">调度类</th>
					            <th class="hidden-phone">操作</th>
					        </tr>
				        </thead>
				        <tbody>
				        	<c:forEach var="item" items="${jobs}">
						        <tr class="gradeX">
						            <td>${item.jobName}</td>
						            <td>${item.jobGroup}</td>
						            <td>${item.cronExpression}</td>
						            <td class="center hidden-phone">${item.jobClassName}</td>
						            <td class="center hidden-phone">
							            <input type="button" id="edit" value="编辑">
									  	<input type="button" id="pause" value="暂停">
									  	<input type="button" id="resume" value="恢复">
									  	<input type="button" id="del" value="删除">
									  	<input type="button" id="clear" value="清空">
						            </td>
						        </tr>
					        </c:forEach>
				        </tbody>
				        <tfoot>
					        <tr>
					            <th>JobName</th>
					            <th>JobGroup</th>
					            <th>CronExpression</th>
					            <th class="hidden-phone">JobClassName</th>
					            <th class="hidden-phone">Operation</th>
					        </tr>
				        </tfoot>
			        </table>
		        </div>
	        </div>
        </section>
        </div>
        </div>
        </div>
        <!--body wrapper end-->

        <%@ include file="../assets/footer.html" %>


    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="assets/js/jquery-1.10.2.min.js"></script>
<script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/modernizr.min.js"></script>
<script src="assets/js/jquery.nicescroll.js"></script>

<!--dynamic table-->
<script src="assets/js/advanced-datatable/js/jquery.dataTables.js"></script>
<script src="assets/js/data-tables/DT_bootstrap.js"></script>

<!--dynamic table initialization -->
<script src="assets/js/dynamic_table_init.js"></script>

<!--common scripts for all pages-->
<script src="assets/js/scripts.js"></script>

<script >
	$(function() {
        $("#pause").click(function() {
            var jobName = $(this).siblings("td.jobName").val();
            var jobGroup = $(this).siblings("td.jobGroup").val();
            alert(jobGroup)
        });
    });
</script>
</body>
</html>
