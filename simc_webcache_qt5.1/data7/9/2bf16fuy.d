   �      /http://chardev.org/js/events/GenericEvent.js?76�       �����     %{F(��              �      
     O K      Date   Wed, 07 May 2014 23:55:49 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "59a-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {string} event
 * @param {Object} keyValuePairs
 * @param {GenericSubject} subject
 * @param {GenericObserver} observer
 */
function GenericEvent( event, keyValuePairs, subject, observer ) {
	this.__kvps = keyValuePairs;
	this.event = event;
	this.subject = subject;
	this.observer = observer;
}
GenericEvent.DEBUG = true;
GenericEvent.prototype = {
	event: "",
	__kvps: {},
	subject: null,
	observer: null,
	handled: false,
	/**
	 * @param {string} key
	 */
	get: function( key ) {
		if( ! this.__kvps.hasOwnProperty(key) ) {
			throw new Error("The key "+key+" is not defined for this event!");
		}
		
		return this.__kvps[key];
	},
	getArgs: function() {
		return this.__kvps;
	},
	/**
	 * @param {string} event
	 */
	is: function( event ) {
		if( GenericEvent.DEBUG ) {
			if( ! this.subject.isRegisteredEvent(event) ) {
				throw new Error("The event "+event+" is not registered for the subject!");
			}
			if( ! this.observer.listensTo(event) ) {
				throw new Error("The event "+event+" is not registered for the observer!");
			}
			if( this.event === event ) {
				this.handled = true;
				return true;
			}
			else {
				return false;
			}
		}
		else {
			return this.event === event;
		}
	},
	check: function() {
		if( GenericEvent.DEBUG && ! this.handled ) {
			throw new Error("Event "+this.event+" was not handled!");
		}
	}
};
