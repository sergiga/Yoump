   �      5http://eu.battle.net/wow/static/css/lightbox.css?v=37     %|� h��     %|��-0              �      
     O K   
   Date   Wed, 07 May 2014 23:54:05 GMT   Server   Apache   X-Frame-Options   
SAMEORIGIN   Last-Modified   Tue, 06 May 2014 18:25:34 GMT   Accept-Ranges   bytes   Cache-Control   max-age=86400   Expires   Thu, 08 May 2014 23:54:05 GMT   Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   text/css /* container */
#lightbox-anchor { position:absolute; top:10%; left:0; z-index: 9005; width:100%; }
#lightbox-container { width:890px; height:641px; position:relative; display:none; margin:0 auto; background-color:#000; }
#lightbox-container .ui-element { background:url(../images/layout/lightbox/ui.png) no-repeat; }
.ie6 #lightbox-container .ui-element { background-image:url(../images/layout/lightbox/ui.gif); }


/* content holder */
#lightbox-content { background-repeat:no-repeat; width:100%; height:100%; background-color:#0d0804; z-index:9005; position:absolute; }
#lightbox-content.loading { background:#0d0804 url(../images/loaders/media-page-load.gif) no-repeat 50% 50%; }

/* close */
#lightbox-container .lightbox-close { display:block; position:absolute; float:right; right:-14px; top:-18px; width:63px; height:51px; background-position: 0 -156px; z-index:9006; }
#lightbox-container .lightbox-close:hover { background-position:0 -207px; }

/* borders*/
#lightbox-container .border { position:absolute; float:left; z-index:9006; }
.ie6 #lightbox-container .border { line-height:1px; overflow:hidden; }
#lightbox-container #lb-border-top { height:11px; top:-11px; left:0; width:880px; background-image:url(../images/content/media-frame-tb.gif); padding-right:10px; }
#lightbox-container #lb-border-right { width:11px; top:0; right:-11px; background:url(../images/content/media-frame-lr.gif) -11px 0; height:632px; padding-bottom:9px; }
#lightbox-container #lb-border-bottom { height:11px; bottom:-11px; left:0; background:url(../images/content/media-frame-tb.gif) 0 -11px; width:878px; padding-right:12px; }
.ie6 #lightbox-container #lb-border-bottom { bottom:-7px; }
#lightbox-container #lb-border-left { width:11px; top:0; left:-11px; background-image: url(../images/content/media-frame-lr.gif); height:632px; padding-bottom:9px; }
/* corners */
#lightbox-container .corner { position:absolute; background:url(../images/content/media-frame-corners.gif) no-repeat; width:11px; height:11px; float:left; z-index:9006; }
#lightbox-container .corner-top-left { top:-11px; left:-11px; }
#lightbox-container .corner-bottom-left { background-position:0 -11px; bottom:-11px; left:-11px; }
#lightbox-container .corner-top-right { background-position:-11px 0; top:-11px; right:-11px; }
#lightbox-container .corner-bottom-right { background-position:-11px -11px; bottom:-11px; right:-11px; }

/* paging */
#lightbox-container .control-wrapper { height:39px; position:absolute; float:left; width:100%; bottom:-48px; z-index:9006; }
.ie6 #lightbox-container .control-wrapper { bottom:-45px; }
#lightbox-container .control-wrapper .lightbox-controls { width:184px; height:39px;  margin:0 auto; background:none; }
#lightbox-container .control-wrapper a { display:block; height:39px; float:left; }

/* paging - previous */
#lightbox-container .control-wrapper a.previous { width:63px; background-position:0 0; }
#lightbox-container .control-wrapper a.previous:hover { background-position:0 -39px; }

/* paging - gallery view */
#lightbox-container .control-wrapper a.gallery-view { position:relative; top:-39px; margin-bottom:-39px; left:63px; width:58px; background-position:-63px 0; }
#lightbox-container .control-wrapper a.gallery-view:hover { background-position:-63px -39px; }

/* paging - next */
#lightbox-container .control-wrapper a.next { margin-left:58px; width:63px; background-position:-121px 0; }
#lightbox-container .control-wrapper a.next:hover { background-position:-121px -39px; }

/* no paging */
#lightbox-container .control-wrapper.no-paging .lightbox-controls { background:none; }
#lightbox-container .control-wrapper.no-paging a.previous,
#lightbox-container .control-wrapper.no-paging a.next { display:none; }
#lightbox-container .control-wrapper.no-paging a.gallery-view { top:0; left:41px; width:102px; height:39px; background-position:0 -78px; }
#lightbox-container .control-wrapper.no-paging a.gallery-view:hover { background-position:0 -117px; }

/* no gallery */
#lightbox-container .control-wrapper.no-gallery a.gallery-view { display:none; }
#lightbox-container .control-wrapper.no-gallery .lightbox-controls { background:none; }
#lightbox-container .control-wrapper.no-gallery a.previous { margin-left:29px; }
#lightbox-container .control-wrapper.no-gallery a.next { margin-left:0; }

/* no controls */
#lightbox-container .control-wrapper.no-gallery.no-paging { display:none; }

/* error loading content */
#lightbox-container .lightbox-error { text-align:center; font-size:16px; background: #000 url(../images/error-page/warning.png) no-repeat 50% 20px; vertical-align:text-bottom; line-height:550px; }
.ie6 #lightbox-container .lightbox-error { background: #000; vertical-align:middle; line-height:normal; }

/* ie6 fix */
.ie6 #lightbox-container .no-gallery,
.ie6 #lightbox-container .no-paging { display:block; }
.ie6 #lightbox-container .no-controls { display:none; }