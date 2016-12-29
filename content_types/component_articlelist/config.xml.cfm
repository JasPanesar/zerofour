<mura>
	<extensions>
		<!---
			This file is part of the ZeroFour Mura CMS Theme
		--->
		<extension type="Component" subType="ArticleList" hasBody="0">
			<attributeset name="Article List Info" container="Basic">
				<attribute
					name="articleListHeading"
					label="Article List Heading/Title"
					hint=""
					type="textbox"
					defaultValue="From The Blog"
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />
				<attribute
					name="articleListFeed"
					label="Article Listing Content Collection/Local Index Feed Name"
					hint="Enter the name of the Local Content Collection/Index to use"
					type="selectbox"
					defaultValue="[mura]ListFirst($.getLocalFeedNames(), '^')[/mura]"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="[mura]$.getLocalFeedNames()[/mura]"
					optionLabelList="[mura]$.getLocalFeedNames()[/mura]" />
				<attribute
					name="articleListShowImage"
					label="Show Associated Image?"
					hint=""
					type="radiogroup"
					defaultValue="true"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="true^false"
					optionLabelList="Yes^No" />
				<attribute
					name="articleListMaxItems"
					label="Max Items To Display"
					hint=""
					type="selectbox"
					defaultValue="3"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="1^2^3^4^5^6^7^8^9^10"
					optionLabelList="1^2^3^4^5^6^7^8^9^10" />
			</attributeset>
		</extension>
	</extensions>
</mura>
