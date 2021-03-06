   �      1http://chardev.org/js/common/ResponseObject.js?76�       �����     %{F(��              �      
     O K      Date   Wed, 07 May 2014 23:55:50 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "1df-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param data
 * @param jqXhr
 */
function ResponseObject( data, jqXhr ) {
	if( jqXhr.getResponseHeader("error")) {
		this._error = true;
	}
	else if( jqXhr.getResponseHeader("auto_redirect")) {
		window.location.href = data;
	}
	this._data = data;
}

ResponseObject.prototype = {
	_data: null, 
	_error: false,
	
	get: function() {
		if( this._error ) {
			throw new Error(this._data);
		}
		else {
			return this._data;
		}
	}
};