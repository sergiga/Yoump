   �      Ahttp://chardev.org/js/engine/entities/item/ItemRandomSuffix.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "289-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function ItemRandomSuffix( serialized ) {
	this.id = 0 - serialized[0];
	this.name = serialized[1];
	this.enchants = [];
	for( var j=0; j<5; j++) {
		if( serialized[2+j] ) {
			this.enchants[j] = new SpellItemEnchantment(serialized[2+j][1]);
			this.enchants[j].setValue(serialized[2+j][0]);
		}
		else {
			this.enchants[j] = null;
		}
	}
	this.serialized = serialized;
}
ItemRandomSuffix.prototype = new ItemRandomEnchantment;
/**
 * @returns {ItemRandomEnchantment}
 */
ItemRandomSuffix.prototype.clone = function() {
		return new ItemRandomSuffix(this.serialized);
};