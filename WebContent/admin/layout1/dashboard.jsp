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
        		<div class="row">
            		<div class="col-lg-12 portlets">
              			<div class="panel">
                			<div class="panel-header panel-controls">
                  				<h2>Dash<strong>Board</strong></h2>
                			</div>
                			<div class="panel-content">
                  				<%-- <div class="filter-left" style="overflow-x:auto;padding: 10px "  id="course1">
				                	<div class="col-md-offset-4 col-md-4 " style="height: 300px;box-shadow:0px 0px 5px 1px #252525;padding: 10px;border-radius:10px;overflow: auto;">
				                   		<c:set var="s" value=""/>
				                   		
				                   		<c:forEach items="${sessionScope.chat_msg}" var="i" >
				                    		<c:choose>
				                    			<c:when test="${i.sender==s }">
				                    				<div style="border-radius:10px;width: 60%;float: right;margin: 10px;padding: 5px;background-color: rgba(255,0,0,0.2)">
				                    					<div style="font-size: 11px;float:right;">${i.sender }</div>
				                    					<div style="clear:both;font-size: 20px;float:right;">${i.msg }</div>
				                    					<div style="clear:both;font-size: 9px;float:right;">${i.time }</div>
				                    				</div>
				                    			</c:when>
				                    			<c:otherwise>
				                    				<div style="border-radius:10px;width: 60%;float: left;margin: 10px;padding: 5px;background-color: rgba(0,255,0,0.2)">
				                    					<div style="font-size: 11px;float:left;">${i.sender }</div>
				                    					<div style="clear:both;font-size: 20px;float:left;">${i.msg }</div>
				                    					<div style="clear:both;font-size: 9px;float:left;">${i.time }</div>
				                    				</div>
				                    			</c:otherwise>
				                    		</c:choose>
				                    		
					               		</c:forEach>
				                	</div>
				                	<div  class="col-md-offset-4 col-md-4 " style="clear: both;padding: 3px;box-shadow:0px 0px 5px 1px #252525;border-radius:10px;margin-top:5px">
				                		<div>
				                			<form action="<%=request.getContextPath()%>/Login" method="post">
					                			<input type="text" name="msg" style="padding:3px;;width:84%;float: left;height: 26px;border-radius:8px;border:1px solid rgba(0,0,0,0.2);margin: 1px;">
					                			<input type="hidden" name="flag" value="chat">
					                			<input type="hidden" name="sender" value="admin">
					                			<input type="submit"  onclick="javascript:demoFromHTML();" class="btn btn-dark btn-embossed" style="padding: 0pc 7px 2px;margin:0px;height: 28px" value="Send">
											</form>
					                	</div>	
				                	</div>
				                </div> --%>
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
	        </div>
	        <!-- END PAGE CONTENT -->
      	</div>
      	<!-- END MAIN CONTENT -->
	</section>
    
    <!-- BEGIN SEARCH -->
    	<%@ include file="a_popup.jsp" %>
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
    
    <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a> 
    <!-- SCRIPT -->
    	<%@ include file="a_script.jsp" %>
    	
    <!-- END SCRIPT -->

</body>
</html>

