<mura>
	<extensions>
		<!---
			This file is part of the ZeroFour Mura CMS Theme
		--->
		<extension type="Component" subType="WithHeadingAndButtonLink">
			<attributeset name="Other Options" container="Basic">
				<attribute
					name="compHeading"
					label="Heading"
					hint=""
					type="textbox"
					defaultValue=""
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />
				<!-- Button Link -->
				<attribute
					name="compButtonLinkHref"
					label="Button Link URL (including http://)"
					hint="Enter a URL if you wish to add a button below the content"
					type="textbox"
					defaultValue=""
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />
				<attribute
					name="compButtonLinkText"
					label="Button Link Text"
					hint="Enter the button text to display if you wish to add a button below the content"
					type="textbox"
					defaultValue=""
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />
				<attribute
					name="compButtonIcon"
					label="Link Button Icon Class"
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
					name="compButtonStyle"
					label="Link Button Style"
					hint="Normal is blue, alternative is dark grey"
					type="radiogroup"
					defaultValue="normal"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="normal^alt"
					optionLabelList="Normal^Alternative" />
				<!-- // Button Link // -->
			</attributeset>
		</extension>
	</extensions>
</mura>
