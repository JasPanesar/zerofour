<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<extension type="Component" subType="Spotlight" hasBody="0">
	<attributeset name="Spotlight Info" container="Basic">
		<attribute 
			name="spotlightFeed"
			label="Spotlight Content Collection/Local Index Feed Name"
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
			name="spotlightSortBy"
			label="Sort By"
			hint=""
			type="radiogroup"
			defaultValue="random"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="random^releasedate"
			optionLabelList="Random^Official Release Date" />
	</attributeset>
</extension>