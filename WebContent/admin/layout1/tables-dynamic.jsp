<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from themes-lab.com/make/admin/layout1/tables-dynamic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Jun 2015 21:10:57 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="admin-themes-lab">
    <meta name="author" content="themes-lab">
    <link rel="shortcut icon" href="../assets/global/images/favicon.png" type="image/png">
    <title>Make Admin Template &amp; Builder</title>
    <link href="../assets/global/css/style.css" rel="stylesheet">
    <link href="../assets/global/css/theme.css" rel="stylesheet">
    <link href="../assets/global/css/ui.css" rel="stylesheet">
    <link href="../assets/admin/layout1/css/layout.css" rel="stylesheet">
    <!-- BEGIN PAGE STYLE -->
    <link href="../assets/global/plugins/datatables/dataTables.min.css" rel="stylesheet">
    <!-- END PAGE STYLE -->
    <script src="../assets/global/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>
  <!-- LAYOUT: Apply "submenu-hover" class to body element to have sidebar submenu show on mouse hover -->
  <!-- LAYOUT: Apply "sidebar-collapsed" class to body element to have collapsed sidebar -->
  <!-- LAYOUT: Apply "sidebar-top" class to body element to have sidebar on top of the page -->
  <!-- LAYOUT: Apply "sidebar-hover" class to body element to show sidebar only when your mouse is on left / right corner -->
  <!-- LAYOUT: Apply "submenu-hover" class to body element to show sidebar submenu on mouse hover -->
  <!-- LAYOUT: Apply "fixed-sidebar" class to body to have fixed sidebar -->
  <!-- LAYOUT: Apply "fixed-topbar" class to body to have fixed topbar -->
  <!-- LAYOUT: Apply "rtl" class to body to put the sidebar on the right side -->
  <!-- LAYOUT: Apply "boxed" class to body to have your page with 1200px max width -->

  <!-- THEME STYLE: Apply "theme-sdtl" for Sidebar Dark / Topbar Light -->
  <!-- THEME STYLE: Apply  "theme sdtd" for Sidebar Dark / Topbar Dark -->
  <!-- THEME STYLE: Apply "theme sltd" for Sidebar Light / Topbar Dark -->
  <!-- THEME STYLE: Apply "theme sltl" for Sidebar Light / Topbar Light -->
  
  <!-- THEME COLOR: Apply "color-default" for dark color: #2B2E33 -->
  <!-- THEME COLOR: Apply "color-primary" for primary color: #319DB5 -->
  <!-- THEME COLOR: Apply "color-red" for red color: #C9625F -->
  <!-- THEME COLOR: Apply "color-green" for green color: #18A689 -->
  <!-- THEME COLOR: Apply "color-orange" for orange color: #B66D39 -->
  <!-- THEME COLOR: Apply "color-purple" for purple color: #6E62B5 -->
  <!-- THEME COLOR: Apply "color-blue" for blue color: #4A89DC -->
  <!-- BEGIN BODY -->
  <body class="fixed-topbar fixed-sidebar theme-sdtl color-default">
    <!--[if lt IE 7]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <section>
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar">
        <div class="logopanel">
          <h1>
            <a href="dashboard.html"></a>
          </h1>
        </div>
        <div class="sidebar-inner">
          <div class="sidebar-top">
            <form action="http://themes-lab.com/make/admin/layout1/search-result.html" method="post" class="searchform" id="search-results">
              <input type="text" class="form-control" name="keyword" placeholder="Search...">
            </form>
            <div class="userlogged clearfix">
              <i class="icon icons-faces-users-01"></i>
              <div class="user-details">
                <h4>Mike Mayers</h4>
                <div class="dropdown user-login">
                  <button class="btn btn-xs dropdown-toggle btn-rounded" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" data-delay="300">
                  <i class="online"></i><span>Available</span><i class="fa fa-angle-down"></i>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="#"><i class="busy"></i><span>Busy</span></a></li>
                    <li><a  href="#"><i class="turquoise"></i><span>Invisible</span></a></li>
                    <li><a href="#"><i class="away"></i><span>Away</span></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="menu-title">
            Navigation 
            <div class="pull-right menu-settings">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" data-delay="300"> 
              <i class="icon-settings"></i>
              </a>
              <ul class="dropdown-menu">
                <li><a href="#" id="reorder-menu" class="reorder-menu">Reorder menu</a></li>
                <li><a href="#" id="remove-menu" class="remove-menu">Remove elements</a></li>
                <li><a href="#" id="hide-top-sidebar" class="hide-top-sidebar">Hide user &amp; search</a></li>
              </ul>
            </div>
          </div>
          <ul class="nav nav-sidebar">
            <li><a href="dashboard.html"><i class="icon-home"></i><span>Dashboard</span></a></li>
            <li class="nav-parent">
              <a href="#"><i class="icon-puzzle"></i><span>Builder</span> <span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a target="_blank" href="http://themes-lab.com/make/admin-builder/index.html"> Admin</a></li>
                <li><a href="page-builder/index.html"> Page</a></li>
                <li><a href="ecommerce-pricing-table.html"> Pricing Table</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="fa fa-laptop"></i><span>Frontend</span> <span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="http://themes-lab.com/make/frontend/onepage/index.html" target="_blank"> Onepage</a></li>
                <li><a href="http://themes-lab.com/make/frontend/multipages/index.html" target="_blank"><span class="pull-right badge badge-primary hidden-st">New</span> Multipages</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-bulb"></i><span>Mailbox</span> <span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="mailbox.html"> Inbox</a></li>
                <li><a href="mailbox-send.html"> Send Email</a></li>
                <li><a href="mailbox-emails.html"><span class="pull-right badge badge-danger">Hot</span> Email Templates</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-screen-desktop"></i><span>UI Elements</span> <span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="ui-buttons.html"> Buttons</a></li>
                <li><a href="ui-components.html"> Components</a></li>
                <li><a href="ui-tabs.html"> Tabs</a></li>
                <li><a href="ui-animations.html"> Animations CSS3</a></li>
                <li><a href="ui-icons.html"> Icons</a></li>
                <li><a href="ui-portlets.html"> Portlets</a></li>
                <li><a href="ui-nestable-list.html"> Nestable List</a></li>
                <li><a href="ui-tree-view.html"> Tree View</a></li>
                <li><a href="ui-modals.html"> Modals</a></li>
                <li><a href="ui-notifications.html"> Notifications</a></li>
                <li><a href="ui-typography.html"> Typography</a></li>
                <li><a href="ui-helper.html"> Helper Classes</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-layers"></i><span>Layouts</span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="layouts-api.html"> Layout API</a></li>
                <li><a href="layout-topbar-menu.html"> Topbar Menu</a></li>
                <li><a href="layout-topbar-mega-menu.html"> Topbar Mega Menu</a></li>
                <li><a href="layout-topbar-mega-menu-dark.html"> Topbar Mega Dark</a></li>
                <li><a href="layout-sidebar-hover.html"> Sidebar on Hover</a></li>
                <li><a href="layout-submenu-hover.html"> Sidebar Submenu Hover</a></li>
                <li><a href="layout-boxed.html"> Boxed Layout</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-note"></i><span>Forms </span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="forms.html"> Forms Elements</a></li>
                <li><a href="forms-validation.html"> Forms Validation</a></li>
                <li><a href="forms-plugins.html"> Advanced Plugins</a></li>
                <li><a href="forms-wizard.html"> <span class="pull-right badge badge-danger">low</span> <span>Form Wizard</span></a></li>
                <li><a href="forms-sliders.html"> Sliders</a></li>
                <li><a href="forms-editors.html"> Text Editors</a></li>
                <li><a href="forms-input-masks.html"> Input Masks</a></li>
              </ul>
            </li>
            <li class="nav-parent nav-active active">
              <a href="#"><i class="fa fa-table"></i><span>Tables</span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="tables.html"> Tables Styling</a></li>
                <li class="active"><a href="tables-dynamic.html"> Tables Dynamic</a></li>
                <li><a href="tables-filter.html"> Tables Filter</a></li>
                <li><a href="tables-editable.html"> Tables Editable</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-bar-chart"></i><span>Charts </span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="charts.html"> Charts</a></li>
                <li><a href="charts-finance.html"> Financial Charts</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-picture"></i><span>Medias</span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="medias-image-croping.html"> Images Croping</a></li>
                <li><a href="medias-gallery-sortable.html"> Gallery Sortable</a></li>
                <li><a href="medias-hover-effects.html"> <span class="pull-right badge badge-primary">12</span> Hover Effects</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-docs"></i><span>Pages </span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="page-timeline.html"> Timeline</a></li>
                <li><a href="page-404.html"> Error 404</a></li>
                <li><a href="page-500.html"> Error 500</a></li>
                <li><a href="page-blank.html"> Blank Page</a></li>
                <li><a href="page-contact.html"> Contact</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-user"></i><span>User </span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="user-profil.html"> <span class="pull-right badge badge-danger">Hot</span> Profil</a></li>
                <li><a href="user-lockscreen.html"> Lockscreen</a></li>
                <li><a href="user-login-v1.html"> Login / Register</a></li>
                <li><a href="user-login-v2.html"> Login / Register v2</a></li>
                <li><a href="user-session-timeout.html"> Session Timeout</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-basket"></i><span>eCommerce </span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="ecommerce-cart.html"> Shopping Cart</a></li>
                <li><a href="ecommerce-invoice.html"> Invoice</a></li>
                <li><a href="ecommerce-pricing-table.html"><span class="pull-right badge badge-success">5</span> Pricing Table</a></li>
              </ul>
            </li>
            <li class="nav-parent">
              <a href="#"><i class="icon-cup"></i><span>Extra </span><span class="fa arrow"></span></a>
              <ul class="children collapse">
                <li><a href="extra-fullcalendar.html"><span class="pull-right badge badge-primary">New</span> Fullcalendar</a></li>
                <li><a href="extra-widgets.html"> Widgets</a></li>
                <li><a href="page-coming-soon.html"> Coming Soon</a></li>
                <li><a href="extra-sliders.html"> Sliders</a></li>
                <li><a href="maps-google.html"> Google Maps</a></li>
                <li><a href="maps-vector.html"> Vector Maps</a></li>
                <li><a href="extra-translation.html"> Translation</a></li>
              </ul>
            </li>
          </ul>
          <!-- SIDEBAR WIDGET FOLDERS -->
          <div class="sidebar-widgets">
            <p class="menu-title widget-title">Folders <span class="pull-right"><a href="#" class="new-folder"> <i class="icon-plus"></i></a></span></p>
            <ul class="folders">
              <li>
                <a href="#"><i class="icon-doc c-primary"></i>My documents</a> 
              </li>
              <li>
                <a href="#"><i class="icon-picture"></i>My images</a> 
              </li>
              <li><a href="#"><i class="icon-lock"></i>Secure data</a> 
              </li>
              <li class="add-folder">
                <input type="text" placeholder="Folder's name..." class="form-control input-sm">
              </li>
            </ul>
          </div>
          <div class="sidebar-footer clearfix">
            <a class="pull-left footer-settings" href="#" data-rel="tooltip" data-placement="top" data-original-title="Settings">
            <i class="icon-settings"></i></a>
            <a class="pull-left toggle_fullscreen" href="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen">
            <i class="icon-size-fullscreen"></i></a>
            <a class="pull-left" href="user-lockscreen.html" data-rel="tooltip" data-placement="top" data-original-title="Lockscreen">
            <i class="icon-lock"></i></a>
            <a class="pull-left btn-effect" href="user-login-v1.html" data-modal="modal-1" data-rel="tooltip" data-placement="top" data-original-title="Logout">
            <i class="icon-power"></i></a>
          </div>
        </div>
      </div>
      <!-- END SIDEBAR -->
      <div class="main-content">
        <!-- BEGIN TOPBAR -->
        <div class="topbar">
          <div class="header-left">
            <div class="topnav">
              <a class="menutoggle" href="#" data-toggle="sidebar-collapsed"><span class="menu__handle"><span>Menu</span></span></a>
              <ul class="nav nav-icons">
                <li><a href="#" class="toggle-sidebar-top"><span class="icon-user-following"></span></a></li>
                <li><a href="mailbox.html"><span class="octicon octicon-mail-read"></span></a></li>
                <li><a href="#"><span class="octicon octicon-flame"></span></a></li>
                <li><a href="builder-page.html"><span class="octicon octicon-rocket"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="header-right">
            <ul class="header-menu nav navbar-nav">
              <!-- BEGIN USER DROPDOWN -->
              <li class="dropdown" id="language-header">
                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-globe"></i>
                <span>Language</span>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="#" data-lang="en"><img src="../assets/global/images/flags/usa.png" alt="flag-english"> <span>English</span></a>
                  </li>
                  <li>
                    <a href="#" data-lang="es"><img src="../assets/global/images/flags/spanish.png" alt="flag-english"> <span>Español</span></a>
                  </li>
                  <li>
                    <a href="#" data-lang="fr"><img src="../assets/global/images/flags/french.png" alt="flag-english"> <span>Français</span></a>
                  </li>
                </ul>
              </li>
              <!-- END USER DROPDOWN -->
              <!-- BEGIN NOTIFICATION DROPDOWN -->
              <li class="dropdown" id="notifications-header">
                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-bell"></i>
                <span class="badge badge-danger badge-header">6</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="dropdown-header clearfix">
                    <p class="pull-left">12 Pending Notifications</p>
                  </li>
                  <li>
                    <ul class="dropdown-menu-list withScroll" data-height="220">
                      <li>
                        <a href="#">
                        <i class="fa fa-star p-r-10 f-18 c-orange"></i>
                        Steve have rated your photo
                        <span class="dropdown-time">Just now</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-heart p-r-10 f-18 c-red"></i>
                        John added you to his favs
                        <span class="dropdown-time">15 mins</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-file-text p-r-10 f-18"></i>
                        New document available
                        <span class="dropdown-time">22 mins</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-picture-o p-r-10 f-18 c-blue"></i>
                        New picture added
                        <span class="dropdown-time">40 mins</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-bell p-r-10 f-18 c-orange"></i>
                        Meeting in 1 hour
                        <span class="dropdown-time">1 hour</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-bell p-r-10 f-18"></i>
                        Server 5 overloaded
                        <span class="dropdown-time">2 hours</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-comment p-r-10 f-18 c-gray"></i>
                        Bill comment your post
                        <span class="dropdown-time">3 hours</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                        <i class="fa fa-picture-o p-r-10 f-18 c-blue"></i>
                        New picture added
                        <span class="dropdown-time">2 days</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown-footer clearfix">
                    <a href="#" class="pull-left">See all notifications</a>
                    <a href="#" class="pull-right">
                    <i class="icon-settings"></i>
                    </a>
                  </li>
                </ul>
              </li>
              <!-- END NOTIFICATION DROPDOWN -->
              <!-- BEGIN MESSAGES DROPDOWN -->
              <li class="dropdown" id="messages-header">
                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-paper-plane"></i>
                <span class="badge badge-primary badge-header">
                8
                </span>
                </a>
                <ul class="dropdown-menu">
                  <li class="dropdown-header clearfix">
                    <p class="pull-left">
                      You have 8 Messages
                    </p>
                  </li>
                  <li class="dropdown-body">
                    <ul class="dropdown-menu-list withScroll" data-height="220">
                      <li class="clearfix">
                        <span class="pull-left p-r-5">
                        <img src="../assets/global/images/avatars/avatar3.png" alt="avatar 3">
                        </span>
                        <div class="clearfix">
                          <div>
                            <strong>Alexa Johnson</strong> 
                            <small class="pull-right text-muted">
                            <span class="glyphicon glyphicon-time p-r-5"></span>12 mins ago
                            </small>
                          </div>
                          <p>Lorem ipsum dolor sit amet, consectetur...</p>
                        </div>
                      </li>
                      <li class="clearfix">
                        <span class="pull-left p-r-5">
                        <img src="../assets/global/images/avatars/avatar4.png" alt="avatar 4">
                        </span>
                        <div class="clearfix">
                          <div>
                            <strong>John Smith</strong> 
                            <small class="pull-right text-muted">
                            <span class="glyphicon glyphicon-time p-r-5"></span>47 mins ago
                            </small>
                          </div>
                          <p>Lorem ipsum dolor sit amet, consectetur...</p>
                        </div>
                      </li>
                      <li class="clearfix">
                        <span class="pull-left p-r-5">
                        <img src="../assets/global/images/avatars/avatar5.png" alt="avatar 5">
                        </span>
                        <div class="clearfix">
                          <div>
                            <strong>Bobby Brown</strong>  
                            <small class="pull-right text-muted">
                            <span class="glyphicon glyphicon-time p-r-5"></span>1 hour ago
                            </small>
                          </div>
                          <p>Lorem ipsum dolor sit amet, consectetur...</p>
                        </div>
                      </li>
                      <li class="clearfix">
                        <span class="pull-left p-r-5">
                        <img src="../assets/global/images/avatars/avatar6.png" alt="avatar 6">
                        </span>
                        <div class="clearfix">
                          <div>
                            <strong>James Miller</strong> 
                            <small class="pull-right text-muted">
                            <span class="glyphicon glyphicon-time p-r-5"></span>2 days ago
                            </small>
                          </div>
                          <p>Lorem ipsum dolor sit amet, consectetur...</p>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown-footer clearfix">
                    <a href="mailbox.html" class="pull-left">See all messages</a>
                    <a href="#" class="pull-right">
                    <i class="icon-settings"></i>
                    </a>
                  </li>
                </ul>
              </li>
              <!-- END MESSAGES DROPDOWN -->
              <!-- BEGIN USER DROPDOWN -->
              <li class="dropdown" id="user-header">
                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <img src="../assets/global/images/avatars/user1.png" alt="user image">
                <span class="username">Hi, John Doe</span>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="#"><i class="icon-user"></i><span>My Profile</span></a>
                  </li>
                  <li>
                    <a href="#"><i class="icon-calendar"></i><span>My Calendar</span></a>
                  </li>
                  <li>
                    <a href="#"><i class="icon-settings"></i><span>Account Settings</span></a>
                  </li>
                  <li>
                    <a href="#"><i class="icon-logout"></i><span>Logout</span></a>
                  </li>
                </ul>
              </li>
              <!-- END USER DROPDOWN -->
              <!-- CHAT BAR ICON -->
              <li id="quickview-toggle"><a href="#"><i class="icon-bubbles"></i></a></li>
            </ul>
          </div>
          <!-- header-right -->
        </div>
        <!-- END TOPBAR -->
        <!-- BEGIN PAGE CONTENT -->
        <div class="page-content">
          <div class="header">
            <h2>Tables <strong>Dynamic</strong></h2>
            <div class="breadcrumb-wrapper">
              <ol class="breadcrumb">
                <li><a href="dashboard.html">Make</a>
                </li>
                <li><a href="tables.html">Tables</a>
                </li>
                <li class="active">Tables Dynamic</li>
              </ol>
            </div>
          </div>
          
          <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
          
          <div class="row">
            <div class="col-lg-12 portlets">
              <div class="panel">
                <div class="panel-header panel-controls">
                  <h3><i class="fa fa-table"></i> <strong>Hiding </strong> columns</h3>
                </div>
                <div class="panel-content">
                  <table class="table dataTable" id="table2">
                    <thead>
                      <tr>
                        <th class="sorting" tabindex="0" rowspan="1" colspan="1" style="width: 171px;">
                          Register No.
                        </th>
                      </tr>
                    </thead>
                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                      <c:forEach items="${sessionScope.aaa}" var="i" >
	                        <tr>
	                          <td class='hidden-480'>${i.reg_No}</td>
	                        </tr>
	                  </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="footer">
            <div class="copyright">
              <p class="pull-left sm-pull-reset">
                <span>Copyright <span class="copyright">©</span> 2015 </span>
                <span>THEMES LAB</span>.
                <span>All rights reserved. </span>
              </p>
              <p class="pull-right sm-pull-reset">
                <span><a href="#" class="m-r-10">Support</a> | <a href="#" class="m-l-10 m-r-10">Terms of use</a> | <a href="#" class="m-l-10">Privacy Policy</a></span>
              </p>
            </div>
          </div>
        </div>
        <!-- END PAGE CONTENT -->
      </div>
      <!-- END MAIN CONTENT -->
      
    </section>
    
    <!-- BEGIN PRELOADER -->
    <div class="loader-overlay">
      <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
      </div>
    </div>
    <!-- END PRELOADER -->
    <script src="../assets/global/plugins/jquery/jquery-1.11.1.min.js"></script>
    <script src="../assets/global/plugins/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script src="../assets/global/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>
    <script src="../assets/global/plugins/gsap/main-gsap.min.js"></script>
    <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/global/plugins/jquery-cookies/jquery.cookies.min.js"></script> <!-- Jquery Cookies, for theme -->
    <script src="../assets/global/plugins/jquery-block-ui/jquery.blockUI.min.js"></script> <!-- simulate synchronous behavior when using AJAX -->
    <script src="../assets/global/plugins/bootbox/bootbox.min.js"></script> <!-- Modal with Validation -->
    <script src="../assets/global/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script> <!-- Custom Scrollbar sidebar -->
    <script src="../assets/global/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script> <!-- Show Dropdown on Mouseover -->
    <script src="../assets/global/plugins/charts-sparkline/sparkline.min.js"></script> <!-- Charts Sparkline -->
    <script src="../assets/global/plugins/retina/retina.min.js"></script> <!-- Retina Display -->
    <script src="../assets/global/plugins/select2/select2.min.js"></script> <!-- Select Inputs -->
    <script src="../assets/global/plugins/icheck/icheck.min.js"></script> <!-- Checkbox & Radio Inputs -->
    <script src="../assets/global/plugins/backstretch/backstretch.min.js"></script> <!-- Background Image -->
    <script src="../assets/global/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js"></script> <!-- Animated Progress Bar -->
    <script src="../assets/global/plugins/charts-chartjs/Chart.min.js"></script>
    <script src="../assets/global/js/builder.js"></script> <!-- Theme Builder -->
    <script src="../assets/global/js/sidebar_hover.js"></script> <!-- Sidebar on Hover -->
    <script src="../assets/global/js/application.js"></script> <!-- Main Application Script -->
    <script src="../assets/global/js/plugins.js"></script> <!-- Main Plugin Initialization Script -->
    <script src="../assets/global/js/widgets/notes.js"></script> <!-- Notes Widget -->
    <script src="../assets/global/js/quickview.js"></script> <!-- Chat Script -->
    <script src="../assets/global/js/pages/search.js"></script> <!-- Search Script -->
    <!-- BEGIN PAGE SCRIPTS -->
    <script src="../assets/global/plugins/datatables/jquery.dataTables.min.js"></script> <!-- Tables Filtering, Sorting & Editing -->
    <script src="../assets/global/js/pages/table_dynamic.js"></script>
    <!-- END PAGE SCRIPTS -->
        <script src="../assets/admin/layout1/js/layout.js"></script>
  </body>

<!-- Mirrored from themes-lab.com/make/admin/layout1/tables-dynamic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Jun 2015 21:10:57 GMT -->
</html>
