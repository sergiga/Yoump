   �      :http://chardev.org/js/adapter/static/ProfilesAdapter.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "478-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function ProfilesAdapter() {
	this.profileList = new ProfileList();
	this.profileList.gui.showFilter(true);
	//
	var plHandler = new Handler(function( e ){
		if( e.is('update')) {
			new ListBackEndProxy("/api/profiles.php").update(this.profileList);
		}
		else if( e.is('delete') ) {
			
			if( ! confirm("Do you really want to delete the character profile '"+e.get('desc')+"'?")) {
				return;
			}
			Ajax2.post("/api/profile.php", {'action': 'delete', 'id': e.get('profile_id')}, function( obj ) {
				try {
					obj.get();
					this.profileList.update();
				}
				catch( e ) {
					Tooltip.showError(e);
				}
			}, this);
		}
		else if( e.is("click")) {
			var entity = e.get("entity");
			window.location.href = entity[8];
		}
	}, this);
	//
	var plObserver = new GenericObserver([
		'update', 'delete'
	], plHandler);
	//
	this.profileList.addObserver(plObserver);
}
ProfilesAdapter.prototype = {
		/**
		 * @type {ProfileList}
		 */
		profileList: null,
		/**
		 * @returns {HTMLElement}
		 */
		getNode: function() {
			return this.profileList.gui.node;
		}
};