<!---
	This file is part of the ZeroFour Mura CMS Theme
--->
<cfoutput>
	<section>
		<cfif Len($.component('rssFeedHeading'))>
			<h2>#HTMLEditFormat($.setDynamicContent($.component('rssFeedHeading')))#</h2>
		</cfif>
		<cffeed source="#$.component('rssFeedLink')#" query="rs" />
		<cfset it = $.getBean('beanIterator').setQuery(rs) />
		<cfset maxItems = Val($.component('rssFeedMaxItems')) />
		<ul class="style2">
			<cfif it.hasNext()>
				<cfloop condition="it.hasNext()">
					<cfset item = it.next()>
					<li> 
						<h4 class="rss-title">
							<a href="#item.getValue('rsslink')#">
								#HTMLEditFormat(item.getValue('title'))#
							</a>
						</h4>
						<cfif YesNoFormat($.component('rssFeedShowPubDate')) and IsDate(item.getValue('publisheddate'))>
							<div class="rss-pubdate">
								#$.convertFeedDateTime(item.getValue('publisheddate'))#
							</div>
						</cfif>
						<cfif YesNoFormat($.component('rssFeedShowSummary'))>
							#item.getValue('content')#
						</cfif>
					</li>
					<cfif it.getRecordIndex() eq maxItems>
						<cfbreak />
					</cfif>
				</cfloop>
			<cfelse>
			  #$.dspNoItemsNotice()#
			</cfif>
		</ul>
	</section>
</cfoutput>