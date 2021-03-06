   �      Chttp://chardev.org/js/engine/entities/item/ItemRandomProperty.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "259-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function ItemRandomProperty( serialized ) {
	this.id = serialized[0];
	this.name = serialized[1];
	this.enchants = [];
	for( var j=0; j<5; j++) {
		if( serialized[2+j] ) {
			this.enchants[j] = new SpellItemEnchantment(serialized[2+j]);
		}
		else {
			this.enchants[j] = null;
		}
	}
	this.serialized = serialized;
}
ItemRandomProperty.prototype = new ItemRandomEnchantment;
/**
 * @returns {ItemRandomEnchantment}
 */
ItemRandomProperty.prototype.clone = function() {
		return new ItemRandomProperty(this.serialized);
};
