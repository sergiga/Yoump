   �      @http://chardev.org/js/adapter/facades/SpecialisationFacade.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "219-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {CharacterSpecialisation} characterSpecialisation
 * @param {Character} character
 */
function SpecialisationFacade( characterSpecialisation, character ) {
	this.icon = characterSpecialisation.icon; 
	this.name = characterSpecialisation.name;
	this.description = characterSpecialisation.description.replace(/\$G(\w+)\:(\w+);/,"$1/$2");
	this.spell = new SpellFacade(characterSpecialisation.spell, character);
}

SpecialisationFacade.prototype = {
		icon: "",
		name: "",
		description: ""
};