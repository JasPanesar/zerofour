<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="left-sidebar">

		<!-- Header Wrapper -->
		#$.dspThemeInclude('templates/inc/header.cfm')#
		
		<!-- Main Wrapper -->
		<div id="main-wrapper">
			<div class="main-wrapper-style2">
				<div class="inner">
					<div class="container">
						<div class="row">
							<div class="4u">
								<div id="sidebar">

									<!--- Left Column Content Objects --->
									#$.dspObjects(1)#

								</div>
							</div>
							<div class="8u skel-cell-mainContent">
								<div id="content">

									<!--- Content --->
									#$.dspThemeInclude('templates/inc/body.cfm')#

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>