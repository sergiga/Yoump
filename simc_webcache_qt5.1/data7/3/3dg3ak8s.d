   �      9http://chardev.org/js/gui/widgets/editable/Editable.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "329-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function Editable() {
	this.node = document.createElement("div");
	
	this.eventMgr = new GenericSubject();
	this.eventMgr.registerEvent('change', ['data']);
}

Editable.prototype = {
	node: null,
	disabled: false,
	isReadOnly: false,
	eventMgr: null,
	setData: function( data ) {
		throw new NotImplementedException('Editable','setData');
	},
	getData: function() {
		throw new NotImplementedException('Editable','getData');
	},
	readOnly: function( b ) {
		this.isReadOnly = b;
	},
	addObserver: function( observer ) {
		this.eventMgr.addObserver(observer);
	}
};

/**
 * @param v
 */
Editable.formatValue = function( v ) {
	return v ? "<a href=\"javascript:;\" title=\"Click to edit\">" + v + "</a>" : "<span class='ui_data_nothing'>None</span>";
};