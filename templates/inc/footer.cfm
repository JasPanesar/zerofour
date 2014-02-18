<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
		<!-- Article List + Spotlight -->
		<div class="main-wrapper-style3">
			<div class="inner">
				<div class="container">
					<div class="row">
						<!-- Article List -->
						<div class="8u">
							#$.dspComponent('[ Footer ] Article List')#
						</div>
						<!-- Spotlight -->
						<div class="4u">
							#$.dspComponent('[ Footer ] Spotlight')#
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- // Article List + Spotlight // -->
	</div>
	<!-- // Main Wrapper // -->

	<!-- Footer Wrapper -->
	<div id="footer-wrapper">
		<footer id="footer" class="container">
			<div class="row">
				<!-- RSS Feed -->
				<div class="3u">
					#$.dspComponent('[ Footer ] RSS Feed')#
				</div>
				<!-- Links -->
				<div class="3u">
					<section>
						#$.dspComponent('[ Footer ] Links')#
					</section>
				</div>
				<div class="6u">
					<!-- About -->
					<section>
						#$.dspComponent('[ Footer ] About')#
					</section>
					<!-- Contact -->
					<section>
						#$.dspComponent('[ Footer ] Get in touch')#
					</section>
				</div>
			</div>
			<div class="row">
				<div class="12u">
					<!--
						To stay within the license agreement with the original theme author, 
						you must give credit for the design to HTML5 UP (http://html5up.net) 
					-->
					<div id="copyright">
						&copy; #Year(Now())# #HTMLEditFormat($.siteConfig('site'))#. All rights reserved 
						| Images: <a href="http://fotogrph.com">fotogrph</a> 
						| Design: <a href="http://html5up.net">HTML5 UP</a> 
						| Powered by: <a href="http://www.getmura.com">Mura CMS</a>
					</div>
				</div>
			</div>
		</footer>
		<!-- // Footer // -->
	</div>
	<!-- // Footer Wrapper // -->
</body>
</html>
</cfoutput>