   �      *http://chardev.org/js/common/Handler.js?76�       �����     %{F(��              �      
     O K      Date   Wed, 07 May 2014 23:55:50 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "1af-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Function} handler
 * @param {Object} scope
 */
function Handler ( handler, scope ) {
	this.handler = handler;
	this.scope = scope;
}

/**
 * @type {Function}
 */
Handler.prototype.handler = null;
/**
 * @type {Object}
 */
Handler.prototype.scope = null;

/**
 * @param {Array} args
 */
Handler.prototype.notify = function ( args ) {
	this.handler.apply( this.scope, args );
};