   �      Bhttp://chardev.org/js/engine/entities/spell/SpellAuraOptions.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "11d-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function SpellAuraOptions( serialized ) {
	this.stacks = serialized[0];
	this.procRate = serialized[1];
	this.procCharges = serialized[2];
}
SpellAuraOptions.prototype = {
		stacks: 0,
		procRate: 0,
		procCharges: 0
};