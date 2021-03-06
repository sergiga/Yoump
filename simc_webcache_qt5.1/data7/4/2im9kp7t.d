   �      @http://chardev.org/js/gui/character_sheet/PresenceSelector.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "542-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function PresenceSelector() {
	this.node = document.createElement('div');
	
	this.eventMgr = new GenericSubject();
	this.eventMgr.registerEvent('select_presence', ['presence_id']);
}
PresenceSelector.prototype = {
	node: null,
	eventMgr: null,
	addPopagator: function(event, propagator) {
		this.eventMgr.addPropagator(event, propagator);
	},
	update: function( availablePresences, currentPresenceId ) {
		Tools.removeChilds(this.node);
		
		if( availablePresences == null || availablePresences.length == 0 ) {
			return;
		}
		for( var i=0; i<availablePresences.length; i++ ) {
			
			var div = Dom.createAt( this.node, 'div', {
				'class': 'ps_presence', 
				'backgroundImage': 
					'/images/icons/' + 
					( availablePresences[i].id == currentPresenceId ? '' : 'g/' ) +  
					'small/'+availablePresences[i].icon+'.png'
			});
			
			Listener.add( div, "mouseover", Tooltip.show, Tooltip, ["<div class='tooltip_spell_description'>"+availablePresences[i].description+"</div>"] );
			div.onmouseout = function(){Tooltip.hide();};
			div.onmousemove = function(){Tooltip.move();};
			Listener.add( div, "click", function( id ) {
				this.eventMgr.fire('select_presence', {'presence_id': id});
			}, this, [availablePresences[i].id]	);
		}
		
		Tools.clearBoth(this.node);
	}
};