   �      =http://chardev.org/js/engine/entities/spell/SpellLevels.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "11f-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function SpellLevels( serialized ) {
	this.baseLevel = serialized[0];
	this.maximumLevel = serialized[1];
	this.spellLevel = serialized[2];
}

SpellLevels.prototype = {
	baseLevel: 0, 
	maximumLevel: 0,
	spellLevel: 0
};