<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	<cfsilent>
		<cfscript>
			feed = $.getBean('feed').loadBy(name=$.component('articleListFeed')).setMaxItems($.component('articleListMaxItems'));
			it = feed.getIterator();
		</cfscript>
	</cfsilent>
	<section class="box-article-list">
		<cfif Len($.component('articleListHeading'))>
			<h2 class="fa fa-file-text-o">#HTMLEditFormat($.component('articleListHeading'))#</h2>
		</cfif>
		<cfif feed.getIsNew()>
			#$.dspNoFeedNotice()#
		<cfelseif it.hasNext()>
			<cfloop condition="#it.hasNext()#">
				<cfsilent>
					<cfset item = it.next() />
					<cfset img = $.getURLForImage(fileid=item.getValue('fileid'), size='homefeature2image') />
				</cfsilent>
				<article class="box-excerpt">
					<cfif YesNoFormat($.component('articleListShowImage')) and Len(img)> 
						<a href="#item.getValue('url')#" class="image image-left"><img src="#img#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" /></a>
					</cfif>
					<div>
						<header>
							<span class="date">#LSDateFormat(item.getValue('releasedate'), 'long')#</span>
							<h3><a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menutitle'))#</a></h3>
						</header>
						#$.setDynamicContent(item.getSummary())#
					</div>
				</article>
			</cfloop>
		<cfelse>
			#$.dspNoItemsNotice()#
		</cfif>
	</section>
</cfoutput>