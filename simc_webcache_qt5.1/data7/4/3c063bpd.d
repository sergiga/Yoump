   �      =http://chardev.org/js/adapter/ImportInterfaceController.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "554-4d9ca3f4d56fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {ImportInterface} importInterface
 * @param {CharacterGuiAdapter} adapter
 */
function ImportInterfaceController( importInterface, adapter ) {
	this.importInterface = importInterface;
	this.adapter = adapter;
	
	this.importInterface.addObserver(new GenericObserver(["import"], new Handler(this.importInterfaceHandler, this)));
}

ImportInterfaceController.prototype = {
		importInterface: null,
		adapter: null,
		/**
		 * @param {GenericEvent} e
		 */
		importInterfaceHandler: function( e ) {
			if( e.is("import")) {
				try {
					CharacterIO.readFromArmory(e.get("name"), e.get("realm"), e.get("region"), new Handler(function( character, exception ) {
						if ( exception != null ) {
							Tooltip.showError(exception);
						}
						else {
							this.adapter.character.load(character);
							
							//TODO unwind!
							this.adapter.gui.folder.show(Gui.TAB_CHARACTER_SHEET);
							
							Tooltip.enable();
						}
					}, this ));

					Tooltip.showLoading();
				}
				catch( ex ) {
					Tooltip.showError(ex);
				}
			}
		},
		/**
		 * @param {Array} storedImports
		 */
		setStoredImports: function( storedImports ) {
			this.importInterface.setStoredImports( storedImports );
		},
		setRegion: function( region ) {
			this.importInterface.setRegion(region);
		}
};