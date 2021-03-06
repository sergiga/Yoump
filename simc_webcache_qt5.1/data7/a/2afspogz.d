   �      =http://chardev.org/js/gui/list/profile_list/ProfileList.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:03 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "3df-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function ProfileList() {
	this.profileListGui = new ProfileListGui(List.toCategories(ProfileList.FILTER_DATA));
	List.call( 
		this,
		this.profileListGui,
		List.toPlainFilterData(ProfileList.FILTER_DATA),
		['ismine'],
		ProfileList.ORDER_ID
	);
	
	this.eventMgr.registerEvent('delete', ['profile_id', 'desc']);
	this.gui.eventMgr.addPropagator('delete', this.eventMgr);
}

ProfileList.FILTER_DATA = {};

ProfileList.FILTER_DATA["none"] = [
   new SingleSelectFilterData( locale['F_MyProfiles'], 'ismine', FILTER_YES_NO_OPTIONS ),
   new SingleSelectFilterData( locale['F_ShowDeleted'], 'showdeleted', FILTER_YES_NO_OPTIONS ),
   new InputFilterData( locale['F_CharacterLevel'], 'lvl', InputFilterData.TYPE_NUMERIC )
];

ProfileList.ORDER_ID = 'id';
ProfileList.prototype = new List(null,null,null,"");
ProfileList.prototype.profileListGui = null;
ProfileList.prototype.setPlanner = function(b) {
	this.profileListGui.setPlanner(b);
};