<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
<!DOCTYPE HTML>
<!--
	ZeroFour 2.5 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat($.content('title'))#</title>
		<meta name="description" content="#HTMLEditFormat($.content('metaDesc'))#" />
		<meta name="keywords" content="#HTMLEditFormat($.content('metaKeywords'))#" />
		<link rel="icon" href="#$.siteConfig('assetPath')#/images/favicon.ico" type="image/x-icon" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800" rel="stylesheet" type="text/css" />

		<!-- Mura CSS -->
		<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.6.1.1.min.css" />
		<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.6.1.1.skin.css" />

		<!--- jQuery --->
		<script src="#$.siteConfig('themeAssetPath')#/js/jquery.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/jquery.dropotron.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/config.js"></script>

		<script>// skelJS uses JS to load CSS
			window._skel_config.prefix = '#$.siteConfig('themeAssetPath')#/css/style';
		</script>

		<script src="#$.siteConfig('themeAssetPath')#/js/skel.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/skel-panels.min.js"></script>
		<noscript>
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/skel-noscript.css" />
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style.css" />
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 9]><link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><script src="#$.siteConfig('themeAssetPath')#/js/html5shiv.js"></script><link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/ie8.css" /><![endif]-->
		<!--[if lte IE 7]><link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/ie7.css" /><![endif]-->

		<!-- Custom CSS (overrides to theme + Mura styling) -->
		<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/extended.css" />
		<!-- Custom JavaScript -->
		<script src="#$.siteConfig('themeAssetPath')#/js/extended.js"></script>

		#$.dspBackgroundImage()#
	</head>
</cfoutput>