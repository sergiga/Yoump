   �      3http://chardev.org/js/gui/widgets/Collapsable.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "353-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function Collapsable() {
	this.node = document.createElement("div");
	this.header = document.createElement("div");
	this.content = document.createElement("div");
	
	this.node.appendChild(this.header);
	this.node.appendChild(this.content);
	
	this.header.onselectstart = function(){return false;};
	this.header.onmousedown = function(){return false;};
	Listener.add(this.header,"click",this.toggle,this,[]);
	
	this.collapse();
}

Collapsable.prototype = {
	node: null, content: null, header: null, shown: null, 
	collapse: function() {
		this.content.style.display = "none";
		this.shown = false;
	},
	expand: function() {
		this.content.style.display = "block";
		this.shown = true;
	},
	toggle: function() {
		if( this.shown ) {
			this.collapse();
		}
		else {
			this.expand();
		}
	}
};