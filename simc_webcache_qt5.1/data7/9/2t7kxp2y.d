   �      Dhttp://chardev.org/js/engine/entities/spell/SpellEquippedItems.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "120-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function SpellEquippedItems ( serialized ) {
	this.classId = serialized[0];
	this.slotMask = serialized[1];
	this.subClassMask = serialized[2];
}
SpellEquippedItems.prototype = {
		classId: 0, slotMask: 0, subClassMask: 0
};