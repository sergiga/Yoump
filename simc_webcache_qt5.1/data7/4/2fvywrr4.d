   �      -http://chardev.org/js/gui/widgets/Input.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "160-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function Input(  ) {
	this.node = document.createElement("input");
	this.node.className = "input";
}

Input.prototype = new SimpleUserControl;

Input.prototype.node = null;

Input.prototype.setValue = function( v ) {
	this.node.value = v;
};

Input.prototype.getValue = function() {
	return this.node.value;
};