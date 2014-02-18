<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
			<div id="header-wrapper">
				<div class="container">
					<div class="row">
						<div class="12u">
						
							<!-- Header -->
							<header id="header">
								<div class="inner">

									<!-- Logo -->
									<h1>
										<a href="#$.createHREF(filename='')#" id="logo">
											#HTMLEditFormat($.siteConfig('site'))#
										</a>
									</h1>

									<!-- Nav -->
									<cf_CacheOMatic key="dspPrimaryNav#$.content('contentid')#">
										<nav id="nav">
											<!--- 
												For information on dspPrimaryNav(), visit:
												http://docs.getmura.com/v6/front-end/template-variables/document-body/
											--->
											#$.dspPrimaryNav(
												viewDepth=1
												, id='navPrimary'
												, class=''
												, displayHome='always'
												, closeFolders=true 
												, showCurrentChildrenOnly=false
												, liHasKidsClass='dropdown'
												, liHasKidsAttributes=''
												, liCurrentClass='current_page_item'
												, liCurrentAttributes=''
												, liHasKidsNestedClass='dropdown-submenu'
												, aHasKidsClass='dropdown-toggle'
												, aHasKidsAttributes=''
												, aCurrentClass=''
												, aCurrentAttributes=''
												, ulNestedClass='dropdown-menu'
												, ulNestedAttributes=''
												, aNotCurrentClass=''
												, siteid=$.event('siteid')
											)#
										</nav>
									</cf_CacheOMatic>

								</div>
							</header>

							<!-- Banner -->
							<cfif $.content('filename') eq ''>

								<div id="banner">
									<cfif Len($.content('homeHeaderHeading'))>
										<h2>#$.renderEditableAttribute(attribute='homeHeaderHeading', label='Heading')#</h2>
									</cfif>
									<!--- making the subheading editable messes up the formatting when logged in --->
									<cfif Len($.content('homeHeaderSubheading'))>
										<p>#HTMLEditFormat($.content('homeHeaderSubheading'))#</p>
									</cfif>
									<cfif Len($.content('homeHeaderButtonText'))>
										<a href="#$.content('homeHeaderButtonLink')#" class="button big #$.content('homeHeaderButtonStyle')# fa #$.content('homeHeaderButtonIcon')#">
											#HTMLEditFormat($.content('homeHeaderButtonText'))#
										</a>
									</cfif>
								</div>

							</cfif>
							<!-- // Banner // -->

						</div>
					</div>
				</div>
			</div>
</cfoutput>