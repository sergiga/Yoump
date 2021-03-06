   �      )http://chardev.org/js/common/Logger.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:30:59 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "1aa-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js var Logger = {};

((function () {
	if( ! window.console ) {
		throw Error("Unable to initialise logger, unsupported browser!");
	}
	
	Logger.error = function( str ) {
		window.console.error( str );
	};
	Logger.log = function( str ) {
		window.console.log( str );
	};
	Logger.info = function( str ) {
		window.console.info( str );
	};
	Logger.warn = function( str ) {
		window.console.warn( str );
	};
})());