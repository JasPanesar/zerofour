<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="right-sidebar">

		<!-- Header Wrapper -->
		#$.dspThemeInclude('templates/inc/header.cfm')#
		
		<!-- Main Wrapper -->
		<div id="main-wrapper">
			<div class="main-wrapper-style2">
				<div class="inner">
					<div class="container">
						<div class="row">
							<div class="8u">
								<div id="content skel-cell-mainContent">

									<!-- Content -->
									#$.dspThemeInclude('templates/inc/body.cfm')#
							
								</div>
							</div>
							<div class="4u">
								<div id="sidebar">

									<!--- Right Column Display Objects --->
									#$.dspObjects(3)#

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>