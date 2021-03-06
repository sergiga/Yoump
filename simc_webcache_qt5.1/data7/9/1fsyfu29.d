   �      2http://chardev.org/js/events/GenericObserver.js?76�       �����     %{F(��              �      
     O K      Date   Wed, 07 May 2014 23:55:49 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "403-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} eventsToListenTo
 * @param {Handler} handler
 */
function GenericObserver( eventsToListenTo, handler ) {
	if( eventsToListenTo == null || handler == null ) {
		return null;
	}
	
	if( typeof eventsToListenTo !== 'object' ) {
		throw new Error("Given events to listen to are not the correct type!");
	}
	
	for( var k in eventsToListenTo ) {
		if( typeof eventsToListenTo[k] !== 'string' ) {
			throw new Error("The event "+eventsToListenTo[k]+" on index "+k+" is not of the type string!");
		}
	}
	if( ! ( handler instanceof Handler ) ) {
		throw new Error("Given handler is not an instance of handler!");
	}

	this.events = eventsToListenTo;
	this.handler = handler;
}
GenericObserver.prototype = {
	events: {},
	handler: null,
	listensTo: function( event ) {
		for( var k in this.events ) {
			if( this.events[k] === event ) {
				return true;
			}
		}
		return false;
	},
	notify: function( e ) {
		
		this.handler.notify([e]);
		e.check();
	}
};