<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="no-sidebar">

		<!-- Header Wrapper -->
		#$.dspThemeInclude('templates/inc/header.cfm')#
		
		<!-- Main Wrapper -->
		<div id="main-wrapper">

			<!-- Wrapper Style 2 -->
			<div class="main-wrapper-style2">
				<div class="inner">
					<div class="container">
						<div class="row">
							<div class="12u skel-cell-mainContent">
								<div id="content">

									<!-- Content -->
									#$.dspThemeInclude('templates/inc/body.cfm')#
							
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- // Wrapper Style 2 // -->

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>