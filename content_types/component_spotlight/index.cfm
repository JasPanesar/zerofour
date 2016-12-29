<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	<cfsilent>
		<cfscript>
			feed = $.getBean('feed').loadBy(name=$.component('spotlightFeed')).setSortBy($.component('spotlightSortBy')).setSortDirection('asc').setMaxItems(1);
			it = feed.getIterator();
		</cfscript>
	</cfsilent>
	<section class="box-spotlight">
		<h2 class="fa fa-file-text-o">Spotlight</h2>
		<cfif feed.getIsNew()>
			#$.dspNoFeedNotice()#
		<cfelseif it.hasNext()>
			<cfloop condition="#it.hasNext()#">
				<cfsilent>
					<cfset item = it.next() />
					<cfset img = $.getURLForImage(fileid=item.getValue('fileid'), size='homespotlightimage') />
				</cfsilent>
				<article>
					<cfif Len(img)> 
						<a href="#item.getValue('url')#" class="image image-full"><img src="#img#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" /></a>
					</cfif>
					<header>
						<!--- <span class="spotlight-date">#LSDateFormat(item.getValue('releasedate'), 'long')#</span> --->
						<h3><a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menutitle'))#</a></h3>
						<cfif Len(item.getValue('credits'))>
							<span class="byline">#HTMLEditFormat(item.getValue('credits'))#</span>
						</cfif>
					</header>
					#$.setDynamicContent(item.getSummary())#
					<footer>
						<a href="#item.getValue('url')#" class="button alt fa fa-file-o">Continue Reading</a>
					</footer>
				</article>
			</cfloop>
		<cfelse>
			#$.dspNoItemsNotice()#
		</cfif>
	</section>
</cfoutput>