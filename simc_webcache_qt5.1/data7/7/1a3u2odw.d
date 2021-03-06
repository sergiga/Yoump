   �      Jhttp://chardev.org/js/adapter/facades/AvailableItemRandomEnchantment.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "1e9-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {ItemRandomEnchantment} randomEnchant
 */
function AvailableItemRandomEnchantment( randomEnchant ) {
	this.id = randomEnchant.id;
	this.name = randomEnchant.name;
	
	this.description = "";
	for( var j=0; j<5; j++ ) {
		if( randomEnchant.enchants[j] ) {
			this.description += ( this.description ? ", " : "" ) + randomEnchant.enchants[j].description;
		}
	}
}

AvailableItemRandomEnchantment.prototype = {
	id: 0, name: "", description: ""
};