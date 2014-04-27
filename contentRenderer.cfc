/*
	This file is part of the ZeroFour Mura CMS Theme
*/
component extends="mura.cfobject" output="false" {

	/*
			This is the THEME contentRenderer.cfc

			* Add theme-specific methods here
			* Any methods here will be accessible with the following notation:
				$.yourFunctionName()
	*/

	// contentRenderer settings
		// GENERAL 
			this.jsLib = 'jquery';
			this.jsLibLoaded = true;
			this.suppressWhitespace = false;
			this.showInlineEditor=true;

		// nav
			this.ulTopClass = 'style2';
		
		// headings
			this.headline = 'h1';
			this.subHead1 = 'h2';
			this.subHead2 = 'h3';
			this.subHead3 = 'h4';
			this.subHead4 = 'h5';


		// buttons
			this.customButtonClass = 'button';
			this.customButtonClassAlt = 'button alt';

			this.searchResultWrapperClass='';
			this.searchResultsRowClass='';
			this.searchResultsMoreResultsRowClass='';
			this.searchAgainRowClass='';
			this.searchFormSubmitClass=this.customButtonClass;
			this.searchAgainSubmitClass=this.customButtonClass;
			this.loginWrapperClass='';
			this.formButtonClass=this.customButtonClass;
			this.commentSubmitButtonClass=this.customButtonClass;
			this.formBuilderSubmitClass=this.customButtonClass;
			this.loginFormSubmitClass=this.customButtonClass;
			this.mailingListSubmitClass=this.customButtonClass;
			this.userToolsLoginFormSubmitClass=this.customButtonClass;
			this.notRegisteredLinkClass=this.customButtonClass;
			this.editProfileExtAttributeDownloadButtonClass=this.customButtonClass;
			this.editProfileSubmitButtonClass=this.customButtonClass;
			this.userToolsLoginFormSubmitClass=this.customButtonClass;
			this.userToolsNotRegisteredLinkClass=this.customButtonClass;
			this.userToolsEditProfileLinkClass=this.customButtonClass;
			this.userToolsLogoutLinkClass=this.customButtonClassAlt;


	// custom theme methods

		public any function getSectionTitle() {
			var path = variables.$.content('path');
			var topSectionID = ListLen(path) > 1 ? ListGetAt(path, 2) : '';
			return Len(topSectionID)
				? variables.$.getBean('content').loadBy(contentid=topSectionID).getTitle()
				: '';
		}


	// class extension specific methods
		// helper for RSS Feeds
			public any function convertFeedDateTime(string httpDateTime) {
				return IsDate(arguments.httpDateTime) 
					? LSDateFormat(ParseDateTime(arguments.httpDateTime), 'long')
					: 'invalid';
			}


		// used to populate the homeFeature1Feed and componentSpotlight selectbox class extension
			public any function getLocalFeeds() {
				return variables.$.getBean('feedManager').getFeeds(siteid=variables.$.event('siteid'), type='local');
			}

			public any function getLocalFeedNames() {
				var rs = getLocalFeeds();
				return rs.getRecordcount() 
					? ValueList(rs.name, '^') 
					: 'No Content Collections Exist!';
			}

		public any function getHomeBean() {
			return variables.$.getBean('content').loadby(filename='');
		}

		public string function dspBackgroundImage() {
			var img = variables.$.getURLForImage(fileid=getHomeBean().getValue('headerBackgroundImage'), size='headerbackgroundimage');
			return Len(img) 
				? '<style>##header-wrapper{background:url(' & img & ') top center;size:cover;}</style>'
				: '';
		}

	// Helper
		public any function dspComponent(string componentid) {
			var bean = IsValid('uuid', arguments.componentid)
				? variables.$.getBean('content').loadBy(contentid=arguments.componentid)
				: variables.$.getBean('content').loadBy(title=arguments.componentid, type='Component');

			return !bean.getIsNew() 
				? variables.$.dspObject('component', bean.getContentID())
				: '';
		}

		public any function dspNoFeedNotice(feedName='') {
			return '<h3>The #HTMLEditFormat(arguments.feedName)# Content Collection Does Not Exist</h3><p>Go to <strong>Modules &gt; Content Collections</strong> and create it!</p>';
		}

		public any function dspNoItemsNotice() {
			return '<h3>No items exist yet.</h3>';
		}

}