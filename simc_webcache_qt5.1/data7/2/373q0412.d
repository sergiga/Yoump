   �      Ahttp://chardev.org/js/engine/entities/NoGlyphSlotsException.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "da-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function NoGlyphSlotsException () {
	Error.call(this);
	this.message = "Unable to add Glyph, there are no empty slots available!";
}

NoGlyphSlotsException.prototype = new Error();


