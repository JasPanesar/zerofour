<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	<extension type="Page" subType="Home" hasSummary="0" hasBody="0" hasAssocFile="0" iconClass="icon-home">

		<attributeset name="Home Page Header" container="Basic">

			<!-- Header Background Image -->
				<attribute 
					name="headerBackgroundImage"
					label="Header Background Image"
					hint="This is the background image used throughout the site."
					type="file"
					defaultValue=""
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />

			<attribute 
				name="homeHeaderHeading"
				label="Main Header Heading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeHeaderSubheading"
				label="Main Header Subheading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeHeaderButtonText"
				label="Subheading Button Text/Label"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeHeaderButtonLink"
				label="Subheading Button Link"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeHeaderButtonIcon"
				label="Subheading Link Button Icon Class"
				hint="Use any Font Awesome Icon Class (http://fontawesome.io/icons/)"
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeHeaderButtonStyle"
				label="Subheading Link Button Style"
				hint="Normal is blue, alternative is dark grey"
				type="radiogroup"
				defaultValue="normal"
				required="false"
				validation=""
				regex=""
				message=""
				optionList="normal^alt"
				optionLabelList="Normal^Alternative" />
		</attributeset>
		<!-- // Home Header // -->

		<attributeset name="Home Page Features 1 Area" container="Basic">
			<!-- Feature 1 Heading : homeFeature1Heading (textbox) -->
			<attribute 
				name="homeFeature1Heading"
				label="Feature 1 Heading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />

			<!-- Feature 1 Subheading : homeFeature1Subheading (textbox) -->
			<attribute 
				name="homeFeature1Subheading"
				label="Feature 1 Subheading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />

			<!-- Feature 1 Feed : homeFeature1Feed (selectbox - feed?) -->
			<attribute 
				name="homeFeature1Feed"
				label="Feature 1 Content Collection/Local Index Feed Name"
				hint="Enter the name of the Local Content Collection/Index to use to populate the Feature 1 area of the home page"
				type="selectbox"
				defaultValue="[mura]ListFirst($.getLocalFeedNames(), '^')[/mura]"
				required="false"
				validation=""
				regex=""
				message=""
				optionList="[mura]$.getLocalFeedNames()[/mura]"
				optionLabelList="[mura]$.getLocalFeedNames()[/mura]" />

			<!-- Feature 1 Body : homeFeature1Body -->
			<attribute 
				name="homeFeature1Body"
				label="Feature 1 Body"
				hint="Body/content to appear below feed"
				type="htmleditor"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
		</attributeset>
		<!-- // Home Features 1 Area // -->

		<attributeset name="Home Features 2 Left Box" container="Basic">
			<attribute 
				name="homeFeature2LeftHeading"
				label="Feature 2 Left Heading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2LeftSubheading"
				label="Feature 2 Left Subheading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2LeftBody"
				label="Feature 2 Left Body"
				hint=""
				type="htmleditor"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2LeftButtonText"
				label="Feature 2 Left Button Text"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2LeftButtonLink"
				label="Feature 2 Left Button Link"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2LeftButtonIcon"
				label="Feature 2 Left Button Icon Class"
				hint="Use any Font Awesome Icon Class (http://fontawesome.io/icons/)"
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2LeftButtonStyle"
				label="Feature 2 Left Button Style"
				hint="Normal is blue, alternative is dark grey"
				type="radiogroup"
				defaultValue="normal"
				required="false"
				validation=""
				regex=""
				message=""
				optionList="normal^alt"
				optionLabelList="Normal^Alternative" />
		</attributeset>
		<!-- // Home Features 2 Left Box -->

		<attributeset name="Home Features 2 Right Box" container="Basic">
			<attribute 
				name="homeFeature2RightHeading"
				label="Feature 2 Right Heading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2RightSubheading"
				label="Feature 2 Right Subheading"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2RightBody"
				label="Feature 2 Right Body"
				hint=""
				type="htmlEditor"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2RightButtonText"
				label="Feature 2 Right Button Text"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2RightButtonLink"
				label="Feature 2 Right Button Link"
				hint=""
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2RightButtonIcon"
				label="Feature 2 Right Button Icon Class"
				hint="Use any Font Awesome Icon Class (http://fontawesome.io/icons/)"
				type="textbox"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
			<attribute 
				name="homeFeature2RightButtonStyle"
				label="Feature 2 Right Button Style"
				hint="Normal is blue, alternative is dark grey"
				type="radiogroup"
				defaultValue="normal"
				required="false"
				validation=""
				regex=""
				message=""
				optionList="normal^alt"
				optionLabelList="Normal^Alternative" />
		</attributeset>
		<!-- // Home Features 2 Right Box // -->
	</extension>
</cfoutput>