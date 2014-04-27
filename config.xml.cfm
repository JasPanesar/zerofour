<!--
	This file is part of the ZeroFour Mura CMS Theme

	Notes:
		* Custom Image Sizes + Class Extensions required for this theme.
-->
<theme>

	<imagesizes>
		<imagesize name="homefeature1image" width="367" height="217" />
		<imagesize name="homefeature2image" width="180" height="167" />
		<imagesize name="homespotlightimage" width="367" height="168" />
		<imagesize name="bodyimage" width="783" height="294" />
			<!-- used for the header background image -->
		<imagesize name="headerbackgroundimage" width="1400" height="651" />
	</imagesizes>

	<extensions>
		<cfinclude template="class_extensions/definitions/pageHome.cfm" />
		<cfinclude template="class_extensions/definitions/componentRSSFeed.cfm" />
		<cfinclude template="class_extensions/definitions/componentSpotlight.cfm" />
		<cfinclude template="class_extensions/definitions/componentArticleList.cfm" />
		<cfinclude template="class_extensions/definitions/componentWithHeadingAndButtonLink.cfm" />
	</extensions>

</theme>