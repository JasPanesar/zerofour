<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>						
	<article>

		<!--- Title + Credits (byline) --->	
		<header class="major">
			<h2>#HTMLEditFormat($.content('title'))#</h2>
			<cfif Len($.content('credits'))>
				<span class="byline">
					#HTMLEditFormat($.content('credits'))#
				</span>
			</cfif>
		</header>

		<!--- Breadcrumbs --->
		<nav>#$.dspCrumbListLinks(separator='&nbsp;/&nbsp;&nbsp;')#</nav>
		
		<!--- Primary Associated Image --->					
		<cfset img = $.getURLForImage(fileid=$.content('fileid'), size='bodyimage') />
		<cfif Len(img)>
			<span class="image image-full">
				<img src="#img#" alt="#HTMLEditFormat($.content('title'))#" />
			</span>
		</cfif>

		<!--- Content --->
		<!--- 
			For information on dspBody(), visit:
			http://docs.getmura.com/v6/front-end/template-variables/document-body/
		--->
		#$.dspBody(
			body=$.content('body')
			, pageTitle=''
			, crumbList=false
			, showMetaImage=false
		)#

	</article>

	<!--- Main Content Display Objects --->
	#$.dspObjects(2)#

</cfoutput>