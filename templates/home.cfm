<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

 	<body class="homepage">

		<!-- Header Wrapper -->
		#$.dspThemeInclude('templates/inc/header.cfm')#

		<!-- Main Wrapper -->
			<div id="main-wrapper">
				<!-- Wrapper Style 1 -->
					<div class="main-wrapper-style1">
						<div class="inner">
							<!-- Feature 1 -->
								<section class="container box-feature1">
									<!-- Feature 1 Headings -->
										<cfif Len($.content('homeFeature1Heading'))>
											<div class="row">
												<div class="12u">
													<header class="first major">
														<h2>#$.renderEditableAttribute(attribute='homeFeature1Heading', label='Feature 1 Heading')#</h2>
														<cfif Len($.content('homeFeature1Subheading'))>
															<span class="byline">#$.renderEditableAttribute(attribute='homeFeature1Subheading', label='Feature 1 Subheading')#</span>
														</cfif>
													</header>
												</div>
											</div>
										</cfif>
									<!-- // Feature 1 Headings -->

									<!-- Feature 1 Features -->
										<cfsilent>
											<cfscript>
												feed = $.getBean('feed').loadBy(name=$.content('homeFeature1Feed')).setMaxItems(3).setNextN(3);
												it = feed.getIterator();
											</cfscript>
										</cfsilent>
										<cfif feed.getIsNew()>
											#$.dspNoFeedNotice()#
										<cfelseif it.hasNext()>
											<!--- Feed DOES exist + has items --->
												<div class="row">									
													<cfloop condition="it.hasNext()">
														<cfset item = it.next() />
														<div class="4u">
															<section>
																<cfif Len($.getURLForImage(item.getValue('fileid')))>
																	<span class="image image-full">
																		<a href="#item.getValue('url')#">
																			<img src="#$.getURLForImage(fileid=item.getValue('fileid'), size='homefeature1image')#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" />
																		</a>
																	</span>
																</cfif>
																<header class="second fa fa-file-text-o">
																	<h3><a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menuTitle'))#</a></h3>
																	<cfif Len(item.getValue('credits'))>
																		<span class="byline">#HTMLEditFormat(item.getValue('credits'))#</span>
																	</cfif>
																</header>
															</section>
														</div>
													</cfloop>
												</div>
										<cfelse>
											#$.dspNoItemsNotice()#
										</cfif>
									<!-- // Feature 1 Features // -->

									<!-- Home Page Main Content Area -->
										<cfif Len($.content('homeFeature1Body'))>
											<div class="row">
												<div class="12u">
													<!--- Content --->
													<cfset thisBody = $.setDynamicContent($.content('homeFeature1Body')) />
													#$.dspBody(bodyattribute='homeFeature1Body')#
													<!--- Main Content Display Objects --->
													#$.dspObjects(2)#
												</div>
											</div>
										</cfif>
									<!-- // Home Page Main Content Area // -->
								</section>
							<!-- // Feature 1 // -->
						</div>
					</div>
				<!-- // Wrapper Style 1 // -->

				<!-- Wrapper Style 2 -->
					<div class="main-wrapper-style2">
						<div class="inner">	
							<!-- Feature 2 -->
								<div class="container box-feature2">
									<div class="row">
										<!-- Home Feature 2 Left -->
											<div class="6u">
												<section>
													<cfif Len($.content('homeFeature2LeftHeading'))>
														<header class="major">
															<h2>#$.renderEditableAttribute(attribute='homeFeature2LeftHeading', label='Feature 2 Left Heading')#</h2>
															<cfif Len($.content('homeFeature2LeftSubheading'))>
																<span class="byline">
																	#$.renderEditableAttribute(attribute='homeFeature2LeftSubheading', label='Feature 2 Left Subheading')#
																</span>
															</cfif>
														</header>
													</cfif>
													<cfif Len($.content('homeFeature2LeftBody'))>
														#$.renderEditableAttribute(attribute='homeFeature2LeftBody', label='Feature 2 Left Body', type='htmlEditor')#
													</cfif>
													<cfif Len($.content('homeFeature2LeftButtonLink'))>
														<footer>
															<a class="button #$.content('homeFeature2LeftButtonStyle')# medium fa #$.content('homeFeature2LeftButtonIcon')#" href="#$.content('homeFeature2LeftButtonLink')#">#HTMLEditFormat($.content('homeFeature2LeftButtonText'))#</a>
														</footer>
													</cfif>
												</section>
											</div>
										<!-- // Home Feature 2 Left -->

										<!-- Home Feature 2 Right -->
											<div class="6u">
												<section>
													<cfif Len($.content('homeFeature2RightHeading'))>
														<header class="major">
															<h2>#$.renderEditableAttribute(attribute='homeFeature2RightHeading', label='Feature 2 Right Heading')#</h2>
															<cfif Len($.content('homeFeature2RightSubheading'))>
																<span class="byline">
																	#$.renderEditableAttribute(attribute='homeFeature2RightSubheading', label='Feature 2 Right Subheading')#
																</span>
															</cfif>
														</header>
													</cfif>
													#$.renderEditableAttribute(attribute='homeFeature2RightBody', label='Feature 2 Right Body', type='htmlEditor')#
													<cfif Len($.content('homeFeature2RightButtonLink'))>
														<footer>
															<a class="button #$.content('homeFeature2RightButtonStyle')# medium fa #$.content('homeFeature2RightButtonIcon')#" href="#$.content('homeFeature2RightButtonLink')#">#HTMLEditFormat($.content('homeFeature2RightButtonText'))#</a>
														</footer>
													</cfif>
												</section>
											</div>
										<!-- // Home Feature 2 Right -->
									</div>

								</div>
							<!-- // Feature 2 -->
						</div>
					</div>
				<!-- // Wrapper Style 2 -->
	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>