   �      8http://chardev.org/js/adapter/facades/EquippedItem.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "8dd-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Character} character
 * @param {Item} itm
 * @param {number} slot
 */
function EquippedItem ( character, itm, slot ) {
	this.id=itm.id,
	this.icon=itm.icon; 
	this.name=itm.name; 
	this.quality=itm.quality;
	this.slot=slot;
	this.__character = character;
	this.__itm = itm;
	this.socketColors = itm.socketColors;
	
	this.availableRandomEnchantments = null;
	this.selectedRandomEnchantment = null;
	if( itm.randomEnchants != null ) {
		this.availableRandomEnchantments = [];
		for( var i=0; i<itm.randomEnchants.length; i++) {
			this.availableRandomEnchantments.push(new AvailableItemRandomEnchantment(itm.randomEnchants[i]));
		}
		
		if( itm.selectedRandomEnchantment != null ) {
			this.selectedRandomEnchantment = new AvailableItemRandomEnchantment(itm.selectedRandomEnchantment);
		}
	}
	
	this.reducedStat = itm.reducedStat;
	this.reducedStatValue = itm.reducedStatValue;
	this.addedStat = itm.addedStat;
	this.addedStatValue = itm.addedStatValue;
}
EquippedItem.prototype = {
	__itm: null, 
	__character: null,
	
	icon: "",  
	id: 0, 
	invalid: false,
	name: "",
	quality: -1,
	extraSocket: "",
	slot: 0,
	socketColors: [],
	selectedRandomEnchantment: null,
	availableRandomEnchantments: [],
	
	reducedStat: -1,
	reducedStatValue: 0,
	addedStat: -1,
	addedStatValue: 0,
	
	getTooltip: function() {
		return ItemTooltip.getHtml( this.__itm, this.__character);
	},
	getShortTooltip: function() {
		return ItemTooltip.getShortHTML( this.__itm, this.__character);
	},
	isInvalid: function() {
		return !this.__character.canWear(this.__itm) || 
			!this.__character.fitsItemClassRequirements(this.__itm) ||
            !this.__character.fitsLevelRequirements(this.__itm);
	},
	hasExtraSocket: function() {
		return this.__character.hasBlacksmithingSocket(this.slot);
	},
	getStatValue: function( stat ) {
		return this.__itm.getStatValue(stat);
	},
	isReforgable: function() {
		return this.__itm.isReforgable();
	},
	/**
	 * @param socket
	 * @returns {SocketedGem}
	 */
	getGem: function(socket) {
		var gem = this.__itm.gems[socket];
		if( gem ) {
			return new SocketedGem( this.__character, gem, socket );
		}
		else {
			return null;
		}
	}
};