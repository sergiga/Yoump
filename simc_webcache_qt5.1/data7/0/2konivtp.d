   �      Ehttp://chardev.org/js/adapter/SpecialisationInterfaceController.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "586-4d9ca3f4d56fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {SpecialisationInterface} specialisationInterface
 * @param {CharacterGuiAdapter} adapter
 */
function SpecialisationInterfaceController( specialisationInterface, adapter ) {
	this.specialisationInterface = specialisationInterface;
	this.adapter = adapter;
	
	this.adapter.character.addObserver(new GenericObserver([
        "class_change", "specialisation_change"
    ], new Handler( this._characterHandler, this)));
	
	this.specialisationInterface.addObserver(new GenericObserver([
        "click"
    ], new Handler( this._interfaceHandler, this)));
}

SpecialisationInterfaceController.prototype = {
		specialisationInterface: null,
		adapter: null,
		/**
		 * @param {GenericEvent} e
		 */
		_characterHandler: function( e ) {
			if( e.is("class_change")) {
				var cl = e.get("class");
				var facades = null;
				if( cl ) {
					facades = [];
					for( var i=0; i<cl.specs.length; i++ ) {
						facades.push(new SpecialisationFacade(cl.specs[i], this.adapter.character));
					}
				}
				this.specialisationInterface.update(facades);
			}
			else if( e.is("specialisation_change")) {
				this.specialisationInterface.select(e.get("index"));
			}
		},
		/**
		 * @param {GenericEvent} e
		 */
		_interfaceHandler: function( e ) {
			if( e.is("click")) {
				this.adapter.character.setSpecialisation(e.get("index"));
			}
		}
};
