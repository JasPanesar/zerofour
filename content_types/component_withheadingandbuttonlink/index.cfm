<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	<section>
		<cfif Len($.component('compHeading'))>
			<header class="major">
				<h2>#HTMLEditFormat($.setDynamicContent($.component('compHeading')))#</h2>
			</header>
		</cfif>
		#$.setDynamicContent($.component('body'))#
		<cfif Len($.component('compButtonLinkHref'))>
			<footer>
				<cfset buttonIcon = Len($.component('compButtonIcon')) and $.component('compButtonIcon') neq 'none' ? 'fa ' & $.component('compButtonIcon') : '' />
				<cfset buttonStyle = $.component('compButtonStyle') eq 'alt' ? 'alt' : '' />
				<a href="#$.component('compButtonLinkHref')#" class="button #buttonStyle# #buttonIcon#"><cfif Len($.component('compButtonLinkText'))>#HTMLEditFormat($.component('compButtonLinkText'))#<cfelse>Find out more</cfif></a>
			</footer>
		</cfif>
	</section>
</cfoutput>