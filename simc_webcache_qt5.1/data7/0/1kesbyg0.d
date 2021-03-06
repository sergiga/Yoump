   �      9http://chardev.org/js/adapter/facades/AvailableBuff.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "304-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {string} name
 * @param {string} icon
 * @param {Character} character
 * @param {Spell} spell
 */
function AvailableBuff( name, icon,  spell, character ) {
	this.spell = new SpellFacade(spell, character);
	this.name = name;
	this.icon = icon;
}

AvailableBuff.fromItem = function( itm, character ) {
	if( itm.spells[0] != null && itm.spells[0].getTriggeredSpell() ) {
		return new AvailableBuff(
			itm.name,
			itm.icon,
			itm.spells[0].getTriggeredSpell(),
			character
		);
	}
	else {
		return null;
	}
};

AvailableBuff.fromSpell = function( spell, character ) {
	return new AvailableBuff( spell.name, spell.icon, spell, character);
};

AvailableBuff.prototype = {
	spell: null,
	name: "",
	icon: ""
};