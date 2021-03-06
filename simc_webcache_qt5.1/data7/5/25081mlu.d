   �      <http://chardev.org/js/gui/widgets/FilterableCollection.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "4ae-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Object} map
 * @param {Element} parent
 */
function FilterableCollection( map, parent ) {
	this.map = {};
	if( map ) {
		for( var key in map ) {
			this.map[key] = map[key];
		}
	}
	this.parent = parent;
	this.filterControl = document.createElement("input");
	Listener.add(this.filterControl, "change", this.__onFilterChange, this, []);
	Listener.add(this.filterControl, "keyup", this.__onFilterChange, this, []);
	Listener.add(this.filterControl, "blur", this.__onFilterChange, this, []);
}

FilterableCollection.prototype = {
		/** @type {Object} **/
		_map: null,
		/** @type {Element} **/
		_parent: null,
		/** @type {Element} **/
		_filterControl: null,
		/**
		 * @param {string} key
		 */
		filter: function( key ) {
			Tools.removeChilds(this.parent);
			for( var k in this.map ) {
				if( !key || new RegExp(key,"i").exec(k) ) {
					this.parent.appendChild(this.map[k]);
				}
			}
		},
		showAll: function() {
			Tools.removeChilds(this.parent);
			for( var k in this.map ) {
				this.parent.appendChild(this.map[k]);
			}
		},
		__onFilterChange: function() {
			this.filter(this.filterControl.value);
		}
};