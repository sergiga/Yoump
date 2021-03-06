   �      6http://chardev.org/js/adapter/facades/ActiveBuff.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "21e-4d9ca3f4d56fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Buff} buff
 * @param {Character} characterScope
 */
function ActiveBuff ( buff, characterScope) {
	this.__buff = buff;
	this.__characterScope = characterScope;
	this.id = buff.spell.id;
	this.icon = buff.spell.icon;
	this.stackable = buff.stackable;
}
ActiveBuff.prototype = {
	id: -1, icon: "", stackable: false, __buff: null,
	getStacks: function() {
		return this.__buff.stacks;
	},
	getTooltip: function() {
		return SpellTooltip.getHtml( this.__buff.spell, this.__characterScope);
	}
};