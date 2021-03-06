   �      1http://chardev.org/js/engine/entities/Glyph.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:30:59 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "16f-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function Glyph( serialized ) {
	this.id = serialized[0];
	this.type = serialized[1];
	this.spell = serialized[2] ? new Spell(serialized[2]) : null;
	this.itemId = serialized[3];
}

Glyph.MAJOR = 0;
Glyph.MINOR = 1;
//Glyph.PRIME = 2;

Glyph.prototype = {
	id: 0, type: 0, spell: null, itemId: 0
};