   �      >http://chardev.org/js/engine/entities/item/GemProperties.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "14b-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param serialized
 */
function GemProperties ( serialized ) {
	this.enchant = new SpellItemEnchantment( serialized[0]);
	this.reqItemLevel = serialized[1];
}
/** @type {SpellItemEnchantment} */
GemProperties.prototype.enchant = null;
/** @type {number} */
GemProperties.prototype.reqItemLevel = 0;