   �      <http://chardev.org/js/engine/entities/spell/SpellPower.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "109-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function SpellPower( serialized ) {
	this.type = serialized[0];
	this.absolute = serialized[1];
	this.relative = serialized[2];
}

SpellPower.prototype = {
		type: 0,
		absolute: 0,
		relative: 0
};