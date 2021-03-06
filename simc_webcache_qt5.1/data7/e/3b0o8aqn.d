   �      +http://chardev.org/js/common/Listener.js?76�       �����     %{F(��              �      
     O K      Date   Wed, 07 May 2014 23:55:50 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "3dc-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js  /**
 * @author LeMartin
 */
var Listener = {
	/**
	 * @param {Element|HTMLDocument|Window} node
	 * @param {string} event
	 * @param {Function} callback
	 * @param {Object} scope
	 * @param {Array} args
	 */
	add : function(node, event, callback, scope, args)
	{
		var scopedHandler = function( ev )
		{
			if ( args ) 
			{
				callback.apply(scope,args);
			}
			else 
			{
				callback.apply(scope,[ev]);
			}
		};
		
		if (document.addEventListener)  {
			node.addEventListener(event, scopedHandler, false);
		}
		else if (document.attachEvent) {
			node.attachEvent("on" + event, scopedHandler);
		}
	},
	/**
	 * 
	 * @param node
	 * @param event
	 * @param {Handler} handler
	 * @param args
	 */
	addHandler : function( node, event, handler, args ) {
		if (document.addEventListener)  {
			node.addEventListener(event, function(){handler.notify(args);}, false);
		}
		else if (document.attachEvent) {
			node.attachEvent("on" + event, function(){handler.notify(args);});
		}
	}
};
