<!DOCTYPE html>
<html lang="en">
	<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="TK-KK-HP">
    <meta name="author" content="TK-KK-HP">
    <link rel="shortcut icon" href="../assets/global/images/favicon.png" type="image/png">
    
    <title>Poniya Agency</title>
    
    <link href="../assets/global/css/style.css" rel="stylesheet">
    <link href="../assets/global/css/theme.css" rel="stylesheet">
    <link href="../assets/global/css/ui.css" rel="stylesheet">
    <link href="../assets/admin/layout1/css/layout.css" rel="stylesheet">
    
    <!-- BEGIN PAGE STYLE -->
    <link href="../assets/global/plugins/metrojs/metrojs.min.css" rel="stylesheet">
    <link href="../assets/global/plugins/maps-amcharts/ammap/ammap.min.css" rel="stylesheet">
    <!-- END PAGE STYLE -->
    
    <script src="../assets/global/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="../assets/global/js/pdf/jspdf.debug.js"></script>
        <script src="../assets/global/js/pdf/jquery-git.js"></script>
        
    <script>
    function demoFromHTML() {
		var tableId = document.getElementById("course");
		
		tableId.style.display = "";
		
			var pdf = new jsPDF('p', 'pt', 'letter');
	    // source can be HTML-formatted string, or a reference
	    // to an actual DOM element from which the text will be scraped.
	    source = $('#course')[0];
		
	    
	    // we support special element handlers. Register them with jQuery-style 
	    // ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
	    // There is no support for any other type of selectors 
	    // (class, of compound) at this time.
	    specialElementHandlers = {
	        // element with id of "bypass" - jQuery style selector
	        '#bypassme': function (element, renderer) {
	            // true = "handled elsewhere, bypass text extraction"
	            return true
	        }
	    };
	    margins = {
	        top: 20,
	        bottom: 20,
	        right:20,
	        width: 20,
	        left: 20
	    };
	    // all coords and widths are in jsPDF instance's declared units
	    // 'inches' in this case
	    pdf.fromHTML(
	    source, // HTML string or DOM elem ref.
	    margins.left, // x coord
	    margins.top, { // y coord
	        'width': 00, // max width of content on PDF
	        'elementHandlers': specialElementHandlers
	    },
	    
	
	    function (dispose) {
	        // dispose: object with X, Y of the last line add to the PDF 
	        //          this allow the insertion of new lines after html
	        pdf.save('Test.pdf');
	    }, margins);
	    tableId.style.display = "none";
	}
	</script>
	    
</head>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- BEGIN BODY -->
<body class="fixed-topbar fixed-sidebar theme-sdtl color-default dashboard">
	
	<section>
    	<!-- BEGIN SIDEBAR -->
      		<%@ include file="a_menu.jsp" %>
        <!-- END SIDEBAR -->
      
      	<div class="main-content">
	        <!-- BEGIN TOPBAR -->
	        	<%@ include file="a_header.jsp" %>
	        <!-- END TOPBAR -->
        
        	<!-- BEGIN PAGE CONTENT -->
        	<div class="page-content">
        		<div class="header">
            		<h2>Tables <strong>Dynamic</strong></h2>
            		
          		</div>
          
          		<div class="row">
            		<div class="col-lg-12 portlets">
              			<div class="panel">
                			<div class="panel-header panel-controls">
                  				<h3>
				                  	<i class="fa fa-table" style="font-size: 20px"></i> <strong style="font-size: 20px">List of Remaining Vehicles</strong> 
									<button onclick="javascript:demoFromHTML();" class="btn btn-dark btn-embossed">PDF</button>
									<form action="<%=request.getContextPath() %>/Login" method="post">
										<input type="hidden" value="import" name="flag">
										<input type="file" style="  display: -webkit-inline-box;margin: 0px 5px; float: left;">
										<input type="submit" class="btn btn-blue" value="Submit">
										
									</form> 
                  	             </h3>
                			</div>
                			<div class="panel-content">
                  				
                  				<div id="course" style="display: none;">
									<div>
										<table >
											<thead>
						                        <tr>
						                          <th class='hidden-350'>Appl</th>
						                          <th class='hidden-350'>Apac</th>
						                          <th class='hidden-350'>Party Name</th>
						                          <th class='hidden-1024'>Bucket</th>
						                          <th class='hidden-480'>No. of EMI O/S</th>
						                          <th class='hidden-480'>Chasis No.</th>
						                          <th class='hidden-480'>Engine No.</th>
						                          <th class='hidden-480'>Location</th>
						                          <th class='hidden-480'>Reg. No.</th>
						                          <th class='hidden-480'>Asset Category</th>
						                        </tr>
						                    </thead>
											<tbody>
						                        <c:forEach items="${sessionScope.alldata}" var="i" >
						                        	<tr>
							                          <td class="hidden-480">${i.appl }</td>
							                          <td class='hidden-480'>${i.apac }</td>
							                          <td class='hidden-480'>${i.party_Name }</td>
							                          <td class='hidden-480'>${i.bucket }</td>
							                          <td class='hidden-480'>${i.no_of_EMI_OS }</td>
							                          <td class='hidden-480'>${i.chasis_No }</td>
							                          <td class='hidden-480'>${i.engine_No }</td>
							                          <td class='hidden-480'>${i.location }</td>
							                          <td class='hidden-480'>${i.reg_No }</td>
							                          <td class='hidden-480'>${i.asset_Category}</td>
							                        </tr> 
							                    </c:forEach>
						                    </tbody>
										</table>
										
										<div class="center-block" id="header" style="margin-left: 200px">
											<b>Poniya Agency</b>
										</div>
									</div>
								</div>
			
            				      	<div class="filter-left" style="overflow-x:auto; "  id="course1">
				                    <table class="table table-dynamic table-tools"  id="table2">
				                      <thead>
				                        <tr>
				                          <th class='hidden-350'>Appl</th>
				                          <th class='hidden-350'>Apac</th>
				                          <th class='hidden-350'>Party Name</th>
				                          <th class='hidden-1024'>Bucket</th>
				                          <th class='hidden-480'>No. of EMI O/S</th>
				                          <th class='hidden-480'>Chasis No.</th>
				                          <th class='hidden-480'>Engine No.</th>
				                          <th class='hidden-480'>Location</th>
				                          <th class='hidden-480'>Reg. No.</th>
				                          <th class='hidden-480'>Asset Category</th>
				                          <th class='hidden-480'>Action</th>
				                        </tr>
				                      </thead>
				                      <tbody>
				                        <c:forEach items="${sessionScope.alldata}" var="i" >
				                        	<tr>
					                          <td class="hidden-480">${i.appl }</td>
					                          <td class='hidden-480'>${i.apac }</td>
					                          <td class='hidden-480'>${i.party_Name }</td>
					                          <td class='hidden-480'>${i.bucket }</td>
					                          <td class='hidden-480'>${i.no_of_EMI_OS }</td>
					                          <td class='hidden-480'>${i.chasis_No }</td>
					                          <td class='hidden-480'>${i.engine_No }</td>
					                          <td class='hidden-480'>${i.location }</td>
					                          <td class='hidden-480'>${i.reg_No }</td>
					                          <td class='hidden-480'>${i.asset_Category}</td>
					                          <td class='hidden-480'>
					                          	<a href="<%=request.getContextPath() %>/Login?flag=delete&regno=${i.reg_No }">
					                          		<button type="button" class="btn btn-danger btn-rounded">Delete</button>
					                          	</a>
					                          </td>
					                        </tr> 
					                        
					                    </c:forEach>
				                      </tbody>
				                    </table>
				                  </div>
				          	</div>
			     		</div>
			     	</div>
			   	</div>
			          
			    <div class="footer">
		            <div class="copyright">
			        	<p class="pull-left sm-pull-reset">
			                <span>Copyright <span class="copyright">�</span> 2015 </span>
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
    
    
    <!-- BEGIN SEARCH -->
    <div id="morphsearch" class="morphsearch">
      <form class="morphsearch-form">
        <input class="morphsearch-input" type="search" placeholder="Search..."/>
        <button class="morphsearch-submit" type="submit">Search</button>
      </form>
      <div class="morphsearch-content withScroll">
        <div class="dummy-column user-column">
          <h2>Users</h2>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/avatars/avatar1_big.png" alt="Avatar 1"/>
            <h3>John Smith</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/avatars/avatar2_big.png" alt="Avatar 2"/>
            <h3>Bod Dylan</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/avatars/avatar3_big.png" alt="Avatar 3"/>
            <h3>Jenny Finlan</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/avatars/avatar4_big.png" alt="Avatar 4"/>
            <h3>Harold Fox</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/avatars/avatar5_big.png" alt="Avatar 5"/>
            <h3>Martin Hendrix</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/avatars/avatar6_big.png" alt="Avatar 6"/>
            <h3>Paul Ferguson</h3>
          </a>
        </div>
        <div class="dummy-column">
          <h2>Articles</h2>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/1.jpg" alt="1"/>
            <h3>How to change webdesign?</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/2.jpg" alt="2"/>
            <h3>News From the sky</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/3.jpg" alt="3"/>
            <h3>Where is the cat?</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/4.jpg" alt="4"/>
            <h3>Just another funny story</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/5.jpg" alt="5"/>
            <h3>How many water we drink every day?</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/6.jpg" alt="6"/>
            <h3>Drag and drop tutorials</h3>
          </a>
        </div>
        <div class="dummy-column">
          <h2>Recent</h2>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/7.jpg" alt="7"/>
            <h3>Design Inspiration</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/8.jpg" alt="8"/>
            <h3>Animals drawing</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/9.jpg" alt="9"/>
            <h3>Cup of tea please</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/10.jpg" alt="10"/>
            <h3>New application arrive</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/11.jpg" alt="11"/>
            <h3>Notification prettify</h3>
          </a>
          <a class="dummy-media-object" href="#">
            <img src="../assets/global/images/gallery/12.jpg" alt="12"/>
            <h3>My article is the last recent</h3>
          </a>
        </div>
      </div>
      <!-- /morphsearch-content -->
      <span class="morphsearch-close"></span>
    </div>
    <!-- END SEARCH -->
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
<body>
