   �      3http://chardev.org/js/gui/CharacterPlannerGui.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "297-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function CharacterPlannerGui() {

	this.characterInterface = new CharacterInterface();
	
	Dom.append(Dom.createAt("planner_parent", 'div', {'class': 'ci_p'}),this.characterInterface.node);
	this.guiParent = Dom.createAt("planner_parent", "div", {});
	
	Dom.addClass("mtf_p", "cp_mm_p ix_center");
}

CharacterPlannerGui.prototype = {
	characterInterface: null,
	guiParent: null,
	/**
	 * @param {Gui} gui
	 */
	setGui: function( gui ) {
		
		if(gui) {
			Dom.set("mtf_p", gui.folder.menu);
			Dom.set(this.guiParent, gui.node);
		}
		else {
			Dom.truncate("mtf_p");
			Dom.truncate(this.guiParent);
		}
	}
};