   �      2http://chardev.org/js/gui/widgets/StackedDiv.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "414-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param size
 */
function StackedDiv( size ) {
	this.items = [];
	this.node = document.createElement("div");
	for( var i = 0; i < size; i++ ) {
		this.items[i] = document.createElement("div");
		this.items[i].style.display = ( i == 0 ? "block" : "none" );
		this.items[i].style.width = "100%";
		this.items[i].style.height = "100%";
		this.node.appendChild(this.items[i]);
	}
	this.shown = 0;
}

StackedDiv.prototype = { 
	/** @type{Array} **/
	items: null, 
	/** @type{Element} **/
	node: null, 
	/** @type{number} **/
	shown: 0, 
	/** @type{Handler} **/
	onChangeHandler: null,
	
	show: function( index ) {
		if( index == this.shown ) {
			return;
		}
		var old = this.shown;
		this.items[index].style.display = "block";
		this.items[old].style.display = "none";
		this.shown = index;
		if( this.onChangeHandler ) {
			this.onChangeHandler.notify([index,old]);
		}
	},
	
	setOnChangeHandler: function(handler, scope){
		this.onChangeHandler = new Handler(handler, scope);
	}
};