   �      2http://chardev.org/js/gui/widgets/LayeredDiv.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "21b-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {number} layers
 */
function LayeredDiv(layers) {
	if( layers > 0 ) {
		this.layers = [];
		
		this.layers[0] = document.createElement("div");
		this.layers[0].style.position = "relative";
		
		for(var i = 1; i < layers; i++ ) {
			this.layers[i] = document.createElement("div");
			this.layers[i].style.position = "absolute";
			this.layers[i].style.zIndex = i; 
			this.layers[0].appendChild(this.layers[i]);
		}
	}
}

LayeredDiv.prototype = {
	/** @type {Array} **/	
	layers: null
};