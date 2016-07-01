   �      >http://chardev.org/js/engine/entities/spell/SpellScaling.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "15c-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function SpellScaling(serialized) {
	this.castTimeStart = serialized[0];
	this.castTimeEnd = serialized[1];
	this.intervals = serialized[2];
	this.distribution = serialized[3];
}
SpellScaling.prototype = {
	castTimeStart : 0,
	castTimeEnd : 0,
	intervals : 0,
	distribution : 0
};