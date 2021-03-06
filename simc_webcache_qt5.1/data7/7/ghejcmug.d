   �      7http://chardev.org/js/adapter/facades/SocketedGem.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "21a-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param character
 * @param gem
 * @param socket
 */
function SocketedGem( character, gem, socket ) {
	this.__gem = gem;
	this.__socket = socket;
	this.__character = character;

	this.icon = gem.icon;
	this.id = gem.id;
	this.name = gem.name;
	this.quality = gem.quality;
}

SocketedGem.prototype = {
	__gem: null,
	__socket: 0,
	__character: null,

	icon: "",
	id: 0,
	quailty: 0,
	name: "",
	
	getTooltip: function() {
		return ItemTooltip.getHtml(this.__gem, this.__character);
	}
};