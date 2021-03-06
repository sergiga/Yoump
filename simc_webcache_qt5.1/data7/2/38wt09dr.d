   �      2http://chardev.org/js/gui/list/StoredFilters.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "342-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function StoredFilters() {
	this._storedFilters = [];
	for( var i=0; i<Inventory.SLOTS; i++ ) {
		this._storedFilters[i] = "";
	}
}

StoredFilters.prototype = {
	_storedFilters: null,	
	replaceArgument: function( variable, replace ) {
		for( var i=0; i<Inventory.SLOTS; i++ ) {
			this._storedFilters[i] = this._storedFilters[i].replace(new RegExp("\\b"+variable+"\\.\\w+\\.[^;]+;","g"), "") + replace ;
		}
	},
	propagate: function( variable, args ) {
		var m = args.match(new RegExp("\\b"+variable+"\\.\\w+\\.[^;]+;","g"));
		if( m ) {
			this.replaceArgument(variable,m.join(""));
		}
		else {
			this.replaceArgument(variable,"");
		}
	},
	get: function( slot ) {
		return this._storedFilters[slot];
	},
	set: function( slot, arg ) {
		this._storedFilters[slot] = arg;
	}
};