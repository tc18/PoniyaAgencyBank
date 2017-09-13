<div class="sidebar">
        	<div class="logopanel">
          		<h1>
            		<a href="dashboard.html"></a>
          		</h1>
        	</div>
        	
        	<div class="sidebar-inner">
          		<div class="sidebar-top">
            		<!-- <form action="http://themes-lab.com/make/admin/layout1/search-result.html" method="post" class="searchform" id="search-results">
              			<input type="text" class="form-control" name="keyword" placeholder="Search...">
            		</form> -->
            		<%	String un1=(String)session.getAttribute("username");
						System.out.println("---------- datasheet : "+un1);	%>
						
		            <div class="userlogged clearfix">
		              	<i class="icon icons-faces-users-01"></i>
		              	<div class="user-details">
		                	<h4><%out.print(un1); %></h4>
		                	<!-- <div class="dropdown user-login">
		                  		<button class="btn btn-xs dropdown-toggle btn-rounded" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" data-delay="300">
		                  			<i class="online"></i><span>Available</span><i class="fa fa-angle-down"></i>
		                  		</button>
		                  		<ul class="dropdown-menu">
				                    <li><a href="#"><i class="busy"></i><span>Busy</span></a></li>
				                    <li><a  href="#"><i class="turquoise"></i><span>Invisible</span></a></li>
				                    <li><a href="#"><i class="away"></i><span>Away</span></a></li>
				               	</ul>
		                	</div> -->
		              	</div>
		            </div>
		    	</div>
          
          		<div class="menu-title">
            		Navigation 
            		<div class="pull-right menu-settings">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" data-delay="300"> 
						
						</a>
						
		            </div>
          		</div>
          
          		<ul class="nav nav-sidebar">
        			<li class=" nav-active"><a href="dashboard.jsp"><i class="icon-home"></i><span>Dashboard</span></a></li>
           			<li class="nav-parent">
		              	<a href="#"><i class="fa fa-car"></i><span>Manage Vehicles</span> <span class="fa arrow"></span></a>
		              	<ul class="children collapse">
		                	<li><a href="list_datasheet.jsp">Add Vehicles</a></li>
		                	<li><a href="list_update.jsp">Updated List</a></li>
		                	<li><a href="list_busted.jsp">Busted List</a></li>
		              	</ul>
		           	</li>
		           	<li class="nav-parent">
		              	<a href="#"><i class="fa fa-ambulance"></i><span>Manage Agencies</span> <span class="fa arrow"></span></a>
		              	<ul class="children collapse">
		                	<li><a href="list_agencies.jsp">List Agencies</a></li>
		                	<li><a href="add_agencies.jsp">Add Agencies</a></li>
		              	</ul>
		           	</li>
		           	<li class=" nav-active"><a href="msg_admin.jsp"><i class="icon-home"></i><span>Response</span></a></li>
           			
          		</ul>
          
          
          <div class="sidebar-footer clearfix">
            <!-- <a class="pull-left footer-settings" href="#" data-rel="tooltip" data-placement="top" data-original-title="Settings">
            <i class="icon-settings"></i></a> -->
            <a class="pull-left toggle_fullscreen" href="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen">
            <i class="icon-size-fullscreen"></i></a>
            <!-- <a class="pull-left" href="user-lockscreen.html" data-rel="tooltip" data-placement="top" data-original-title="Lockscreen">
            <i class="icon-lock"></i></a> -->
            <a class="pull-left btn-effect" href="<%=request.getContextPath() %>/Login?flag=logout&sender=admin" data-modal="modal-1" data-rel="tooltip" data-placement="top" data-original-title="Logout">
            <i class="icon-power"></i></a>
          </div>
        </div>
      </div>