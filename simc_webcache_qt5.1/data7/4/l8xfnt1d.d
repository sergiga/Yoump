   �      1http://chardev.org/js/gui/widgets/TabFolder.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "377-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Object} childNodes
 * @param linkNames
 * @param cssClass
 */
function TabFolder( childNodes, linkNames, cssClass ) {
	
	this.__folder = new StackedDiv(childNodes.length);
	this.__menu = new Menu(linkNames, cssClass, this.show, this);
	
	this.node = this.__folder.node;
	this.menu = this.__menu.node;
	for( var i=0; i<childNodes.length; i++ ) {
		this.__folder.items[i].appendChild(childNodes[i]);
	}
}
TabFolder.prototype = {
	menu: null, node: null, shown: 0, __menu: null, __folder: null,
	onChangeHandler: null,
	setOnChangeHandler: function( handler ) {
		this.onChangeHandler = handler;
	},
	show: function( index ) {
		var old = this.shown;
		
		this.shown = index;
		this.__folder.show(index);
		this.__menu.select(index);
		
		if( this.onChangeHandler ) {
			this.onChangeHandler.notify( [index, old] );
		}
	}
};