   �      5http://chardev.org/js/gui/list/ListBackEndProxy.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "3bc-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {string} baseURL
 */
function ListBackEndProxy( baseURL ) {
	this.baseURL = baseURL;
	
	this.callbackHandler = new Handler( this.callback, this);
}

ListBackEndProxy.prototype.requestURL = null;
ListBackEndProxy.prototype.baseURL = null;
ListBackEndProxy.prototype.callbackHandler = null;

/**
 * @param {List} list
 */
ListBackEndProxy.prototype.update = function( list ) {
	this.requestURL = this.baseURL+"?"+TextIO.urlEncode(ListBackEndProxy.getQueryObject(list));
	Ajax.get( this.requestURL, this.callbackHandler, [list, this.requestURL]);
};

ListBackEndProxy.getQueryObject = function( list ) {
	return {
		'a': list.getArgumentString(),
		'o': list.order+"."+(list.orderDirection==List.ORDER_ASC?'asc':'desc')+";",
		'p': list.page
	}; 
};

ListBackEndProxy.prototype.callback = function( data, list, url ) {
	if( url != this.requestURL ) {
		return;
	}
	
	list.setData( data );
};
