   �      0http://eu.battle.net/wow/static/css/wow.css?v=37     %|� h��     %|��-0              �      
     O K   
   Date   Wed, 07 May 2014 23:54:05 GMT   Server   Apache   X-Frame-Options   
SAMEORIGIN   Last-Modified   Tue, 06 May 2014 18:25:34 GMT   Accept-Ranges   bytes   Cache-Control   max-age=86400   Expires   Thu, 08 May 2014 23:54:05 GMT   Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   text/css parsererror { position:absolute; }
html { min-width: 1006px; }
body { background: #000 url("../images/layout/bg/body-bg-baked.jpg?v=2") 50% 0 no-repeat; -webkit-background-size: auto; color: #efc9a0; font: normal 12px/1.5 Arial, Verdana, sans-serif; }

@media (max-width: 1920px) {
	body { background-image: url("../images/layout/bg/body-bg-baked-1920px.jpg?v=2") }
}

@media (max-width: 1680px) {
	body { background-image: url("../images/layout/bg/body-bg-baked-1680px.jpg?v=2") }
}

@media (max-width: 1440px) {
	body { background-image: url("../images/layout/bg/body-bg-baked-1440px.jpg?v=2") }
}

@media (max-width: 1280px) {
	body { background-image: url("../images/layout/bg/body-bg-baked-1280px.jpg?v=2") }
}

@media (max-width: 1024px) {
  body { background-image: url("../images/layout/bg/body-bg-baked-1024px.jpg?v=2") }
}


a { color: #ffb100 }
a:hover { color: #FFF !important }
#right a { color: #bd8100 }
#right a:hover { color: #FFF }

/* tooltip */
.ui-tooltip { border: 1px solid #353837; color: #fff; background-color: rgba(15, 15, 15, 0.9); padding: 10px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: #000 0 0 15px; -webkit-box-shadow: #000 0 0 15px; box-shadow: #000 0 0 15px; font-size: 12px; max-width: 400px; }
.ui-tooltip h3 { font-size: 16px; font-weight: normal; } /* title of the tooltip */
.ui-tooltip li { clear: both; }
.ui-tooltip a { color: white; }
.ui-tooltip .tip { border-bottom: 0; }
/*.ui-tooltip .float-right { padding-left: 30px; }*/
.ui-tooltip .frame-32 { position: absolute; left: -60px; top: -10px; }
.ui-tooltip .frame-36 { position: absolute; left: -56px; top: -10px; }
.ui-tooltip .frame-56 { position: absolute; left: -75px; top: -10px; }
.ui-tooltip .frame-150 { position: absolute; left: -175px; top: -10px; }
.ui-tooltip .tooltip-content { position: relative; }
.ui-tooltip .tooltip-list { margin-top: 10px; }
.ui-tooltip .tooltip-list li { margin: 1px 0; }
.ui-tooltip .tooltip-list .icon-frame { float: left; margin-right: 5px; }

/* generic */
.tip { border-bottom: 1px dotted #6a5336; cursor: help; }
a.tip, .tip a { cursor: pointer; }

/* fansite */
.hover .fansite-link { visibility: visible; }
.fansite-link { width: 21px; height: 21px; vertical-align: top; display: inline-block; overflow: hidden; background: url("../images/icons/goto-fansite-button.gif") no-repeat; }
.fansite-link:hover,
.hover .fansite-link { background-position: 0 -21px; }
.fansite-link.fansite-small { width: 16px; height: 16px; background-position: 0 -42px; }
.fansite-link.fansite-small:hover,
.hover .fansite-link.fansite-small { background-position: 0 -58px; }
tr .fansite-link { visibility: hidden; }
tr:hover .fansite-link,
.hover .fansite-link { visibility: visible !important; display: block !important; }
.fansite-group a { padding-right: 12px; margin-right: 5px; background: url("../images/icons/goto-fansite.gif") no-repeat 100% 3px; }
.fansite-group a:hover { background-position: 100% -18px; }

/* type ahead */
.ui-typeahead { background: #161413; border: 1px solid #353837; -moz-border-radius: 5px; -moz-box-shadow: 0 0 10px #000000; -webkit-border-radius: 5px; -webkit-box-shadow: 0 0 10px #000000; border-radius: 5px; box-shadow: 0 0 10px #000000; z-index: 100; }
.ui-typeahead .group-list { border-top: 1px solid #2A292B; }
.ui-typeahead .group-list a:hover { background: #1c1b1a; }
.ui-typeahead .group-list a.item-active { background: #222120; }
.ui-typeahead .group-list a .desc { color: #999; }
.ui-typeahead .group-title { color: #EFE3D2; border-bottom: 1px solid #2A292B; background: #060606 url("../images/layout/search/search_icons.png") 5px -2px no-repeat; padding-left: 30px; }
.ui-typeahead .group-wowitem .group-title { background-position: 5px -277px; }
.ui-typeahead .group-wowcharacter .group-title { background-position: 7px -80px; }
.ui-typeahead .group-wowguild .group-title { background-position: 5px -332px; }
.ui-typeahead .group-wowarenateam .group-title { background-position: 5px -384px; }
.ui-typeahead .group-static .group-title { background-position: 5px -41px; }
.ui-typeahead .group-kb .group-title { background-position: 5px -187px; }
.ui-typeahead .group-post .group-title { background-position: 5px -114px; }
.ui-typeahead .group-article .group-title { background-position: 5px -153px; }

/* breadcrumbs */
.ui-breadcrumb { font-size:12px;}
.zh-tw .ui-breadcrumb { font-family: none }
.ui-breadcrumb li { padding-right:0; margin-right:0 }
.ui-breadcrumb li.last { padding: 0; }

.ui-breadcrumb li a { display: block; padding-bottom: 2px; line-height: 1.25; }
.ie .ui-breadcrumb li a { display: block; }
.ui-breadcrumb li .breadcrumb-text { border-bottom: 1px dotted #8c6407; display: block; }
.ui-breadcrumb li.last a { color: #F3E6D0; }
.ui-breadcrumb li.last .breadcrumb-text { color: #F3E6D0; border: none; max-width: 200px; text-overflow: ellipsis; overflow: hidden; white-space: nowrap; }

.ui-breadcrumb li.children .breadcrumb-text { border-bottom:1px dotted #aaa; }
.ui-breadcrumb li a:hover .breadcrumb-text,
.ui-breadcrumb li a.opened .breadcrumb-text { color: #fff; border-color: #fff; }
.ui-breadcrumb li .breadcrumb-arrow { position: relative; padding-right: 32px; }
.ui-breadcrumb li .breadcrumb-arrow:after { content: ""; background: url("../images/icons/flyout-arrows.gif") no-repeat 100% -123px; width: 15px; height: 10px; position: absolute; top: 3px; right: 7px; }
.ie67 .ui-breadcrumb li .breadcrumb-arrow { padding-right: 10px; }

/* dropdown */
.ui-dropdown { border: none; height: 27px; }
.ui-dropdown .dropdown-toggler { background: url("../images/form/dropdown-right.gif") 100% 0 no-repeat; height: 27px }
.ui-dropdown .dropdown-toggler:hover { background: url("../images/form/dropdown-right.gif") 100% -30px no-repeat }
.ui-dropdown .dropdown-toggler span { color: #fab000; font-size: 11px; line-height: 27px; padding-left: 10px; height: 27px; display: block; background: url("../images/form/dropdown-left.gif") 0 0 no-repeat; }
.ui-dropdown .dropdown-toggler:hover span { color: #fff; background: url("../images/form/dropdown-left.gif") 0 -30px no-repeat }
.ui-dropdown.opened .dropdown-toggler { background: url("../images/form/dropdown-right.gif") 100% -60px no-repeat }
.ui-dropdown.opened .dropdown-toggler span { color: #fffac1; background: url("../images/form/dropdown-left.gif") 0 -60px no-repeat }
.ui-dropdown .dropdown-wrapper { background-color: #3e1103; border: 1px solid #601f0c; padding: 5px; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px }
.ui-dropdown .dropdown-wrapper ul li a { padding: 5px; color: #fffac1; display: block }
.ui-dropdown .dropdown-wrapper ul li a:hover { text-decoration: none; color: #fff; background: #6e3b0d; -moz-border-radius: 2px; -webkit-border-radius: 2px; border-radius: 2px }

/* pagination */
.ui-pagination { overflow:visible; height:22px; }
.ui-pagination li { margin:0 2px; }
.ui-pagination li a { padding:0 10px; height:22px; line-height:22px; background: #2b1507; color: #d3ac6b; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px }
.ui-pagination li a:hover { background-color: #4e2f1b; color: white; }
.ui-pagination li.current a { background-color: #ffae00; color: #000; font-weight: bold; }

/* toasts */
.ui-toast .toast-top { background: url("../images/layout/toast.png") no-repeat }
.ui-toast .toast-bot { background: url("../images/layout/toast.png") 0 100% no-repeat }
.ui-toast .toast-content { color: #000; text-shadow: #e5a14e 1px 1px; background: url("../images/layout/toast-bg.png") repeat-y }
.ui-toast .toast-arrow { background: url("../images/layout/toast-arrow.png") no-repeat }

/* Context Menu */
.ui-context .context .context-links a { background-image: url("../images/icons/context.gif"); background-repeat: no-repeat; font-weight: bold; }
.ui-context .context .context-links .icon-profile { background-position: 0 0; }
.ui-context .context .context-links .icon-posts { background-position: 0 -30px; }
.ui-context .context .context-links .icon-ignore { background-position: 0 -60px; }
.ui-context .context .context-links .icon-ban { background-position: 0 -90px; }
.ui-context .context .context-links .icon-auctions { background-position: 0 -120px; }
.ui-context .context .context-links .icon-events { background-position: 0 -150px; }
.ui-context .context .realm,
.ui-context .character-list .primary .char .realm { display: inline; padding-right: 15px; background: url("../images/icons/arrow-up-down.gif") 100% 2px no-repeat; }
.ui-context .context .realm.down,
.ui-context .character-list .primary .char .realm.down { background-position: 100% -14px; }
.ui-context .context .realm.unknown,
.ui-context .character-list .primary .char .realm.unknown { background-position: 100% -28px; }
.context-link { background: url("../images/layout/cms/char-arrow.png") 100% 3px no-repeat; padding-right: 14px; color: white; }
.context-link:hover,
.context-link.context-open { color: #ffb100; background-position: 100% -145px; }

/* Buttons */
.ui-button span { font-family: Arial, sans-serif; }

/* primary button */
.button1 .button-left,
.button1 .button-right { background-image: url("../images/buttons/button-1.png"); background-repeat: no-repeat; color: #ffae00; }
.button1 .button-left { padding:0 0 0 28px; background-position:0 0; height:38px; line-height:37px; }
.button1 .button-right { padding: 0 28px 0 0; background-position: 100% -123px; font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif; font-size:12px; height:38px; line-height:38px; text-transform: uppercase; }
.ko-kr .button1 .button-right { font-family: Dotum; }
.button1:hover .button-left { background-position: 0 -41px; }
.button1:hover .button-right { color:#FFF; background-position:100% -164px; }

.button1.processing .button-left,
.button1.processing:hover .button-left,
.button1.disabled .button-left,
.button1.disabled:hover .button-left { background-position: 0 -82px; cursor: default; }

.button1.processing .button-right,
.button1.processing:hover .button-right,
.button1.disabled .button-right,
.button1.disabled:hover .button-right { background-position: 100% -205px; cursor: default; color: #953203 }

.button1.previous .button-left, .button1.next .button-right { background-image: url("../images/buttons/button-1-previous.png"); }
.button1.previous .button-left { padding-left:28px; }
.button1.previous .button-right { padding-right:12px; }

.button1.next .button-left, .button1.next .button-right { background-image: url("../images/buttons/button-1-next.png"); }
.button1.next .button-left { padding-left:12px; }
.button1.next .button-right { padding-right:28px; }

.button2.next .button-left, .button2-next .button-right { height:24px; line-height:21px; background: url("../images/buttons/button-2-next.png") no-repeat;  }
.button2.next .button-left { padding-left:16px; background-position:0 -3px; }
.button2.next .button-right { padding-right: 27px; margin:0; font-size:11px; text-transform:none; background-position:right -126px; }

.button2.next:hover .button-left { background-position:0 -44px; }
.button2.next:hover .button-right { background-position:right -167px; }

.button2.next.disabled span { color: #953203 }
.button2.next.disabled .button-left { background-position:0 -85px; }
.button2.next.disabled .button-right { background-position:right -208px; }

.button2.previous .button-left, .button2-previous .button-right { height:24px; line-height:21px; background: url("../images/buttons/button-2-previous.png") no-repeat;  }
.button2.previous .button-left { padding-left:28px; background-position:0 -3px; }
.button2.previous .button-right { padding-right: 16px; margin:0; font-size:11px; text-transform:none; background-position:right -126px; }

.button2.previous:hover .button-left { background-position:0 -44px; }
.button2.previous:hover .button-right { background-position:right -167px; }

.button2.previous.disabled span { color: #953203 }
.button2.previous.disabled .button-left { background-position:0 -85px; }
.button2.previous.disabled .button-right { background-position:right -208px; }

.button2 span,
.button3 span { padding: 0 0 0 13px; height: 30px; line-height: 30px; font-size: 11px }
.button2 span span,
.button3 span span { padding: 0 13px 0 0 }
.button2 span { background-image: url("../images/buttons/button-2.png"); background-repeat: no-repeat; color: #ffae00 }
.button2 .button-left { background-position:0 0; }
.button2 .button-right { background-position:right -123px; }

.button2.hover span,
.button2:hover span { color: #fff }
.button2:hover .button-left { background-position:0 -41px; }
.button2:hover .button-right { background-position: right -164px; }

.button2.disabled span,
.button2.processing span { color: #953203 }
.button2.disabled .button-left,
.button2.processing .button-left { background-position:0 -82px; }
.button2.disabled .button-right,
.button2.processing .button-right { background-position: right -205px; }

.button3 span { background: url("../images/buttons/button-3.gif") no-repeat; color: #00B4FF }
.button3.hover span,
.button3:hover span { color: #fff }
.button3.disabled span,
.button3.processing span { color: #b1bac3 }

.button4 .button-left, .button4 .button-right { background-image: url("../images/buttons/button-4.png"); background-repeat: no-repeat; height:50px; line-height:50px; background-position: 0 0; }
.button4 .button-left { padding-left:15px; }
.button4 .button-right { background-position: 100% -159px; font-size:16px; padding-right:16px; }
.button4:hover span {background-position: 0 -53px; }
.button4:hover span span {background-position: 100% -212px; }
.button4.processing span {background-position: 0 -106px; }
.button4.processing span span {background-position: 100% -265px; }
.button4.hover span,
.button4:hover span { color: #fff }
.button4.disabled span,
.button4.processing span { color: #b1bac3 }

.button4-download span { padding: 0 0 0 45px; background-image: url("../images/buttons/button-4-download.png"); background-repeat: no-repeat; height:50px; line-height:50px; background-position: 0 0; }
.button4-download span span {background-position: 100% -159px; font-size:16px; color:#ffb100; padding-left:2px; padding-right:14px;}
.button4-download span span em {text-align:left; font-size:9px; line-height:11px; color:#863d13; display:block;}
.button4-download:hover span {background-position: 0 -53px; }
.button4-download:hover span span {background-position: 100% -212px; }
.button4-download.processing span {background-position: 0 -106px; }
.button4-download.processing span span {background-position: 100% -265px; }
.button4-download.hover span,
.button4-download:hover span { color: #fff }
.button4-download.hover em,
.button4-download:hover em { color: #fff }
.button4-download.disabled span,
.button4-download.processing span { color: #b1bac3 }

/* menu */
.flyout-menu { background: #161413; opacity: .99; border: 1px solid #353837; padding: 1px; -moz-border-radius: 5px; -moz-box-shadow: 0 0 10px #000; -webkit-border-radius: 5px; -webkit-box-shadow: 0 0 10px #000; border-radius: 5px; box-shadow: 0 0 10px #000 }
.flyout-menu ul { width: 199px; border-right: 1px solid #2A292B; }
.flyout-menu ul:last-child { width: 200px; border-right: 0; }
.flyout-menu ul li { margin: 0; border-bottom: 1px solid #2A292B; }
.flyout-menu ul li:last-child { border-bottom: 0; }
.flyout-menu ul:last-child > li:last-child { border-bottom: 1px solid #2A292B !important; }
.flyout-menu ul:first-child > li:last-child { border-bottom: 0 !important; }
.flyout-menu ul li.divider { background-color: #060606; } /* separator */
.flyout-menu ul li.divider a,
.flyout-menu ul li.divider span { color: #EFE3D2; font-weight: bold; display: block; padding: 4px 8px; }
.flyout-menu ul li a { color: #ffae00; padding: 4px 18px 4px 8px; }
.flyout-menu ul li a .desc { display: block; color: #7b7b7b; font-size: 11px; }
.flyout-menu ul li .opened { color: #d5d5d5; }
.flyout-menu ul li a.children,
.flyout-menu ul li span.children { background: url("../images/icons/flyout-arrows-new.png") 96% -48px no-repeat; font-weight: normal; }
.flyout-menu ul li .opened,
.flyout-menu ul li a:hover,
.flyout-menu ul li span.children:hover { background-color: #1c1b1a !important; background-position: 96% 8px !important; }
.flyout-menu ul li a:hover,
.flyout-menu ul li span.children:hover { color: white; }
.flyout-menu ul li .flyout-menu { left: 195px; top: -2px; }

/* overlay */
.ui-overlay { width: 750px; background: #391b0d; color: #e9bd7f; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: 0 0 10px #000; -webkit-box-shadow: 0 0 10px #000; box-shadow: 0 0 10px #000; }
.ui-overlay .overlay-middle { padding: 25px; }
.ui-overlay .overlay-middle h2 { color: #7e3406; font-size: 24px; line-height: 100%; font-weight: normal; margin-bottom: 15px; padding-bottom: 15px; border-bottom: 2px solid #50260f; }

/* trending topics */
.trending-topics { margin-top: 3px; }
.trending-topics li { border-bottom: 1px solid #271B15; color: #71401F; padding: 7px 5px; }
.trending-topics .topic { font-weight: bold; }
.trending-topics .forum { color: #855B47 !important; }
.trending-topics .forum:hover { color: #fff !important; }

/* articles list */
.articles-list li { border-bottom: 1px solid #271B15; }
.articles-list a .title { font-weight: bold; }
.articles-list a .date { color: #71401F; }
.articles-list a .image { border: 1px solid #372511; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px; -moz-box-shadow: 0 0 15px #000; -webkit-box-shadow: 0 0 15px #000; box-shadow: 0 0 15px #000; }
.articles-list a:hover .image { border-color: #CD9000; }

/* articles list - Plain */
.articles-list-plain li { border-bottom: 1px solid #271B15; padding: 10px 5px; }
.articles-list-plain .title { font-weight: bold; display: block; line-height: 115%; word-wrap: break-word; color: #FFB100 !important; }
.articles-list-plain .title:hover { color: #fff !important; }
.articles-list-plain .date { color: #855B47; font-size: 11px; }
.articles-list-plain .forum { color: #855B47 !important; font-size: 11px;  }
.articles-list-plain .forum:hover { color: #fff; }

/* under dev feed*/
#sidebar-under-dev .trending-topics li { font-weight: bold; line-height: 100%; }

/* layout */
#wrapper { width: 1006px; margin: 0 auto; position: relative } /* use even width value so the centering is identical in IE and other browsers */

/* header */
#header { position:relative; z-index:50; padding-top: 26px; }
#header #logo { height: 115px }
#header #logo a { width: 275px; height: 115px; display: block; border: none; text-indent: -9999px }
#header .header-plate { height: 93px; position: relative; }
#header .user-plate { color: #fff; width: 355px; height: 84px; position: absolute; right: 3px; bottom: 1px; }
.ie6 #header .user-plate { right:2px }

#header .user-plate .character-card { position:relative; z-index:1; }

#header .user-plate .character-name,
#header .user-plate .guild-name { float:left; clear:left; pointer-events:auto; }
#header .user-plate .meta-no-wow .player-name, #header .user-plate .meta-no-character .player-name { float:none; }
#header .user-plate .meta { position: relative; }
#header .user-plate .player-name,
#header .user-plate .guild-name { display: block; text-shadow: 1px 1px 1px black; font-weight: bold; font-size:12px; text-overflow: ellipsis; max-width: 250px; overflow: hidden; white-space: nowrap;}
#header .user-plate .context-link { text-shadow: 1px 1px 1px black; font-weight: bold; }
#header .user-plate .player-name { color: #b0d715; font-weight: bold; line-height: 100%; margin-bottom: 2px; }
#header .user-plate .character-name { line-height: 100%; font-weight: bold; font-size: 24px; margin: 0; padding:0; background: none; letter-spacing: -0.0em; text-shadow: 1px 1px 1px black; letter-spacing: -0.05em; pointer-events: auto; }
#header .user-plate .character-name.name-small { font-size: 20px; }
#header .user-plate .character-name.context-open,
#header .user-plate .character-name:hover { color: white; }
#header .user-plate .character-name:after { background: url("../images/layout/cms/char-arrow.png") 0 3px no-repeat; display: inline-block; width: 11px; height: 15px; content:''; }
#header .user-plate .character-name:hover:after { background-position: 0 -145px; }

#header .user-plate .avatar-frame { position:absolute; right:0; top:0; border:solid 1px #c3ff00; pointer-events:none; }
#header .user-plate .meta-horde .avatar-frame { border-color: #e23739; }
#header .user-plate .meta-alliance .avatar-frame { border-color: #00bbf6; }
#header .user-plate .avatar-frame, #header .user-plate .avatar-wow { width:58px; height:58px; }

#header .user-plate .card-character { width: 326px; height: 84px; padding:0 0 0 30px; display: block; color: #EEE; font-size: 14px; background: url("../images/layout/cards-mop/charcard-neutral.jpg") 0 0 no-repeat; position: absolute; bottom:-1px; right: 0; text-overflow: ellipsis; line-height: 1.4em; z-index:1; }
#header .user-plate .card-character strong { color: #ffb100; }
#header .user-plate .card-character .login-msg { display:block; float:left; width:210px; margin-top:18px;  text-shadow:1px 1px 1px #555 }
#header .user-plate .card-character .wow-login-key { display:block; position:absolute; right:50px; top:31px; width:50px; height:42px; background:url(../images/layout/cards-mop/key.png) no-repeat }
.ie6 #header .user-plate .card-character .wow-login-key { background-image:url(../images/layout/cards-mop/key.gif) }
#header .user-plate a.card-character:hover { color: #fff; background-position: 0 -84px; }
#header .user-plate a.card-character:hover strong { color: white; }
#header .user-plate .card-character .card-portrait { width:58px; height:58px; display:block; float:right; border:1px solid #c3ff00; background:url(../images/layout/cards-mop/avatar-neutral.jpg) 50% 50% no-repeat; margin-top:7px; margin-right:21px }
.ie6 #header .user-plate .card-character .card-portrait { margin-right:10px }

#header .user-plate .meta-wrapper { position:relative; padding:10px 15px 10px 30px; z-index:1; pointer-events:none; }

#header .user-plate .card-character.plate-neutral  .card-portrait,
#header .user-plate .card-character.plate-alliance .card-portrait,
#header .user-plate .card-character.plate-horde    .card-portrait { background-size:74px }

#header .user-plate .card-character.plate-alliance { background-image:url(../images/layout/cards-mop/charcard-alliance.jpg) }
#header .user-plate .card-character.plate-horde { background-image:url(../images/layout/cards-mop/charcard-horde.jpg) }

#header .user-plate .meta-default .meta { width:240px; margin-top:13px }

#header .user-plate .meta-login-error .meta,
#header .user-plate .meta-no-wow .meta { text-shadow:1px 1px 1px #555; width:280px; margin-top:7px }

.pt-br #header .user-plate .meta-login-error .meta { width:280px }
.es-mx #header .user-plate .meta-login-error .meta { width:280px }
.es-mx #header .user-plate .meta-no-wow .meta { margin-top:13px }

#header .user-plate .meta-alliance .player-name { color: #5fb8eb; }
#header .user-plate .meta-alliance .character-name:hover { color: white; text-shadow: 1px 1px 1px black, 0 0 15px #409aff, 0 0 5px #409aff; }
#header .user-plate .meta-horde .player-name { color: #eb1212; }
#header .user-plate .meta-horde .character-name:hover { color: white; text-shadow: 1px 1px 1px black, 0 0 15px #c64040, 0 0 5px #c64040; }

#header .user-plate .ui-context { top: 40px; pointer-events: auto; }
#header .user-plate .ui-context a { color: #00B6FF; }
#header .user-plate .ui-context a:hover { color: #fff; }

/* Sub header */
#sub-header  { color:#7E3406; font-size:24px; letter-spacing:-0.05em; padding-left:30px; }

/* Section title */
.section-title {  }
.section-title h2 { color: #efe3d2; margin-bottom: 10px; font: 52px/85% "Palatino Linotype", Georgia, Times, sans-serif; letter-spacing: -1.5px; text-shadow: #241209 0 0 5px; }
.section-title p,
.section-title .view-all {letter-spacing: normal;}

/* page sub nav */
#sub-nav { width:942px; height:36px; border:1px solid #732c0c; margin:0 auto; background: url("../images/layout/sub-navigation.gif") 0 0 repeat-x; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius:5px; }
#sub-nav ul a { font:normal 13px/36px Arial, Sans-serif; display:block; height:36px; float:left; padding:0 18px 0 15px; background: url("../images/layout/sub-navigation.gif") 100% -45px no-repeat; border-right:1px solid #732c0c }
#sub-nav ul a.first-col { -moz-border-radius: 5px 0 0 5px; -webkit-border-radius: 5px 0 0 5px; border-radius: 5px 0 0 5px;}
#sub-nav ul a:hover { background-color:#340c02; -moz-box-shadow: inset 5px 5px 5px #200601; -webkit-box-shadow:inset 5px 5px 5px #200601; box-shadow:inset 5px 5px 5px #200601; }
#sub-nav ul a.active { background-color:#340c02; -moz-box-shadow: inset 5px 5px 5px #200601; -webkit-box-shadow:inset 5px 5px 5px #200601; box-shadow:inset 5px 5px 5px #200601; cursor:default }
#sub-nav ul a.active span { color:#FFF }

/* search bar */
.search-bar { position: absolute; right: 5px; top: 75px; z-index: 5;  }
.search-bar form { float: right; width: 354px; height: 30px; }
.search-bar div { position: relative; }
.search-bar .input { width: 304px; padding: 8px 40px 8px 8px; background: #fff; }
.search-bar .search-field { color: #707070; border-radius: 5px; box-shadow: 0 0 10px #4C7D82; }
.search-bar .search-field.active,
.search-bar .search-field:focus { color: #000; font-weight: normal; }
.search-bar .search-button { border:none; outline: none; position: absolute; top: -6px; right: -6px; cursor: pointer; background: url("../images/icons/mag-glass.png") center center no-repeat; width: 44px; height: 46px; z-index: 7; }

/* search results */
.search .summary .suggested-results .result a { font-weight: normal; }

/* menu */
#menu { width: 623px; height: 65px; position: absolute; left: 19px; top: 19px; -moz-user-select: none; -webkit-user-select: none; user-select: none; background-image: url("../images/layout/menu-tab-baked.jpg?v=2"); }
#menu li { width: 102px; float: left; height: 65px; }
#menu li a { height: 65px; display: block; text-align: center; text-transform: uppercase; color: #ffa400 }
#menu li a span { padding-top: 45px; display: block; font: normal 12px Arial, Verdana, serif; text-shadow: #000 0 0 5px; position: relative; top: -5px }
#menu li a:hover,
#menu li a.menu-active { background-image: url("../images/layout/menu-tab-baked.jpg?v=2"); }
#menu li a:hover { color: white; }
#menu li a.menu-active { color: #fff !important; -moz-box-shadow: 0 0 15px #ff7501; -webkit-box-shadow: 0 0 15px #ff7501; box-shadow: 0 0 15px #ff7501; position: relative; }
#menu li.menu-game,
#menu li.menu-forums { width: 104px }
#menu li.menu-community,
#menu li.menu-media { width: 105px }
#menu li.menu-home a:hover { background-position: 0 -65px }
#menu li.menu-home a.menu-active { background-position: 0 -130px !important }
#menu li.menu-game a:hover { background-position: -102px -65px }
#menu li.menu-game a.menu-active { background-position: -102px -130px !important }
#menu li.menu-community a:hover { background-position: -206px -65px }
#menu li.menu-community a.menu-active { background-position: -206px -130px !important }
#menu li.menu-media a:hover { background-position: -311px -65px }
#menu li.menu-media a.menu-active { background-position: -311px -130px !important }
#menu li.menu-forums a:hover { background-position: -416px -65px }
#menu li.menu-forums a.menu-active { background-position: -416px -130px !important }
#menu li.menu-services a:hover { background-position: -520px -65px }
#menu li.menu-services a.menu-active { background-position: -520px -130px !important }
.chrome #menu li a span { text-shadow: none; }

/* content */
#content { background-color: #1a0f08 !important; margin: 0 6px; }
.content-top { background: url("../images/layout/content-topbot.jpg") 0 0 no-repeat; }
#content .content-bot { position:relative; background: url("../images/layout/content-topbot.jpg") -992px bottom no-repeat; min-height: 600px; }
#content .content-trail { height: 40px; }
#content .content-trail .ui-breadcrumb { padding: 7px 0 0 20px; }
#content .content-header { padding: 25px; padding-top: 35px; }
#content .content-header .header { color: #efe3d2; font: 52px/85% "Palatino Linotype", Georgia, Times, sans-serif; letter-spacing: -1.5px; text-shadow: #241209 0 0 5px; }
#content .content-header .desc { width: 50%; margin-top: 25px; color: #A4704E; }
#content .content-box-w434 { background: url("../images/content/box-w434-top.jpg") 0 0 no-repeat #21130a; width:434px; }
#content .content-box-w434 .wrapper { background: url("../images/content/box-w434-bottom.jpg") 0 100% no-repeat; width:100%; padding:16px 0 19px 0; letter-spacing:-0.5px;}
#content .content-box-w434 .inner-wrapper {margin:0 45px 0 19px;}
#content .content-box-w434 .box-title {font-size:12px; color:#efe3d2; display:block; padding-bottom:21px; text-transform:uppercase;}
#content .content-box-w434 .wrapper p {font-size:12px; line-height:20px; color:#967648; margin-bottom:15px;}
.ui-slideshow .mask { background: url("../images/layout/slideshow-mask.png") 0 0 no-repeat; }
.ui-slideshow .caption h3 { color: #f3e6d0; font-size: 20px; font-weight:bold; letter-spacing: -0.05em; line-height:1em; }
.ui-slideshow .paging a { -moz-border-radius:2px; border-radius:2px }
.ui-slideshow .caption h3 a { color: #f3e6d0; }
.ui-slideshow .caption h3 a:hover { color: #fff }

/* footer */
#footer { background: #000; margin:0 5px; -moz-user-select: none; -webkit-user-select: none; user-select: none }
#footer a { color: #552c09 }
#footer a:hover { color: #f5ebd1 }
#footer h3 { color: #70523d }
#footer h3 a { color: #70523d }
#sitemap h3 { border-color: #20140d; background: url("../images/icons/footer.gif") 0 0 no-repeat }
#copyright { border-color: #20140d; color: #433A2E }
#copyright a { color: #70523D }
#international { border-color: #20140d; background: url("../images/layout/world-map.gif") 50% 50% no-repeat }
#change-language { background-image: url("../images/icons/arrows.gif") }
#change-language span { background-image:url("../images/icons/map-small.gif") }
#footer-promotions { font-size: 12px; font-weight:bold; font-family: Arial, Helvetica, sans-serif; }
#footer-promotions a { color: #BD8100 }
#footer-promotions .desc { padding: 5px 0; }
#footer-promotions .subtitle { color: #71401F; font-weight: normal; padding-top: 5px }
.bnet-offer-bg { border: 1px solid #372511; overflow: hidden; margin:0 auto 10px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;  -moz-box-shadow:0 0 6px #000000; -webkit-box-shadow:0 0 6px #000000; box-shadow:0 0 6px #000000; width:302px;}
.bnet-offer-bg:hover { border-color: #CD9000; }
.bnet-offer-image { display: block; border: 1px solid #000; overflow: hidden; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px; }
.bnet-offer-image img { display: block; }

/* content elements */

/* media frame */
.media-frame { display: inline-block; width: auto; border-collapse: collapse; -moz-box-shadow: #000 0 0 10px; -moz-border-radius: 10px; -webkit-box-shadow: #000 0 0 10px; -webkit-border-radius: 10px; box-shadow: #000 0 0 10px; border-radius: 10px; }
.media-frame .tl,
.media-frame .tr,
.media-frame .bl,
.media-frame .br { width: 11px; height: 11px; background: url("../images/content/media-frame-corners.gif") no-repeat; }
.media-frame .tr { background-position: -11px 0; }
.media-frame .bl { background-position: 0 -11px; }
.media-frame .br { background-position: -11px -11px; }
.media-frame .tm,
.media-frame .bm { height: 11px; background: url("../images/content/media-frame-tb.gif") 0 0 repeat; }
.media-frame .bm { background-position: 0 -11px; }
.media-frame .ml,
.media-frame .mr { width: 11px; background: url("../images/content/media-frame-lr.gif") 0 0 repeat; }
.media-frame .mr { background-position: -11px 0; }
.media-frame .mm { background: #000; }
.media-frame .mm img { display: block }
.media-frame .caption { padding: 15px 10px 5px 10px; background: url("../images/content/media-frame-tb.gif") 0 -11px repeat-x; margin: 0 -2px; }
.media-frame .view-all { float: right; padding-right: 17px; background: url("../images/icons/bullet.gif") 100% 50% no-repeat }
.media-frame .magnifying-wrapper { position:relative }
.media-frame .magnifying-wrapper .magnifying-glass { position:absolute; display:block; width:63px; height:51px; top:-18px; right:-14px; background:url("../images/layout/lightbox/ui.png") -81px -156px no-repeat }
.media-frame:hover .magnifying-wrapper .magnifying-glass,
.media-frame .magnifying-wrapper:hover .magnifying-glass { background-position:-81px -207px }

/* text */
.header,
.header-2,
.header-3 { font-size: 24px; font-weight: normal; letter-spacing: -.05em; color: #f5ebd1; }
.header span,
.header-3 span { color: #7E3406; }
.subheader,
.subheader-2,
.header-3 { font-size: 20px; font-weight: normal; letter-spacing: -.05em; color: #F5EBD1; }
.category,
.subheader-3 { font-size: 22px; font-weight: normal; letter-spacing: -.05em; color: #7e3406; }
.category strong,
.subheader-3 strong { color: #fef092; font-weight: normal; }
.subcategory,
.subheader-4 { font-size: 16px; font-weight: normal; color: #71401F; }
.text1 { color: #b79855 }
.text2 { color: #f5d3a2 }

/* forms */
.input, .post-editor { background: #f1ebd7; color: #171717; padding: 5px; border: none; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px }
.input[disabled],
.input.disabled { opacity: .3; cursor: default }
.input.select { padding: 4px }
.input.textarea { font: 12px/1.5 Arial, Verdana, sans-serif }
.input.checkbox { vertical-align: bottom; background-color:transparent; }

/* lists */
.content-list { padding-left: 25px }
.content-list li { padding-left: 17px; background: url("../images/icons/bullet.gif") 0 4px no-repeat }

/* tables */
.table { padding-bottom: 2px; background: url("../images/content/table-bg.gif") 50% 100% no-repeat }

	/* real table */
	.table table { width: 100%; table-layout: auto; }
	.table thead th { padding: 0; background: #4d1a08 url("../images/content/table-header.gif") 0 100% repeat-x; border-bottom: 1px solid #1a0f08; white-space: nowrap; }
	.table thead th, .table thead th a { color: #F5EBD1; font-weight: bold;}
	.table thead th.align-center .sort-tab, .table thead th.align-center .sort-link { text-align: center; }
	.table thead th.align-right .sort-tab, .table thead th.align-right .sort-link { text-align: right; }
	.table tfoot th { padding: 10px }
	.table tbody td { padding: 10px; color: #f5ebd1; }
	.table tbody .row1 td { background: #2b1507; border-top: 1px solid #31190a }
	.table tbody .row2 td { background: #231207; border-top: 1px solid #30190b }
	.table tbody tr:hover td,
	.table tbody tr.row-active td { background: #180c04; color: #fff }
	.table tbody tr.no-results td { padding: 25px 50px; text-align: center; background: #231207; color: #C09A67 }
	.table tbody tr.disabled td { opacity: 0.33333; }
	.table.full-width td:first-child { padding-left: 20px; }
	.table.full-width td:last-child { padding-right: 20px; }

	.table em { color: #d2ae89; font-style: normal; }

	/* list version */
	.table dl { padding: 0 10px; clear: both; height: 38px; line-height: 38px; background-color: #231207}
	.table dt { float: left; display: inline-block; }
	.table dd { float: right; display: inline-block; color: #fefffe;}
	.table h4 {	color: #fff; background: #4D1A08 url("../images/content/table-header.gif") repeat-x 0 100%; padding: 6px 8px; border-top: 1px solid #7C2804; border-left: 1px solid #7C2804; }
	.table li { background: #231207; border-top: 1px solid #30190B; height: 27px; line-height: 27px; clear: both; padding: 4px 0; }
	.table dl.odd { background: #2B1507; border-top: 1px solid #31190A; }
	.table dl:hover { background: #180c04; border-top-color: #0f0702; }

.data-options { color: #855b47; padding: 0 10px; height: 40px; line-height: 40px; background: url("../images/content/table-options-bg.jpg") 50% 0 no-repeat }
.data-options strong { color: #FEF092 }
.data-options .input { padding: 1px }
.data-options .option { float: right; padding-left: 15px }
.data-options .option .input { padding-right: 2px }
.data-options .ui-pagination { padding: 0; background: none; height: 20px; display: inline }
.data-options .ui-pagination a { height: 20px; line-height: 20px; color: #ffae00 }

.table-filters { padding: 15px; background: url("../images/form/filter-bg.png") 0 0 no-repeat; -moz-border-radius: 7px; -webkit-border-radius: 7px; border-radius: 7px; -moz-box-shadow: 0 0 5px #0e0905; -webkit-box-shadow: 0 0 5px #0e0905; box-shadow: 0 0 5px #0e0905; }
.table-filters .filter { float: left; margin: 0 15px 15px 0; }
.table-filters .filter label { display: block; padding-bottom: 3px; }
.table-filters .filter-buttons { clear: both; text-align: center; }
.table-filters.inline .filter { margin-bottom: 0; }
.table-filters.inline .filter label { display: inline-block; padding: 0 8px 4px 0; }
.table-filters.inline .filter-buttons { padding-top: 10px; }

.table .sort-link,
.table .sort-tab { display: block; padding: 8px 10px; text-align: left; border-left: 1px solid #7c2804; border-top: 1px solid #7c2804; border-right: 1px solid #391303 }
.table .sort-link:hover { color: #fff; background: #6a240b url("../images/content/table-header-hover.gif") 0 100% repeat-x; border-top-color: #af3900; border-left-color: #af3900 }
.table .sort-link .arrow { padding-left: 10px; background: url("../images/content/table-sort-arrows.gif") 0 -10px no-repeat }
.table .sort-link:hover .arrow { background-position: 0 -115px }
.table .sort-link .arrow.up,
.table .sort-link:hover .arrow.up { background-position: 0 -80px }
.table .sort-link .arrow.down,
.table .sort-link:hover .arrow.down { background-position: 0 -45px }
.table .sort-data.hidden { display: none; } /* table specificity for ie6 */

/* content boxes */
.content-box { background: url("../images/content/content-bg.jpg") no-repeat }
.content-box-small { background: url("../images/content/content-small-bg.jpg") no-repeat; width: 310px }
.content-box .title,
.content-box-small .title { height: 58px; line-height: 58px; padding: 0 20px }
.content-box .title h3,
.content-box-small .title h3 { color: #f5ebd1; font: normal 18px/58px Palatino, Georgia, Times, serif; text-transform: uppercase }
.content-box .body,
.content-box-small .body { padding: 20px }

/* ladder list styles */
.top-list-container { background:#40200d url("../images/layout/cms/above_glow.jpg") 50% 0 no-repeat; border: 1px solid #956041; width: 90%; margin: 20px auto; }
.top-list-interior { padding: 5px; }
.top-list { width: 100%; }
.top-list td { padding: 7px 5px; font-size:12px; }
.top-list td img { vertical-align: middle; }
.top-list td.player-name { color: #ffae00; }
.top-list td.player-name img { margin-right: 9px; }
.top-list tr:nth-child(odd) td { background: #391c0b; }
.top-list tr:nth-child(2) td { color: #f0e29a; font-weight: bold; background-color: #5e321a; }
.top-list tr:hover td { color: #FFF; }
.top-list th { text-align: left; color: white; border-bottom: 1px solid #884e2c; padding:2px 0 3px 0; }

/* tab menu */
.tab-menu { height: 30px }
.tab-menu li { height: 30px; display: inline-block; margin-right: 3px }
.tab-menu li a { float: left; display: block; height: 30px; line-height: 30px; padding: 0 10px; background: #2b1507; color: #ffae00; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: 0 0 5px #0e0905; -webkit-box-shadow: 0 0 5px #0e0905; box-shadow: 0 0 5px #0e0905; }
.tab-menu li a:hover { color: #fff; background: #4e2f1b }
.tab-menu li a.tab-active { background: #ffae00; font-weight: bold; color: #000; }

/* tab menu - comments */
#comments .tab-menu { height:41px; padding:0 30px; margin:0 4px; border-bottom: solid 1px #80331f; }
#comments .tab-menu li { height:40px;  }
#comments .tab-menu li a { line-height:40px; height:40px; padding:0 15px; text-transform:uppercase; border:solid 1px #401d11; border-bottom:none; background:#24130b; border-radius:0; box-shadow:none; }
#comments .tab-menu li a { background: -webkit-linear-gradient(top, #24130b, #1a0f09);  background: -moz-linear-gradient(top, #24130b, #1a0f09);  background: -ms-linear-gradient(top, #24130b, #1a0f09);  background: linear-gradient(top, #24130b, #1a0f09);  }
#comments .tab-menu li a:hover {  box-shadow:0 0 20px #34180f inset;  }
#comments .tab-menu li a.tab-active { height:41px; border:solid 1px #80331f; border-bottom:none; color:#fff; background:#1a0f09; }
#comments .tab-menu li a.tab-active {  background: -webkit-linear-gradient(top, #34180f,#2a150c 50%, #1a0f09 );  background: -moz-linear-gradient(top, #34180f, #1a0f09 ); background: -ms-linear-gradient(top, #34180f, #1a0f09 ); background: linear-gradient(top, #34180f, #1a0f09 ); }
#comments .tab-menu li a.tab-active:hover { box-shadow:none; }

/* wow colors */

	/* item details and tooltips */
	.color-tooltip-yellow { color: #ffd100 !important; }
	.color-tooltip-red { color: #f00 !important; }
	.color-tooltip-green { color: #0f0 !important; }
	.color-tooltip-blue { color: #71D5FF !important; }
	.color-tooltip-beige { color: #FFFF98 !important; }

	/* faction */
	.color-tooltip-alliance { color: #247FAA; }
	.color-tooltip-horde { color: #b30000; }

	/* item quality */
	.color-q0, .color-q0 a { color: #9d9d9d !important; } /* poor (gray) */
	.color-q1, .color-q1 a { color: #ffffff !important; } /* common (white) */
	.color-q2, .color-q2 a { color: #1eff00 !important; } /* uncommon (green) */
	.color-q3, .color-q3 a { color: #0081ff !important; } /* #0070dd rare (blue) */
	.color-q4, .color-q4 a { color: #c600ff !important; } /* #a335ee epic (purple) */
	.color-q5, .color-q5 a { color: #ff8000 !important; } /* lengendary (orange) */
	.color-q6, .color-q6 a { color: #e5cc80 !important; } /* artifact (gold) */
	.color-q7, .color-q7 a { color: #e5cc80 !important; } /* heirloom (gold) */

	/* class */
	.color-c1,  .color-c1 a { color: #c69b6d !important; } /* warrior */
	.color-c2,  .color-c2 a { color: #f48cba !important; } /* paladin */
	.color-c3,  .color-c3 a, .color-g2 { color: #aad372 !important; } /* hunter */
	.color-c4,  .color-c4 a, .color-g1 { color: #fff468 !important; } /* rogue */
	.color-c5,  .color-c5 a { color: #f0ebe0 !important; } /* priest */
	.color-c6,  .color-c6 a { color: #c41e3b !important; } /* death knight */
	.color-c7,  .color-c7 a { color: #2359ff !important; } /* shaman */
	.color-c8,  .color-c8 a, .color-g3 { color: #68ccef !important; } /* mage */
	.color-c9,  .color-c9 a { color: #9382c9 !important; } /* warlock */
	.color-c10, .color-c10 a { color: #00ffba !important; } /* monk */
	.color-c11, .color-c11 a, .color-g4 { color: #ff7c0a !important; } /* druid */

	/* expansion */
	.color-ex0, .color-exp0 { color: #fff468 !important; } /* classic */
	.color-ex1, .color-exp1 { color: #aad372 !important; } /* the burning crusade */
	.color-ex2, .color-exp2 { color: #68ccef !important; } /* wrath of the lich king */
	.color-ex3, .color-exp3 { color: #ff7c0a !important; } /* cataclysm */
	.color-ex4, .color-exp4 { color: #00ffba !important; } /* Mists of Pandaria */

	/* 50% opaque dotted underlines for links with a tooltip */
	.color-c1  a.tip { border-bottom: 1px dotted #634e37; }
	.color-c2  a.tip { border-bottom: 1px dotted #7a465d; }
	.color-c3  a.tip { border-bottom: 1px dotted #556a39; }
	.color-c4  a.tip { border-bottom: 1px dotted #807a34; }
	.color-c5  a.tip { border-bottom: 1px dotted #808080; }
	.color-c6  a.tip { border-bottom: 1px dotted #620f1e; }
	.color-c7  a.tip { border-bottom: 1px dotted #122d80; }
	.color-c8  a.tip { border-bottom: 1px dotted #346678; }
	.color-c9  a.tip { border-bottom: 1px dotted #4a4165; }
	.color-c11 a.tip { border-bottom: 1px dotted #803e05; }

	.color-c1  a.tip, .border-c1  { border-color: #634e37; }
	.color-c2  a.tip, .border-c2  { border-color: #7a465d; }
	.color-c3  a.tip, .border-c3  { border-color: #556a39; }
	.color-c4  a.tip, .border-c4  { border-color: #807a34; }
	.color-c5  a.tip, .border-c5  { border-color: #808080; }
	.color-c6  a.tip, .border-c6  { border-color: #620f1e; }
	.color-c7  a.tip, .border-c7  { border-color: #122d80; }
	.color-c8  a.tip, .border-c8  { border-color: #346678; }
	.color-c9  a.tip, .border-c9  { border-color: #4a4165; }
	.color-c11 a.tip, .border-c11 { border-color: #803e05; }

	/* difficulty */
	.color-d1, .color-d1 a { color: #ff8040 !important; } /* orange */
	.color-d2, .color-d2 a { color: #ffff00 !important; } /* yellow */
	.color-d3, .color-d3 a { color: #40bf40 !important; } /* green */
	.color-d4, .color-d4 a { color: #808080 !important; } /* gray */
	.color-d5, .color-d5 a { color: #88aaff !important; } /* light blue */
	.color-d6, .color-d6 a { color: #ff0000 !important; } /* red */

	/* skill difficulty */
	.color-s0 { color: red; }
	.color-s1 { color: #FF8040; }
	.color-s2 { color: #FFFF00; }
	.color-s3 { color: #40BF40; }
	.color-s4 { color: #808080; }

	/* link hover color for the above */
	a.color-q0:hover, a.color-q1:hover, a.color-q2:hover, a.color-q3:hover, a.color-q4:hover, a.color-q5:hover, a.color-q6:hover, a.color-q7:hover,
	.color-q0 a:hover, .color-q1 a:hover, .color-q2 a:hover, .color-q3 a:hover, .color-q4 a:hover, .color-q5 a:hover, .color-q6 a:hover, .color-q7 a:hover,
	a.color-c1:hover, a.color-c2:hover, a.color-c3:hover, a.color-c4:hover, a.color-c5:hover, a.color-c6:hover, a.color-c7:hover, a.color-c8:hover, a.color-c9:hover, a.color-c10:hover, a.color-c11:hover,
	.color-c1 a:hover, .color-c2 a:hover, .color-c3 a:hover, .color-c4 a:hover, .color-c5 a:hover, .color-c6 a:hover, .color-c7 a:hover, .color-c8 a:hover, .color-c9 a:hover, .color-c10 a:hover, .color-c11 a:hover,
	a.color-d1:hover, a.color-d2:hover, a.color-d3:hover, a.color-d4:hover, a.color-d5:hover, a.color-d6:hover,
	.color-d1 a:hover, .color-d2 a:hover, .color-d3 a:hover, .color-d4 a:hover, .color-d5 a:hover, .color-d6 a:hover
	{ color: #fff !important }

/* wow borders */

	/* item quality */
	.border-q0 { border-color: #9d9d9d !important; } /* poor (gray) */
	.border-q1 { border-color: #ffffff !important; } /* common (white) */
	.border-q2 { border-color: #1eff00 !important; } /* uncommon (green) */
	.border-q3 { border-color: #0070dd !important; } /* rare (blue) */
	.border-q4 { border-color: #a335ee !important; } /* epic (purple) */
	.border-q5 { border-color: #ff8000 !important; } /* lengendary (orange) */
	.border-q6 { border-color: #e5cc80 !important; } /* artifact (gold) */
	.border-q7 { border-color: #e5cc80 !important; } /* heirloom (gold) */

/* wow background colors */

	/* gem */
	.bgcolor-g1 { background-color: gray; } /* Meta */
	.bgcolor-g2 { background-color: red; } /* Red */
	.bgcolor-g4 { background-color: yellow; } /* Yellow */
	.bgcolor-g8 { background-color: blue; } /* Blue */
	.bgcolor-g6 { background-color: orange; } /* Orange */
	.bgcolor-g10 { background-color: purple; } /* Purple */
	.bgcolor-g12 { background-color: green; } /* Green */
	.bgcolor-g14 { background-color: white; } /* Prismatic */

	/* skill difficulty */
	.bgcolor-s0 { background-color: red; }
	.bgcolor-s1 { background-color: #FF8040; }
	.bgcolor-s2 { background-color: #FFFF00; }
	.bgcolor-s3 { background-color: #40BF40; }
	.bgcolor-s4 { background-color: #808080; }

/* reusable icons */
.icon-wowhead	{ padding-left: 20px; background: url("../images/icons/wowhead.png") left center no-repeat; }
.icon-gold		{ padding-right: 15px; background: url("../images/icons/gold.gif") right center no-repeat; }
.icon-silver	{ padding-right: 15px; padding-left: 3px; background: url("../images/icons/silver.gif") right center no-repeat; }
.icon-copper	{ padding-right: 15px; padding-left: 3px; background: url("../images/icons/copper.gif") right center no-repeat; }
.icon-rss       { background: url("../images/icons/rss.gif") left center no-repeat; }
.icon-next      { background: url("../images/icons/next.gif") 0 0 no-repeat; }
.icon-next:hover{ background-position:0 -18px; }
.icon-dps,
.icon-healing,
.icon-healer,
.icon-tank { float: right; width: 16px; height: 16px; background: url("../images/icons/roles.png") no-repeat; }
.icon-dps    { background-position: 0 0; }
.icon-healer,
.icon-healing { background-position: -16px 0; }
.icon-tank   { background-position: -32px 0; }
.icon-heroic-skull { height: 12px; width: 10px; display: inline-block; background: url("../images/icons/heroic.gif") 50% 50% no-repeat; margin-left: 5px; }
.icon-daily-quest { padding-left: 10px; background: url("../images/icons/daily.gif") 0 50% no-repeat; margin-left: 6px; }
.icon-faction-0,
.icon-faction-1 { height: 15px; width: 15px; display: inline-block; vertical-align: middle; margin-left: 6px; background: url("../images/icons/alliance.png") left center no-repeat; }
.icon-faction-1 { background: url("../images/icons/horde.png") left center no-repeat; }
.icon-achievement-points { padding-left: 11px; background: url(../images/icons/achievements.gif) left center no-repeat; margin-left: 4px; }

/* framed icons */
.icon-frame { display: inline-block; overflow: hidden; padding: 1px; background-color: #000; background-position: 1px 1px; background-repeat: no-repeat; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px; border: 1px solid #434445; border-bottom-color: #2f3032; border-top-color: #b1b2b4; }
.icon-frame img { display: block; vertical-align: bottom; }
.icon-frame.frame-36,
.icon-frame.frame-50,
.icon-frame.frame-56 { height: 56px; width: 56px; -moz-box-shadow: #000 0 0 10px; -webkit-box-shadow: #000 0 0 10px; box-shadow: #000 0 0 10px; }
.icon-frame.frame-12 { height: 12px; width: 12px; }
.icon-frame.frame-14 { height: 14px; width: 14px; }
.icon-frame.frame-18 { height: 18px; width: 18px; }
.icon-frame.frame-27 { height: 27px; width: 27px; }
.icon-frame.frame-36 { height: 36px; width: 36px; }
.icon-frame.frame-50 { height: 50px; width: 50px; }
.icon-frame-gloss { display: block; height: 76px; width: 76px; background-position: 50% 50%; background-repeat: no-repeat; }
.icon-frame-gloss .frame { display: block; background: url("../images/icons/frames/frame-icon.png") no-repeat; height: 76px; width: 76px; }
.circle-frame { border-width: 2px; border-left-color: #B1B2B4; -moz-border-radius: 30px; -webkit-border-radius: 30px; border-radius: 30px; }
.table .icon-frame { vertical-align: middle; }

/* socket icons */
.icon-socket { display: block; position: relative; width: 15px; height: 15px; }
.icon-socket a.gem { display: block; width: 15px; height: 15px; }
.icon-socket a.gem img { display: block; width: 13px; height: 13px; padding: 1px 0 0 1px; }
.icon-socket .empty { position: absolute; left: 1px; top: 1px; width: 13px; height: 13px; }
.icon-socket .frame { position: absolute; left: 0; top: 0; width: 15px; height: 15px; background: url("../images/icons/frames/sockets.png") no-repeat; }
.icon-socket.socket-1  .empty { background-color: #29292a; } /* Meta */
.icon-socket.socket-2  .empty { background-color: #301010; } /* Red */
.icon-socket.socket-4  .empty { background-color: #403010; } /* Yellow */
.icon-socket.socket-8  .empty { background-color: #102040; } /* Blue */
.icon-socket.socket-14 .empty { background-color: #29292a; } /* Prismatic */
.icon-socket.socket-16 .empty { background-color: #000; }     /* Sha-touched */
.icon-socket.socket-32 .empty { background-color: #29292a; } /* Cogwheel */
.icon-socket.socket-1  .frame { background-position:  -45px   0; } /* Meta */
.icon-socket.socket-2  .frame { background-position:      0   0; } /* Red */
.icon-socket.socket-4  .frame { background-position:  -15px   0; } /* Yellow */
.icon-socket.socket-8  .frame { background-position:  -30px   0; } /* Blue */
.icon-socket.socket-6  .frame { background-position:  -90px   0; } /* Orange */
.icon-socket.socket-10 .frame { background-position:  -75px   0; } /* Purple */
.icon-socket.socket-12 .frame { background-position: -105px   0; } /* Green */
.icon-socket.socket-14 .frame { background-position:  -60px   0; } /* Prismatic */
.icon-socket.socket-16 .frame { background-position: -120px   0; } /* Sha-touched */
.icon-socket.socket-32 .frame { background-position:  -45px   0; } /* Cogwheel */

/* tooltips */
.character-tooltip { min-width: 150px; }
.wiki-tooltip { min-width: 250px; }
.wiki-tooltip .wiki-list { margin-top: 10px; }
.wiki-tooltip .wiki-list li { margin: 2px 0; }
.wiki-tooltip .wiki-list .item-link { line-height: 16px; }
.wiki-tooltip .wiki-list .item-link .frame-14 { float: left; margin-right: 5px; }
.wiki-tooltip .indent { padding-left: 10px }
.wiki-tooltip .indent-small { padding-left: 5px }

.item-specs .item-link { height: 22px; line-height: 22px; margin: 2px 0; font-weight: normal; background-repeat: no-repeat; }
.item-specs { margin-top: 10px; }
.item-specs li { margin: 1px 0; padding: 0; }
.item-specs .indent { padding-left: 10px }
.item-specs .indent-small { padding-left: 5px }
.item-specs .indent-top { padding-top: 10px }
.item-specs .icon-socket { float: left; margin-right: 4px; margin-top: 1px; }
.item-specs .reforge-arrow { position: relative; top: -1px; font-size: 10px; }
.item-specs a.color-q1:hover { text-decoration: underline; }
.item-specs .transmog-name { color:#ff80ff }

li.item-spec-group { margin-top: 10px; }

.character-tooltip .character-achievementpoints { margin-top: 4px; }
.character-tooltip .character-spec { margin-top: 10px; }

.character-spec { display: block; }
.character-spec .icon,
.character-spec .name { float: left; height: 14px; line-height: 15px; }
.character-spec .icon { margin-right: 5px; }
.character-spec .name { color: #F5EBD1; }

.character-achievementpoints { display: block; float: left; padding-right: 11px; background: url(../images/icons/achievements.gif) no-repeat right center; }

/* item inline links */
.item-link { display: inline-block; line-height: 22px; vertical-align: top; white-space: nowrap; }
.item-link .frame-18 { float: left; margin-right: 5px; }
.item-link .tip { border-bottom: 0; }
.item-link-large { height: 38px; line-height: 38px; }
.item-link-large .frame-36 { float: left; margin-right: 10px; }
.item-link-small, .item-link-small-right { display: inline-block; height: 18px; line-height: 18px; vertical-align: top; }
.item-link-small .frame-14 { float: left; margin-right: 3px; }
.item-link-small-right .count { float: left; }
.item-link-small-right .frame-14 { float: left; margin-left: 4px; }

/* money color/styles override */
.price { text-align: right; }
.price .icon-gold { color: #c28a13; display: inline-block; }
.price .icon-silver { color: #63625d; width: 13px; display: inline-block; }
.price .icon-copper { color: #a04d00; width: 13px; display: inline-block; }

/* bml */
.bml-toolbar .bml-item { background-position: -69px -26px; }
.bml-toolbar .bml-item:hover,
.bml-toolbar .bml-item.on { background-position: -103px -26px; }

/* to be refactored */
#news-updates .news-article .article-right .more { background:url("../images/icons/more-arrows.gif") no-repeat 100% 2px; padding-right:12px }
#news-updates .news-article .article-right .more:hover { background-position:100% -45px}
.opera #news-updates .news-article .article-right .more { background-position: 94% 2px; padding-right: 15px; }

/* error page */
.server-error #content .content-top { background-image: url("../images/layout/error-bg.jpg"); }
#server-error { color: #ad8f50;  }
#server-error h2, #server-error h3 { color: #fff1af; font-family:Palatino, Georgia, Times, serif; font-weight:normal; }


/* feeds */
.activity-feed li { background-repeat: no-repeat; background-position: 5px 50%; border-top: 1px solid #371b0d; position:relative; padding:13px 0 13px 29px; }
.activity-feed li:first-child { border-top: 0; }
.activity-feed li strong { color: #FEF092; font-weight: normal;}
.activity-feed dd { display: inline;}
.activity-feed dt { color: #71401f; font-size: 11px; white-space: nowrap; display: inline;}
.activity-feed li .icon, .activity-feed li .icon-frame { position: absolute; left: 0; top: 13px; }
.activity-feed li .icon { left: 1px; }
.activity-tooltip { min-width: 220px; }
.activity-feed li .icon {width: 20px; height: 20px; display: block; background: url(../images/profile/feed-icons.gif) no-repeat; }
.activity-feed li.crit .icon           	{ background-position:     0 0; }
.activity-feed li.bosskill .icon       	{ background-position: -20px 0; }
.activity-feed li.guild-levelup .icon,
.activity-feed li.guild-created .icon 	{ background-position: -40px 0; }
.activity-feed a.account { color: #00aeff; }

/* class icons */
.class-icon-56 { display:block; width:56px; height:56px; background:url(../images/icons/class/classes-56.jpg) no-repeat; padding:0 }
.class-icon-56.class-icon-56-death-knight,
.class-icon-56.class-icon-56-deathknight { background-position:0 0 }
.class-icon-56.class-icon-56-druid { background-position:-56px 0 }
.class-icon-56.class-icon-56-hunter { background-position:-112px 0 }
.class-icon-56.class-icon-56-mage { background-position:-168px 0 }
.class-icon-56.class-icon-56-paladin { background-position:-224px 0 }
.class-icon-56.class-icon-56-priest { background-position:0 -56px }
.class-icon-56.class-icon-56-rogue { background-position:-56px -56px }
.class-icon-56.class-icon-56-shaman { background-position:-112px -56px }
.class-icon-56.class-icon-56-warlock { background-position:-168px -56px }
.class-icon-56.class-icon-56-warrior { background-position:-224px -56px }
.class-icon-36 { display:block; width:36px; height:36px; background:url(../images/icons/class/classes-36.jpg) no-repeat; padding:0 }
.class-icon-36.class-icon-36-death-knight,
.class-icon-36.class-icon-36-deathknight { background-position:0 0 }
.class-icon-36.class-icon-36-druid { background-position:-36px 0 }
.class-icon-36.class-icon-36-hunter { background-position:-72px 0 }
.class-icon-36.class-icon-36-mage { background-position:-108px 0 }
.class-icon-36.class-icon-36-paladin { background-position:-144px 0 }
.class-icon-36.class-icon-36-priest { background-position:0 -36px }
.class-icon-36.class-icon-36-rogue { background-position:-36px -36px }
.class-icon-36.class-icon-36-shaman { background-position:-72px -36px }
.class-icon-36.class-icon-36-warlock { background-position:-108px -36px }
.class-icon-36.class-icon-36-warrior { background-position:-144px -36px }
.class-icon-36.class-icon-36-monk { background-position:-179px 0 }
.class-icon-18 { display:block; width:18px; height:18px; background:url(../images/icons/class/classes-18.jpg) no-repeat; padding:0 }
.class-icon-18.class-icon-18-death-knight,
.class-icon-18.class-icon-18-deathknight { background-position:0 0 }
.class-icon-18.class-icon-18-druid { background-position:-18px 0 }
.class-icon-18.class-icon-18-hunter { background-position:-36px 0 }
.class-icon-18.class-icon-18-mage { background-position:-54px 0 }
.class-icon-18.class-icon-18-paladin { background-position:-72px 0 }
.class-icon-18.class-icon-18-priest { background-position:0 -18px }
.class-icon-18.class-icon-18-rogue { background-position:-18px -18px }
.class-icon-18.class-icon-18-shaman { background-position:-36px -18px }
.class-icon-18.class-icon-18-warlock { background-position:-54px -18px }
.class-icon-18.class-icon-18-warrior { background-position:-72px -18px }

/* main sidebar navigation list */
.dynamic-menu { margin: 0 10px 0 20px; padding-bottom: 1px; background: url("../images/profile/sidebar-menu-sep.gif") 0 100% no-repeat; font-size:13px; }
.dynamic-menu li { padding-top: 1px; background: url("../images/profile/sidebar-menu-sep.gif") 0 0 no-repeat; white-space: nowrap; }
.dynamic-menu li.item-active a { color: #fff; font-weight: bold; background: none; }
.dynamic-menu li.item-active a.has-submenu:hover .arrow { background-position: 100% 9px; }
.dynamic-menu li.item-disabled a { color: #8B5F03; cursor: help; }
.dynamic-menu li.item-disabled a:hover .arrow { background-position: 100% 9px; }
.dynamic-menu li.item-disabled .arrow { background: none !important; }
.dynamic-menu li.has-submenu a .arrow { background: url("../images/profile/sidebar-menu-arrows.png") 100% 9px no-repeat; }
.dynamic-menu li.has-submenu:hover a .arrow { background-position: 100% -41px; }
.dynamic-menu li.back-to a .arrow { padding-right: 10px; font-style: normal; vertical-align: middle; background: url("../images/profile/sidebar-menu-arrows.png") 2px -91px no-repeat; padding-left: 18px; }
.dynamic-menu li.back-to:hover a .arrow { background-position: 2px -141px; }
.dynamic-menu li .dynamic-menu { display: none }
.dynamic-menu a { display: block; padding-left: 3px; }
.dynamic-menu a .arrow { display: block; line-height: 30px; text-overflow: ellipsis; white-space: nowrap; display: block; overflow: hidden; }
.dynamic-menu a:hover { background-color: rgba(0, 0, 0, 0.33333); }

/* brown modal box */
.modal-brown {
	background: #70432a url("../images/layout/modal-bg.jpg"); position: relative; padding: 4px; border-top: 1px solid #7d5031;
	-moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;
	-moz-box-shadow: 0 0 25px #000; -webkit-box-shadow: 0 0 25px #000; box-shadow: 0 0 25px #000; }
.modal-brown .modal-inner {
	background: #381a0f; border: 1px solid #985a39; border-top-color: #834e31; border-left-color: #834e31;
	-moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; }
.modal-brown .arrow-left,
.modal-brown .arrow-right,
.modal-brown .arrow-top,
.modal-brown .arrow-bottom { position: absolute; background: url("../images/layout/modal-arrow.png") 0 0 no-repeat; }
.modal-brown .arrow-left { width: 20px; height: 50px; left: -20px; background-position: 0 -25px; }
.modal-brown .arrow-right { width: 20px; height: 50px; right: -20px; background-position: -80px -25px; }
.modal-brown .arrow-top { width: 50px; height: 20px; top: -21px; background-position: -25px 0px; }
.modal-brown .arrow-bottom { width: 50px; height: 20px; bottom: -20px; background-position: -25px -80px; }
.modal-brown .close { display: block; width: 37px; height: 37px; position: absolute; top: -15px; right: -5px;
	background: url("../images/layout/lightbox/ui.png") -22px -157px no-repeat;
	-moz-border-radius: 18px; -webkit-border-radius: 18px; border-radius: 18px;
	-moz-box-shadow: 0 0 10px #241209; -webkit-box-shadow: 0 0 10px #241209; box-shadow: 0 0 10px #241209; }
.modal-brown .close:hover { background-position: -22px -208px; }


/* model viewer */
.model-viewer .model,
.model-viewer .model .bg,
.model-viewer .model .loading,
.model-viewer .model .viewer { width: 280px; height: 280px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; background: 0 0 no-repeat; }
.model-viewer .model { background: #3b1c11 url("../images/model-viewer/bg-280.jpg") 0 0 no-repeat; margin: 0 auto; position: relative; border: 1px solid #3a1c10; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: #241209 0 0 10px; -webkit-box-shadow: #241209 0 0 10px; box-shadow: #241209 0 0 10px; }
.model-viewer .model .loading { background: url("../images/loaders/canvas-loader-bright.gif") center center no-repeat; }
.model-viewer .model .zoom { position: absolute; right: 10px; bottom: 10px; display: none; width: 23px; height: 21px; background: url("../images/model-viewer/zoom.gif") no-repeat; -moz-box-shadow: #241209 0 0 3px; -webkit-box-shadow: #241209 0 0 3px; box-shadow: #241209 0 0 3px; }
.model-viewer .model .zoom:hover { background-position: -23px 0; }

	/* model - draggable */
	.model-viewer .can-drag { cursor: url("/wow/static/images/cursors/grab.cur"), e-resize; }
	.model-viewer .can-drag .zoom { display: block; }
	.model-viewer .dragging { cursor: url("/wow/static/images/cursors/grabbing.cur"), e-resize !important; }
	.model-viewer .can-drag:hover,
	.model-viewer .dragging { border: 1px solid #542818; }

	/* model - load error */
	.model-viewer .load-fail { border-color: #3a1c10 !important; cursor: default !important; }
	.model-viewer .load-fail .loading { background: url("../images/model-viewer/error.gif") center center no-repeat !important; }

	/* model buttons */
	.model-viewer .buttons { text-align: right; padding: 10px 10px 0 10px; text-align: center; }
	.model-viewer .buttons a { display: inline-block; width: 14px; height: 14px; margin-left: 5px; background: url("../images/model-viewer/button.gif") no-repeat; }
	.model-viewer .buttons a:hover { background-position: -18px 0; }
	.model-viewer .buttons a.button-active { background-position: 100% 0; }

/* new feature tip */
.new-feature-tip { width: 400px; height: 150px; position: absolute; left: 94px; top: 212px; z-index: 50; }
.new-feature-tip .clickable { display: block; background: url("../images/layout/feature-tip/game-guide-scenarios.png") 0 0 no-repeat; line-height: 100%; }
.new-feature-tip .clickable { height: 112px; padding: 38px 170px 0 25px; }
.new-feature-tip .clickable:hover { background-position: 0 -150px; }
.new-feature-tip .clickable .title { color: #30c4ab; text-transform: uppercase; font-size: 11px; }
.new-feature-tip .clickable .desc { color: #f1b765; line-height: 1.333em; font-size: 11px; }
.new-feature-tip .clickable strong { color: #fff; display: block; padding-bottom: 4px; font: bold 19px/115% "Palatino Linotype", "Georgia", "Times", serif; }
.new-feature-tip .close { width: 20px; height: 21px; position: absolute; top: 28px; right: 18px; background-position: 0 100%; }
.new-feature-tip .close:hover { background: url("../images/layout/feature-tip/game-guide-scenarios.png") 100% 100% no-repeat; }

/* comments */
#comments-pages-wrapper { padding:0; }
.comment-section, .bnet-comments { clear:both; }
#comments-reply-form,
.bnet-comments { padding: 15px 30px; margin-top: 30px; background: url("../images/layout/cms/comments_bg.jpg") 50% 0 repeat-x; }
form#comments-reply-form { padding: 15px 15px 15px 100px; }
.bnet-comments .comments-error-gate,
.bnet-comments .comment-tile { background:#2b1507; }
.bnet-comments .comments-form { background:none; }
.bnet-comments .comments-loading { background-image: url("../images/loaders/canvas-loader.gif")}
.bnet-comments .comments-form .avatar-outer a { display: block; height: 64px; width: 64px; overflow: hidden; }
#related-comments .subheader-2 { display:none; }
#related-comments .bnet-comments { background-image: none; margin-top: 0; }

.forum-parent:first-child { margin-top:0; }
.forum-parent { color:#71330e; font-size:20px; margin-top:16px; line-height:41px; padding-bottom:0; padding-left: 20px; text-transform:uppercase; letter-spacing: -0.05em; }
.forum-parent { background: url('../images/layout/cms/collapse-expand.png') no-repeat 0 1px; }
.forum-parent.collapsed { background-position: 0 -39px }
.forum-parent:active,
.forum-parent:hover,
.forum-parent:target { background-position: 0 -78px }
.forum-parent.collapsed:active,
.forum-parent.collapsed:hover,
.forum-parent.collapsed:target { background-position: 0 -119px }
.forum-parent:active,
.forum-parent:target { color: #fff }
.child-forums { padding:0; }
.non-verbose .forum-link { height: 47px; }
.forum-link { background-color: rgba(0, 0, 0, 0.25); color:#fab000; }
.forum-link .desc { color:#d3ac6b; }
.forum-link:hover { background-color: rgba(0, 0, 0, 0.35) }
.forum-link:hover span { color:#fff; }

#popular-topics { margin: 0; padding-top:0; }
#popular-topics .readmore { border-bottom-color:#552b12; font-size: 14px; padding: 0; padding-bottom: 6px; margin-top: 4px; margin-bottom: 6px; background: none; }
.coc { color:#71401F; margin: 0; text-transform: none; font-size: 11px; width: 290px; background:url("../images/layout/cms/code_bg.png"); font-style:italic;  }

.forum-link .int { width:230px; }
.forum-link .int-padding { padding:10px 12px 0 0; font-weight:bold; }
.forum-link .int-padding .desc { font-weight:normal }
.forum-link .forum-icon { width:54px; height:52px; padding-top:13px; }
.non-verbose .forum-link .forum-icon { padding-top:7px; }

.child-filter { padding-bottom: 10px; }
.filter-options a { color:#FFAE00; background-color:#2B1507; -moz-border-radius: 3px; padding: 0 10px; height: 30px; line-height: 30px; }
.filter-options a:hover { color:#fff; background-color:#4E2F1B; }
.filter-options a.selected  { color:#000; background-color:#FFAE00; font-weight: bold; }

/*Topic List*/

.forum-options a { color:#ffad00 }
div.forum-options a.active { color:#fff; font-weight: bold; }
.forum-options a:hover { color:#FFE682 }

#posts-container { padding:0; }
#posts td { border-bottom:1px solid #261913; }
#posts .post-th { color:#775e3a; }
#posts tr:hover td { background: #261307; }
#posts tr.featured { background: #052830; }
#posts tr.featured:hover { background-image:url(../images/layout/cms/row_featured_hover.gif); background-color:#042a0f; }
#forum-content .forum-post-icon { background-image:url(../images/layout/cms/post_active.png); background-position: 80% 4px; padding-left: 20px;}
#forum-content .forum-post-icon .blizzard_icon { background-image:url(../images/layout/cms/icon_blizzard.png); background-position:-5px 100%; }

#posts .post-pages .ui-pagination { background-image:url(../images/layout/cms/icon_subpaging.gif) }
#posts .post-pages .ui-pagination li a { color:#FFB100 }
#posts .post-pages .ui-pagination li a:hover { color:#FFF }
.forum-actions .ui-pagination { margin-top:8px }
.view-topic .forum-actions .ui-pagination { margin-top:3px }

#posts .post-author, #posts .post-lastPost a { color:#a68450; }
#posts .post-lastPost a { border-color:#443310; }
.post-lastPost .more-arrow { background-image:url(../images/profile/sidebar-menu-arrows.png); }

#posts .post-replies, #posts .post-views { color: #643416; }
#posts tr.read .post-title a { color:#a67100; }
#posts tr.read .post-title a:hover { color: #fff; }

#posts tr.read .forum-post-icon { background-image:url(../images/layout/cms/post_inactive.png); }
.tt_time { color: #8e8e8f; }
.tt_info { color: #8e8e8f; }

/* Thread */
.icon-frame img, #page-comments .portrait-b img, #page-comments .portrait-c img { -moz-box-shadow:0 0 10px #000; -webkit-box-shadow:0 0 10px #000; box-shadow:0 0 10px #000;  }

.button2 .icon-quote { background-image: url("../images/layout/cms/icon_quote.gif"); }

#content .back-arrow { background-image:url("../images/icons/link-arrows.png"); }
.bml-toolbar button { background-image:url("../images/icons/bml.gif"); background-color: transparent; }

#forum-content { padding-top:15px; }
#forum-content .section-header { color:#f9efa2; font:24px Arial; text-transform:none; }
#forum-content .section-header .topic { text-transform:uppercase; color:#5f2b0c; margin-right:0;  }

.bluetracker #posts .content a { color:#00B4FF; }
.bluetracker #posts .content { color:#00B4FF; }
.bluetracker #posts .desc { color:#006a8e; }
.bluetracker #posts .post-title .forum-source { color: #93e1f7; }
.bluetracker-icon-home  { background-image:url(../images/layout/cms/bluetracker_icon.png); }
.bluetracker { background-image: url(../images/layout/cms/bluetracker_bg.jpg); }

/* Topic */
.nextBlizz { background-image:url("../images/layout/cms/next_blizz.gif"); }
#forum-content .section-header .sticky-request { border-color:#281407; background-color:#1e1006; }
#forum-content .section-header .sticky-request:hover { background-color:#331b0a; background-image:-moz-linear-gradient(#341c0a, #221207); background-image:-webkit-gradient(linear,center top, center bottom,from(#341c0a),to(#221207)); }

#poll-container {	background-color:#1f1d1b; border-color:#8b8775;
	-moz-box-shadow:0 0 3px #000; -webkit-box-shadow:0 0 3px #000; }
#poll-container, #poll-container .poll-interior { -moz-border-radius:8px; }
#poll-container .poll-interior { color:#fff; }
#poll-container .selection-count { color:#BCA857; }
#poll-container .poll-actions a { background-image:url(../images/layout/cms/twin_buttons.png); }
#poll-container .poll-stats { color:#66655c; }
#poll-container .poll-stats span { color:#b6af8f;  }
#poll-container .results .result-container { background-image:url(../images/layout/cms/poll_bars.gif); background-color:#01151c; }
#poll-container .results .result { background-image:url(../images/layout/cms/poll_bars.gif); }
#poll-container .results .result span { background-image:url(../images/layout/cms/poll_bars.gif);
	text-shadow:0 0 2px #000E21,0 0 2px #000E21,0 0 2px #000E21,0 0 2px #000E21; }
#poll-container .poll-actions a:hover, #poll-container .poll-actions a.selected { color:#fff; }
#poll-container .poll-actions a { color:#CCC; }
#poll-container .result { color:#CCC;  }
#poll-container .max .result { color:#fff;  }

.post, .post .deleted { background-image:url(../images/layout/cms/post_bg.jpg); background-color:#1a0f08; }
#thread .blizzard { background-image:url(../images/layout/cms/post_bg_blizzard.jpg);background-color:#1a0f08; background-repeat: no-repeat; }
.high-rated { background-image:url(../images/layout/cms/post_bg_rated_high.jpg); background-color:#381D0A; }
.high-rated .post-detail { color: #fff; }
.low-rated .post-detail { color:#354155 }
#page-comments .high-rated { background:#421f08; }

.post-info .postData, .post-info .postData a { color:#f9efa2; }
.post-info .highrated { color:#58c012; }
.post-info .lowrated { color:#636363; }
.post-info .postData .date, .post-edited { color:#636363; }
.high-rated .post-info .date { color:#d67f47; }
/* .post.blizzard .post-info .postData .date, .post.blizzard .post-edited { color:#3d5365; } */

.post-user .character-info { left:116px }
.post-user, .talkback .post-user { background-image:url(../images/layout/cms/post_avatar_bg.png); }

.reporting .post-interior { background-image:url(../images/layout/cms/post_report_bg.gif); }

.post .character-options { }
.character-options .linebreak { border: none; }

.post-user .character-info { top:24px; width:120px;  }
.post-user .guild { font-size:10px; line-height:14px;}
.post-user .guild a:hover { color:#fff }
.post-user .character-realm { color:#855505; }
.post-user .character-realm, .post-user .character-desc { font-size:10px; }
.post-user .achievements { float: left; background: url(../images/icons/achievements.gif) right center no-repeat; padding-left: 0; padding-right: 11px; color: #C09A67; }
.talkback .post h4, #report-post h4 { letter-spacing: -0.05em; }


.post .blizzard-title { color:#00a2fb; }
.post .mvp-title { color:#81b558; }
#page-comments .mvp .context-link { color:#81b558 !important }

.post .deleted .user-name-container, .post .deleted .post-detail, .post .deleted .post-info-int, .low-rated .post-detail { color:#726456 }
#thread .post .deleted .context-link { color:#726456;  }

#page-comments .mvp .portrait-b img,
#page-comments .mvp .portrait-c img { border:2px solid #81b558;  }

.post-detail { line-height: 1.7em; }

.talkback, #report-post  { background-image:url(../images/layout/cms/reply_bg.jpg); background-color:#1a0f08; }
.talkback .blizzard { background-image:url(../images/layout/cms/reply_blizz_bg.jpg);}
.new-post .post-info-int { color:#96c7ff; }
.new-post .post-info-int .num-posts { color:#00e5b0; background:#012c5f; }
.bannedInfo { background:#222; }

.talkback-controls span { }
.talkback-controls a { background:#681c07; -moz-border-radius:3px; border-radius:3px; }
.talkback-controls a:hover { background: #802309; }
.talkback-controls a .c { color: #feba02 }
.talkback-controls a.selected { background:#270b07; }
.talkback-controls a.selected .c { color:#fff; font-weight: bold; }
.talkback-controls a.disabled { background:#681c07 !important; }
.talkback-controls a.disabled .c { color:#996e01 !important; }

.talkback-code { background-image:url(../images/layout/cms/reply_bg_btm.jpg); background-color:#1a0f08; color:#d3ac6b; padding-left:30px;  }
.talkback-code-interior { background-image:url(../images/layout/cms/code_bg.png); padding:30px; padding-left:15px;  }
.talkback-code .code-header { color:#ffe5a4; font-size:18px; font-weight:normal; }
.talkback-code strong { color:#feba02; }
.talkback-icon { background:url(../images/layout/cms/alert_img.png) no-repeat; padding-left:70px; }

.rate-post-wrapper { float:right; clear:both; }
.rate-post-login { padding:0 10px; }
.logged-in .rate-post-login { visibility: hidden; }

.rate-option > .button-left, .rate-option .button-right, .rate-option > .rate-down { height:21px; display:block; background-image:url("../images/layout/cms/icon_rating.png"); }
.rate-option > .button-left { padding-left:20px; background-position:-11px -8px;}
.rate-option > .rate-down { width:37px;  background-position: -10px -8px; }

.rate-option > .downvote-menu { position:absolute; }

.rate-option.rate-up .button-left { background-position: -52px -8px;  }
.rate-option.rate-up .button-right { padding: 2px 8px 0 0;  background-position: right -8px; }

.upvoted .rate-option > .button-left, .upvoted .rate-option:hover > .button-left { background-position: -51px -80px; }
.upvoted .rate-option .button-right, .upvoted .rate-option:hover .button-right { background-position: right -80px; }
.upvoted .rate-option { color:#8f4415; }
.downvoted .rate-option > .rate-down, .downvoted .rate-option:hover > .rate-down { width:37px;  background-position: -10px -80px; }

.rate-option:hover > .button-left { background-position: -52px 64px; }
.rate-option:hover .button-right { background-position: right -44px; }
.rate-option:hover > .rate-down { width:37px;  background-position: -10px -44px; }

.rate-option { float:right; margin:0 5px 0 0; visibility:hidden; }
.rate-option.keep-shown { visibility:visible; }
.rate-option .ui-dropdown { width:36px; }
.rate-option .ui-dropdown .dropdown-wrapper { top:0; width:85px; }
.rate-option .ui-dropdown .dropdown-wrapper a { padding:2px 10px 2px 20px;  }

#content .karma .rate-btn-holder.selected .rate-btn, #content .karma .rate-btn-holder.selected:hover .rate-btn { color:#8f4415; }
#content .rate-btn, #content .karma .rate-btn-holder.selected:hover .rate-btn { color:#eaa001; }

.rate-option .ui-dropdown .dropdown-wrapper .report-comment a { color: #ffab00; background-image: url("../images/layout/cms/alert_icon.png"); background-repeat:no-repeat; background-position:10px 50%; padding-left:36px; line-height:20px; border-top:solid 1px #573500; }
.rate-option .ui-dropdown .dropdown-wrapper .report-comment a:hover { color:#fff; background-color: #471807; }


/* Post Reporting */

#report-post { display:none; }
#report-post table { width:100%; }
#report-post td { vertical-align:top; }
#report-post .report-detail { font-size:12px; font-weight:normal; width:75%; }
#report-post #report-detail { width:90%; border-radius:8px; }
#report-post .report-data, #report-post .report-submit { padding:10px 0;}

#report-post .report-desc { text-align:right; font-size:14px; }
#report-post .report-desc div { padding:0 20px; }
#report-post .report-desc div small { font-size:10px; display:block; }

#report-post .report-desc, #report-post .report-detail { padding-top:10px; }

#report-success { display:none; padding:20px; text-align:center; }
#page-comments .reporting, #thread .reporting .post-interior { background-position:50% 100%; background-repeat:no-repeat; }

/*Forums */
.post-user .avatar-interior img, .post-user .avatar-interior { height:84px; width:84px; }
.post-user, .talkback .post-user { height:133px; padding-right: 40px; }
.post-user .avatar { left:22px; top:26px; }
#thread .blizzard { border-bottom:none; }
.mod_panel { border-bottom:1px solid #2d1f16; }

/* Polls */
#poll-container { position:relative; margin:20px 80px 50px; font-size:11px; background:#1f1d1b; border: solid 1px #8b8775; border-radius:8px; box-shadow:0 0 3px #000; }
#poll-container .poll-interior { color:#fff; padding:12px 40px 15px; }
#poll-container, #poll-container .poll-interior { border-radius:8px 0 4px 0; }
#poll-container h2 { font-size:14px; color:white; font-weight:normal; padding:5px 100px 14px 0; }
#poll-container .selection-count { color:#BCA857; font:italic bold 11px/14px Trebuchet MS; position:absolute; right:14px; top:14px; text-align:right; }

#poll-container .poll-stats { position:relative; bottom:-16px; left:0; z-index:1; padding-right:200px; display:block;  color:#66655c; }
#poll-container .poll-stats span { color:#b6af8f;  }
#poll-container .poll-actions { position:absolute; right:14px; bottom:-17px; z-index:2; }

#poll-container .results { display:none; }
#poll-container.results-only .results { display:block; }
#poll-container .results .result-container { padding:1px 0; background:url(../images/layout/cms/poll_bars.gif) 0px -36px no-repeat #01151c; }
#poll-container .results .result { width:100%; height:16px; color:#ccc; background:url(../images/layout/cms/poll_bars.gif) 0 -18px no-repeat; }
#poll-container .results .result span { background-image:url(../images/layout/cms/poll_bars.gif); text-shadow:0 0 2px #000E21,0 0 2px #000E21,0 0 2px #000E21,0 0 2px #000E21; }
#poll-container .max .result { color:#fff; background-position:0 0; }

#poll-container.results-only .poll-options { display:none; }
#poll-container .poll-option { display:block; line-height:24px; }
#poll-container .poll-option input { margin:0 10px; vertical-align:middle; }

#poll-container .results table { width:100%; border-collapse:collapse; }
#poll-container .results td { padding:5px; }
#poll-container .results table td:first-child { text-align:right; white-space:nowrap; max-width:50%; }
#poll-container .results table td:last-child { min-width:50%; width:100%; }
#poll-container .verbose table td:first-child { width:50%; white-space:normal; }
#poll-container .verbose table td:last-child { width:50%; }

#blog #poll-container .results { width:460px; }


