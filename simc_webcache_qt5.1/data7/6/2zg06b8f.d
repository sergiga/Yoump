   �      :http://chardev.org/js/common/NotImplementedException.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:30:59 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "142-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param className
 * @param methodName
 */
function NotImplementedException ( className, methodName ) {
	Error.call( this );
	this.message = "Called abstract method " + className + "::" + methodName;
	this.name = "NotImplementedException";
}

NotImplementedException.prototype = new Error;