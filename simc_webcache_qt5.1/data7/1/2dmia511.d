   �      5http://chardev.org/js/engine/entities/Shapeform.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "1e0-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function Shapeform( serialized ) {
	var i, s;
	//
	this.id = serialized[0];
	
	this.buffs = [];
	for( i=0; i<serialized[1].length; i++ ) {
		s = new Spell(serialized[1][i]);
		this.buffs.push(new Buff(s,1));
		SpellCache.set(s);
	}
	
	this.auras = [];
	for( i=0; i<serialized[2].length; i++ ) {
		this.auras.push(new Spell(serialized[2][i]));
	}
}

Shapeform.prototype = {
	buffs: [], auras: [], id:0
};