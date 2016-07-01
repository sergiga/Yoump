   �      0http://eu.battle.net/wow/static/css/cms.css?v=37     %|� h��     %|��-0              �      
     O K   
   Date   Wed, 07 May 2014 23:54:05 GMT   Server   Apache   X-Frame-Options   
SAMEORIGIN   Last-Modified   Tue, 06 May 2014 18:25:34 GMT   Accept-Ranges   bytes   Cache-Control   max-age=86400   Expires   Thu, 08 May 2014 23:54:05 GMT   Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   text/css @charset "utf-8";

/* WoW CMS Overrides */
#right { margin: 0 20px 0 0; padding: 0; }
.homepage #right { padding-top: 15px; }

#news-updates h3, #news-updates .by-line { padding-left:3px; }
#news-updates .article-left, #news-updates .article-left img { width:139px; height:127px; display:block; }
#news-updates .article-left { -moz-box-shadow:0 0 20px -4px #000; -webkit-box-shadow:0 0 20px -4px #000; box-shadow:0 0 20px -4px #000; }
#news-updates .article-left a { border:1px solid #541F09; }
#news-updates .article-left a:hover { border-color:#CD9000; }

/* Overridden cms styles for common 5 upgrade. todo: clean up all css files, place overriding styles in proper places */

.homepage #content .content-top { padding-top:10px;  background: url("../images/layout/home-top.jpg") no-repeat; }
.homepage #content .content-bot:before, .blog-article #content .content-bot:before { position: absolute; height: 100%; width: 100%; top: 30px; left: 0; background: url("../images/homepage/shadow.png") repeat-y; display: block; content: ''; }
.homepage .blog-articles { padding:0 20px;  background: url("../images/layout/featured-news-top-bg.jpg") 0 -200px no-repeat; }
.news .left-content, .news .right-sidebar { position:relative; }
.news .left-content { width:645px;  }
.news.homepage .left-content { background:#2a160e; }
.news .right-sidebar { width:305px; padding:20px; }
.news .blog-load-more { margin: 30px 0 0;  }
.news .blog-load-more .load-more { background-color: #0A0908; border-radius:0; }
.news .left-content .blog-load-more { margin: 20px; }
.news.homepage .left-content .blog-load-more .load-more { background-color: #1a0f09; }
.news .blog-articles .article-wrapper .article-content .article-summary { color: #a99877; }
.news .comments-link { background: url("../images/layout/cms/blog_icons.gif") -16px -13px; }
.news .comments-link:hover { background-position: -16px -13px; }
.news .blog-articles .article-wrapper { margin:0; background:none; }
.news .blog-articles .article-wrapper .article-content .article-summary{ width:auto; }
.news .featured-news .article-wrapper .article-content { width:190px; }
.news .featured-news .article-wrapper .article-image, .news .blog-articles .article-wrapper .article-image { border:solid 1px #541f09; }
.news .featured-news .article-wrapper .article-meta, .news .blog-articles .article-wrapper .article-meta { color: #855b47; }

.news .featured-news { position:relative; background: url("../images/layout/featured-news-top-bg.jpg") no-repeat; }
.bnet-offer-bg { padding:0; }
.sidebar .sidebar-top { padding:0; }
.sidebar .sidebar-bot { padding:0; }
.sidebar .sidebar-loading { padding:100px 25px; top:25px; left:0; }

#content { position:relative; }
.homepage #content .content-trail { position: absolute; top: 0; left: 0; right: 0; z-index: 35; background: url("../images/layout/trail-bar.png") 0 10px no-repeat; }
.ui-slideshow .mask { background:url("../images/layout/slideshow-mask.png"); }

.news .blog-articles .article-wrapper {	border-top: 1px solid #3a2015; 	box-shadow: 0 -1px 0px #1b100d; }
.header-2, .header-2 a { color:#f5ebd1; }
a:hover .header-2 { color:#fff; }
#recent-articles .article-block .image { border:solid 1px #483a30; }

.news .blog-articles .article-wrapper .article-content .header-2 { font-size:18px; }

.sidebar,
.sidebar .sidebar-top,
.sidebar .sidebar-bot { background:none; }

.ui-slideshow .caption { color:#8f7a5f }
.ui-slideshow .caption h3, .ui-slidehshow .caption h3 a { font-size:20px; color:#f3e6d0; }

/* Common */
.more { background:url("../images/icons/more-arrows.gif") no-repeat scroll 100% 2px transparent; padding-right:12px }
#posts .last-read { background-image:url("../images/icons/arrows.gif");  }
.clear, .clear:before, .clear:after { clear:both; }
.clear:before, .clear:after { display:table; content:''; }
.report-post { display: none; }

/* From cms-common.css */
#forum-content input, #forum-content textarea { background: #f1ebd7; padding: 10px; }
#forum-content input { padding: 5px 10px; }

/* Blog */

#left { width:646px; } /* Wow site is smaller (?!) */
.featured-news,
#blog-container .featured-news { background:url(../images/homepage/featured_bg.jpg) 0 100% no-repeat; padding-left: 25px; }

#blog-container .featured-news { background-image:url(../images/homepage/featured_sub_bg.jpg); }
.featured-news .featured a .featured-img { -moz-box-shadow:0 0 20px #000; -webkit-box-shadow:0 0 20px #000; box-shadow:0 0 20px #000; -moz-border-radius: 3px; border-radius: 3px; border-color:#372511; }
.featured-news .featured a:hover .featured-img { border-color: #CD9000; }
.featured-news .featured-desc { font-size:12px; font-weight: bold; line-height: normal; }
.sidebar-content .featured-news { background: none; }

#news-updates .news-article { padding-top:40px; padding-left: 25px; padding-bottom:15px; background:url(../images/homepage/news-bg.jpg) no-repeat; }
#news-updates .news-article.first-child { padding-top:50px; background-image:url(../images/homepage/news-bg-first.jpg); }

.blog-paging { background:url("../images/homepage/news-bg.jpg") 50% 100%; }

a.comments-link { background-image:url("../images/layout/cms/blog_icons.gif"); }
.by-line, .byline  { color:#855b47; }
#news-updates h3 { line-height: 1.08em; }
#news-updates h3 a { font-size:22px; color:#fff8d6; letter-spacing:-0.03em; font-weight:bold; }
#news-updates .article-right { width:430px; }
#news-updates { background:url(../images/homepage/news-btm.jpg) 0 100% no-repeat #23120B; padding-bottom: 40px; }

#blog { background-image:url("../images/layout/cms/blog_bg.jpg"); background-repeat: no-repeat; padding: 50px 25px 0 25px; min-height:503px; }
#blog.damocles-edit { background-color:#1A0F08; }

h3.blog-title { font-size:24px; color:#fdeea4; font-weight:bold; }
#blog .header-image { overflow: hidden; -moz-box-shadow:0 0 20px #000; -webkit-box-shadow:0 0 20px #000; box-shadow:0 0 20px #000; padding:0; margin-top: 10px; line-height:0; }
#blog .detail { padding: 20px 0; }
#blog .detail strong { color:#f4ce98; }
#blog .keyword-list, #blog .community-share { border-color:#40200d; }

#content .cm-action { color:#009CFF; }

.karma-feedback, .prev-vote { background: #28160a; border:none; }
.prev-vote { color: #cc8f0e; }
#content .rate-action a { color: #fffac1; }

.rate-post-wrapper { float:right; clear:both; }
.rate-post-login { padding:0 10px; }

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

#report-success { display:none; padding:20px; }
#page-comments .reporting, #thread .reporting .post-interior { background-position:50% 100%; background-repeat:no-repeat; }

/*Forums */
.post-user .avatar-interior img, .post-user .avatar-interior { height:84px; width:84px; }
.post-user, .talkback .post-user { height:133px; padding-right: 40px; }
.post-user .avatar { left:22px; top:26px; }
#thread .blizzard { border-bottom:none; }
.mod_panel { border-bottom:1px solid #2d1f16; }

.cms-announcement { background-color: #010308; background-image: url(../images/layout/cms/announce_bg.jpg); margin: 20px auto;
					-moz-box-shadow:2px 2px 15px #000000; -webkit-shadow:2px 2px 15px #000000; box-shadow:2px 2px 15px #000000; }
.cms-announcement .announce-content { padding: 20px 20px 20px 85px; }
.cms-announcement .announce-detail { color: #e9bd7f }
.cms-announcement .announce-sig { color: #00b4ff }
#station-content .right-column .module { width: 285px; }

/*Station*/
.station-home #content .content-top { background:url(../images/layout/cms/bt-lite-bg.jpg) no-repeat; }
#station-view { padding-bottom:0; }
#station-view .readmore { font-size:12px; text-transform:uppercase; color:#f0e29a; padding-top:3px; border-bottom-width:2px; background:url(../images/icons/subsection_bg.gif) 100% 56% no-repeat; }
#station-view .bt-link.readmore { margin-top:43px; }
#station-view .bt-lite { padding-top:58px; padding-bottom:32px;  }
#station-view .bt-mask-l, #station-view .bt-mask-r { background-image:url(../images/layout/cms/bt_mask_bg.png); background-position:0 -58px }
#station-view .bt-mask-r { background-position:right -58px }
#station-view .bt-set { background-image:url(../images/layout/cms/bt_lite_bg.png); }
#station-view .bt-set a .desc { color:#004e8a; }
#station-view .bt-set a .info .char { color:#000; }
#station-view .bt-set a .info { color:#613916; }
#station-view .bt-mask-l, #station-view .bt-mask-r { height:230px; }
#station-view .bt-set a:hover { background-image:url(../images/layout/cms/bt_lite_bg.png); }
#station-view .bt-set a:nth-child(1):hover { background-position:0 bottom; }
#station-view .bt-set a:nth-child(2):hover { background-position:-307px bottom; }
#station-view .bt-set a:nth-child(3):hover { background-position:-614px bottom; }

#station-view .bt-right, #station-view .bt-left {	background-image:url(../images/layout/cms/bt_lite_ctrl.gif); top:128px; }

#station-content, #forum-list { padding-top:0 }
#station-content { padding:0; background:url('../images/community/bg-community-body2.jpg') repeat-y 0 0 }
#station-content .station-content-wrapper { background:url('../images/community/bg-community-body3.jpg') no-repeat 0 100% }
#station-content .station-inner-wrapper { padding:10px 14px; background:url('../images/layout/cms/bg-forum.jpg') no-repeat 0 0 }
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
#forum-list { width: 604px; }
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
.forum-actions .ui-pagination { margin-top:10px }

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

/* sidebar */
.sidebar-module { padding: 0; margin:0 0 35px; }
.sidebar-module .sidebar-title { margin-bottom: 6px; border-bottom: 2px solid #552b12; padding-bottom: 6px; }
.sidebar-module .sidebar-title h3 { color: #FEF092; text-transform: uppercase; font-size: 14px; font-weight: normal; }
.right-sidebar .sidebar-module .sidebar-title h3 a { color: #FEF092; padding-right: 20px; background: url("../images/icons/next.gif") 100% 50% no-repeat; }
.right-sidebar .sidebar-module .sidebar-title h3 a:hover { color: #fff; }
.sidebar-module .sidebar-content { padding: 0; }
.sidebar-module .sidebar-content.loading { padding: 40px; background: url("/wow/static/images/loaders/canvas-loader.gif") 50% 50% no-repeat }
.sidebar-module .sidebar-content .empty { color: #C09A67; }
.sidebar-module .sidebar-all { text-align: right; padding-top: 10px }
.sidebar-module .sidebar-all a { padding-right: 12px; background: url("/wow/static/images/icons/more-arrows.gif") 100% 2px no-repeat }
.sidebar-module .sidebar-all a:hover { background-position: 100% -45px }
.sidebar-module .sidebar-error { padding: 10px 0 5px 0; text-align: center; color: #C09A67;}
.sidebar-module .date { color: #71401F; font-size: 11px; }
.sidebar-module .activity-feed li { padding: 10px 0 10px 20px; }
.sidebar-list { margin: 0; }
.sidebar-list li { padding: 6px; border-bottom: 1px solid #271b15; }
.sidebar-list li:last-child { border-bottom: 0; }
.sidebar-list .icon-frame { float: left; margin-right: 10px; }
.sidebar-cell { padding: 7px 0; border-bottom: 1px solid #271b15; float: left; width: 50%; }
.sidebar-cell span { color: #71401f; }
.sidebar-tile { padding: 6px; display: block; color: #f5d3a2; border-bottom: 1px solid #271b15; }
.sidebar-tile:last-child { border-bottom: 0; }
.sidebar-tile .icon-frame { float: left; margin-right: 10px; }
.sidebar-tile strong { color: #F9EFA2; }
.sidebar-tile:hover { background: #2b1507; color: #fff; }
.sidebar-tile:first-child { margin-top: 5px; }
#sidebar-auctions .float-right { color: #71401F; }
#sidebar-auctions strong { color: white; }
#sidebar-auctions a:hover strong { text-decoration: underline; }
#sidebar-auctions .sidebar-cell { font-weight: bold; }
#sidebar-auctions .sidebar-cell ul { padding-left: 10px; font-weight: normal; }

/* Events */
.sidebar-events h4 {font-weight:normal; padding: 7px 0 4px; font-size:12px;}
.sidebar-events li.player-event { cursor: help; }
.sidebar-events .time-relative { color: #71401F }
.sidebar-events li .actions { display: none; padding-top: 10px; }
.sidebar-events .info-wrapper { display: block; float: left; width: 250px;}
.sidebar-events .info-wrapper .title { width: 210px; display: block; word-wrap:break-word}
.sidebar-events .confirmed, .sidebar-events .available, .sidebar-events .accepted, .sidebar-events .signedUp { color: #0ad71a; }
.sidebar-events .tentative { color: #d66225; }
.sidebar-events .invited, .sidebar-events .notSignedUp { color: #e9e9e9; }
.sidebar-events .declined { color: #ff1815; }
.sidebar-events .date-status { float: right; text-align: right; }
.sidebar-events .pending-events-notice { float: right; color: #fff; font-size: 12px;}

#sidebar-bnet-ads { font-size: 12px; font-weight:bold; font-family: Arial, Helvetica, sans-serif; }
#sidebar-bnet-ads .subtitle { color: #71401F; font-weight: normal; padding-top: 5px }
#sidebar-friends a { line-height: 29px; }
#sidebar-friends strong { color: #BD8100; }
#sidebar-friends a:hover strong { color: white;}

a.sidebar-esports { display: block; width: 285px; height: 97px; border: 1px solid #372511; background: url("../images/sidebar/esports.jpg") no-repeat 0 0;
	border-radius: 5px; margin: 10px auto 0 auto; }
a.sidebar-esports:hover { background-position: left bottom; border-color: #ffb100; }

/* Under Dev */
	/* Currently in Development */
#sidebar-under-dev a.sidebar-under-dev { display: block; width: 295px; height: 110px; border: 1px solid #372511; background: url("../images/sidebar/under-dev/under-dev.jpg") no-repeat 0 0;
	border-radius: 5px; margin: 10px auto 0 auto; }
.es-mx #sidebar-under-dev  a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_es-mx.jpg") no-repeat 0 0; }
.es-es #sidebar-under-dev  a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_es-es.jpg") no-repeat 0 0; }
.it-it #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_it-it.jpg") no-repeat 0 0; }
.ru-ru #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_ru-ru.jpg") no-repeat 0 0; }
.de-de #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_de-de.jpg") no-repeat 0 0; }
.fr-fr #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_fr-fr.jpg") no-repeat 0 0; }
.pt-pt #sidebar-under-dev a.sidebar-under-dev,
.pt-br #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_pt-pt.jpg") no-repeat 0 0; }
.zh-cn #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_zh-cn.jpg") no-repeat 0 0; }
.ko-kr #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_ko-kr.jpg") no-repeat 0 0; }
.zh-tw #sidebar-under-dev a.sidebar-under-dev { background: url("../images/sidebar/under-dev/under-dev_zh-tw.jpg") no-repeat 0 0; }
#sidebar-under-dev a.sidebar-under-dev:hover { background-position: left bottom; border-color: #ffb100; }
	/* Patch Notes */
#sidebar-under-dev a.latest-patch { display: block; width: 295px; height: 110px; border: 1px solid #372511; background: url("../images/sidebar/under-dev/latest-patch.jpg") no-repeat 0 0;
	border-radius: 5px; margin: 10px auto 0 auto; }
.es-mx #sidebar-under-dev  a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_es-mx.jpg") no-repeat 0 0; }
.es-es #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_es-es.jpg") no-repeat 0 0; }
.it-it #sidebar-under-dev  a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_it-it.jpg") no-repeat 0 0; }
.ru-ru #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_ru-ru.jpg") no-repeat 0 0; }
.de-de #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_de-de.jpg") no-repeat 0 0; }
.fr-fr #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_fr-fr.jpg") no-repeat 0 0; }
.pt-pt #sidebar-under-dev  a.latest-patch,
.pt-br #sidebar-under-dev  a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_pt-br.jpg") no-repeat 0 0; }
.zh-cn #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_zh-cn.jpg") no-repeat 0 0; }
.ko-kr #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_ko-kr.jpg") no-repeat 0 0; }
.zh-tw #sidebar-under-dev a.latest-patch { background: url("../images/sidebar/under-dev/latest-patch_zh-tw.jpg") no-repeat 0 0; }
#sidebar-under-dev a.latest-patch:hover { background-position: left bottom; border-color: #ffb100; }

/* Expansion Announcement */
#sidebar-expansion a.sidebar-expansion { display: block; width: 295px; height: 110px; border: 1px solid #372511; background: url("../images/sidebar/expansion/warlords.jpg") no-repeat 0 0;
	border-radius: 5px; margin: 10px auto 0 auto; }
.zh-cn #sidebar-expansion a.sidebar-expansion { background: url("../images/sidebar/expansion/warlords_zh-cn.jpg") no-repeat 0 0; }
.zh-tw #sidebar-expansion a.sidebar-expansion { background: url("../images/sidebar/expansion/warlords_zh-tw.jpg") no-repeat 0 0; }
#sidebar-expansion a.sidebar-expansion:hover { background-position: left bottom; border-color: #ffb100; }

#sidebar-expansion-alt .sidebar-content { width: 300px; }
#sidebar-expansion-alt .sidebar-content .learn-more { margin-top:10px; padding: 0 12px 0 0; display: block; text-align: right; background:url("../images/icons/more-arrows.gif") no-repeat 100% 5px; line-height:1.8em }
#sidebar-expansion-alt .sidebar-content .learn-more:hover { background-position: 100% -42px }
#sidebar-expansion-alt .sidebar-content .topic .date { display:block; font-weight:normal; line-height:115%; margin-top:4px; height:14px }

.sidebar-content .featured-news { padding-top: 0; line-height: 16px; }
.sidebar-content .featured-news a { color: #bd8100; }
.sidebar-content .featured-news .date { color: #71401f; }
.sidebar-content .featured-news .featured { margin-bottom: 0; }
.sidebar-content .featured-news .featured a { padding: 6px 20px 6px 8px; border-bottom: 1px solid #271b15; background: url(../images/layout/cms/arrow_r_hover.png) 100% -3px no-repeat; }
.sidebar-content #related-news .featured a { background:none; }
.sidebar-content .featured-news .featured a:hover { background-position: 100% -51px; background-color: #2b1507; }
.sidebar-content .featured-news .featured:last-child a { border-bottom: 0; }
.sidebar-content .featured-news .featured-desc { font-size: 11px; }

#sidebar-realm-status .realm-status { margin: 15px 0 0 50px; height: 30px; background: url("../images/icons/status.gif") 0 0 no-repeat; }
#sidebar-realm-status .realm-status .down,
#sidebar-realm-status .realm-status .up { width: 75px; height: 27px; line-height: 27px; float: left; padding: 0 0 0 35px; font-size: 14px; }
#sidebar-realm-status .realm-status .down { color: #c83424; }
#sidebar-realm-status .realm-status .up { color: #a3c425; }
#sidebar-realm-status .down-realms { margin: 10px 0 0 20px; list-style: square; color: #c83424; }
#sidebar-realm-status .down-realms li { margin: 5px; }
#sidebar-realm-status .pvp { color: #C33; }
#sidebar-realm-status .rp { color: #3C3; }
#sidebar-realm-status .status-icon { background: url("../images/icons/status.png") -1px 0 no-repeat; margin: 0 auto; height: 30px; width: 25px; }
#sidebar-realm-status .status-icon.up { background-position: -111px 0; }

.sidebar-bot { min-height: 200px; position: relative; }
.sidebar-loading { padding: 100px 25px; width: 250px; color: #71401F; text-align: center; position: absolute; top: 0; left: 0; background: url("../images/loaders/loader.gif") 50% 75% no-repeat; }
body.zh-cn .sidebar-loading { top: 400px; }

.poptopic-list a,
.poptopic-list a:first-child { padding-left: 8px; display: block; border-bottom: 1px solid #271b15; }
.poptopic-list a:hover { background-color: #2b1507; }
.poptopic-list a .int { padding: 6px 0; padding-right: 20px; background: url(../images/layout/cms/arrow_r_hover.png) 100% -5px no-repeat; }
.poptopic-list a:hover .int { background-position: 100% -53px; }
.poptopic-list a .title { text-overflow: ellipsis; -o-text-overflow: ellipsis; white-space: nowrap; overflow: hidden; display:block; width: 245px;}
.ff .poptopic-list a .title {white-space:normal; word-wrap:break-word; height:19px;}
.poptopic-list a .desc { color: #71401f; font-weight: normal; }
.poptopic-list a:last-child { border-bottom: 0; }

/* sidebar promos */
.promo { width: 300px; height: 250px; display: block; position: relative; margin: 0 0 25px 3px; -moz-box-shadow: #000 0 0 15px; -webkit-box-shadow: #000 0 0 15px; box-shadow: #000 0 0 15px; overflow: hidden; }
.promo.promo-wow .kr-promo {         background-image: url("../images/sidebar/bg-wow-kr.jpg"); width: 300px; height: 250px;  }
.promo.promo-wow .free-trial {       background-image: url("../images/sidebar/bg-wow.jpg") }
.promo.promo-bc .free-trial {        background-image: url("../images/sidebar/bg-bc.jpg") }
.promo.promo-wrath .free-trial {     background-image: url("../images/sidebar/bg-wrath.jpg") }
.promo.promo-cataclysm .free-trial { background-image: url("../images/sidebar/bg-cataclysm.jpg") }
.promo.promo-free-wow .free-trial {  background-image: url("../images/sidebar/free-wow-for-sc2/en-us.jpg") }
.promo .free-trial { width: 300px; height: 40px; line-height: 40px; display: block; text-align: center; padding: 155px 0 55px 0; vertical-align: middle; background-repeat: no-repeat }
.promo .free-trial:hover { background-position: 0 -250px; }
.promo .kr-promo { display:block; height:40px; line-height:40px; padding:155px 0 55px; text-align:center; vertical-align:middle; width:300px; }
.promo .kr-promo:hover { background-position: 0 -251px; }
.promo .buy-now { position: absolute; color: #fff; font-size: 18px; font-weight: bold; bottom: 15px; left: 0; width: 300px; text-align: center; }

.promo .promo-link { width: 300px; height: 250px; display: block; text-indent: -9999px; background-position: 0 0; background-repeat: no-repeat;}
.promo .promo-link:hover { background-position: 0 -250px; }

	/* presale */
	.promo.promo-presale { background: url("../images/sidebar/pre-sale/en-us.jpg") no-repeat; width: 300px; height: 250px; }
	.de-de .promo.promo-presale { background: url("../images/sidebar/pre-sale/de-de.jpg") no-repeat; }
	.es-es .promo.promo-presale { background: url("../images/sidebar/pre-sale/es-es.jpg") no-repeat; }
	.es-mx .promo.promo-presale { background: url("../images/sidebar/pre-sale/es-mx.jpg") no-repeat; }
	.fr-fr .promo.promo-presale { background: url("../images/sidebar/pre-sale/fr-fr.jpg") no-repeat; }
	.it-it .promo.promo-presale { background: url("../images/sidebar/pre-sale/it-it.jpg") no-repeat; }
	.pl-pl .promo.promo-presale { background: url("../images/sidebar/pre-sale/pl-pl.jpg") no-repeat; }
	.ru-ru .promo.promo-presale { background: url("../images/sidebar/pre-sale/ru-ru.jpg") no-repeat; }

	/* activate */
	.promo.promo-cataclysm-activate { background: url("../images/sidebar/cataclysm-activate/bg.jpg") no-repeat; width: 300px; height: 250px; }
	.promo-cataclysm-activate .activate { width: 250px; height: 50px; line-height: 50px; display: block; margin: 105px auto 10px auto; background: url("../images/sidebar/cataclysm-activate/activate.jpg") no-repeat; }
	.promo-cataclysm-activate .activate:hover { background-position: 0 -50px; }
	.promo-cataclysm-activate .digital,
	.promo-cataclysm-activate .retail { width: 175px; height: 30px; line-height: 30px; display: block; padding-left: 25px; margin: 10px auto; background: url("../images/sidebar/cataclysm-activate/digital.jpg") no-repeat; }
	.promo-cataclysm-activate .retail { background: url("../images/sidebar/cataclysm-activate/retail.jpg") no-repeat; }
	.promo-cataclysm-activate .digital:hover,
	.promo-cataclysm-activate .retail:hover { background-position: 0 -30px; }

	/* region specific */
	.promo.wow-merge-tw,
	.promo.wow-merge-tw a { display: block; height: 240px; width: 300px; background: url("../images/sidebar/wow-tw-merge.jpg") no-repeat; }

	/* region specific */
	.promo.wow-merge-tw,
	.promo.wow-merge-tw a { display: block; height: 240px; width: 300px; background: url("../images/sidebar/wow-tw-merge.jpg") no-repeat; }

/* static sidebar ad */
#sidebar-links.promo-ad a { border: none; display: block; width: 300px; height: 85px; margin: 10px auto 10px auto; }
#sidebar-links.promo-ad a.promo-authenticator { background: url("../images/sidebar/promos/eu-authenticator.jpg") no-repeat 0 0; color: #eee;}
#sidebar-links.promo-ad a.promo-authenticator:hover { background-position: 0 -85px; }
#sidebar-links.promo-ad a .buy-now-cart { display: block; float: left; height: 16px; left: 8px; line-height: 16px; padding-left: 28px; padding-right: 28px; position: relative; top: 51px; text-shadow: 1px 1px 1px #000000;}
#sidebar-links.promo-ad a.promo-gamescom2013 { margin-bottom: 20px; text-indent: -9999px; background: url("../images/sidebar/promos/gamescom/wow-gamescom2013_sidead-en-gb-299x224.png") no-repeat 0 0; color: #eee; height: 112px;}
#sidebar-links.promo-ad a.promo-gamescom2013:hover { background-position: 0 -112px; }

#sidebar-links .sidebar-link { display: block; font-size: 0; margin: 10px auto 0 auto; background: #000 top no-repeat; border: 1px solid #372511; -moz-box-shadow:0 0 6px #000000; -webkit-box-shadow:0 0 6px #000000; box-shadow:0 0 6px #000000; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; }
#sidebar-links .sidebar-link img { border-radius: 5px; }
#sidebar-links .sidebar-link:hover { border-color: #CD9000; background-position: bottom; }
body.zh-cn .sidebar-link { height:50px; width:302px; }

/* sotd */
.sotd { display: block; margin: 15px auto 0 auto; background: #000 50% 50% no-repeat; border: 1px solid #372511; height: 179px; width: 297px;  -moz-box-shadow:0 0 6px #000000; -webkit-box-shadow:0 0 6px #000000; box-shadow:0 0 6px #000000; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; }
.sotd .image { display: block; height: 137px; width: 295px; border: 1px solid #000; -moz-border-radius-topleft: 4px; -moz-border-radius-topright: 4px; border-top-left-radius: 4px; border-top-right-radius: 4px; }
.sotd .caption { padding: 10px; height: 20px; background: url("../local-common/images/opacity-carousel.png") repeat; -moz-border-radius-bottomleft: 4px; -moz-border-radius-bottomright: 4px; border-bottom-left-radius: 4px; border-bottom-right-radius: 4px; }
.sotd .caption a { background: url("../images/community/community-index-sprite.png") -90px -838px no-repeat; display:inline-block; font-size:11px; padding-left:13px; }
.sotd .caption a.view { background-position: 100% -865px; float: right; padding: 0 13px 0 0; }
.sotd:hover { border-color: #CD9000; }

/* comments */
#comments-pages-wrapper { padding:0; }
.comment-section, .bnet-comments { clear:both; }
#comments-reply-form,
.bnet-comments { padding: 15px 30px; margin-top: 30px; background: url("../images/layout/cms/comments_bg.jpg") 50% 0 repeat-x; }
.bnet-comments .comments-error-gate,
.bnet-comments .comment-tile { background:#2b1507; }
.bnet-comments .comments-form { background:none; }
.bnet-comments .comments-loading { background-image: url("../images/loaders/canvas-loader.gif")}
.bnet-comments .comment-tile .coment-foot { clear:both; }
.bnet-comments .moderator-controls { position: relative; z-index: 1; }
.bnet-comments .bnet-avatar { padding: 1px; background-color: black; border: 1px solid #483A30; border-bottom-color: #3D2F26; border-top-color: #887465; border-radius: 3px; }
#related-comments .subheader-2 { display:none; }
#related-comments .bnet-comments { background-image: none; margin-top: 0; }
.employee-icon { background-image: url(../local-common/images/icons/employee.gif); }

/* old markup, todo: convert to new
#page-comments { padding: 0 }
#page-comments h3 { padding: 0 20px 15px 20px; color: #F5EBD1; }
#page-comments .comment { color: #c09a67; background-color: #2b1507; }
#page-comments .high-rated { background-color: #4d260d; }
#page-comments .high-rated .content { color: #fff; }
#page-comments .comment .user .time a { color:#824f30; }
#page-comments .blizzard { background:#0d1a24; }
#page-comments .blizzard .user .time a { color:#3d5365; }
#page-comments .blizzard .content { color:#008cc6 }
#page-comments .nested .new-post .comment { background: #1a0f08 url("../images/layout/cms/comments_bg.jpg") 50% 0; }
#page-comments .new-post { padding: 0; margin-bottom: 15px; }
#page-comments .nested .comment-interior { padding-left: 95px; }
.comments-container .ui-pagination { margin-top:20px }
*/

/* bml*/
.post-detail code,
.post-detail pre { border-color: #48230b; background: #21130b; color: #fae5cf; }
.post-detail blockquote { border-color: #48230b; }
.post-detail blockquote:hover { border-color: #5d2e0f; }
.post-detail blockquote div { color: #71401f; }
.post-detail blockquote div a { font-weight: bold; }
.post-detail blockquote.quote-public { border-color: #48230b !important; color: #E9BD7F !important; }
.post-detail blockquote.quote-public:hover { border-color: #5d2e0f !important; }
.post-detail .bml-link-item .icon-frame { vertical-align: middle; margin-right: 5px; }

/* ie */
.ie #page-comments .new-post,
.ie #page-comments .new-post .comment,
.ie #page-comments .new-post .comment .comment-interior { z-index: 1000; }
.ie7 #thread { overflow: hidden; }
.ie7 .sidebar-events .info-wrapper .title { float: left; width: 200px; }
.ie7 .sidebar-events .info-wrapper .date { clear: both;}

#forum-content .forum-search input { padding-right: 30px; background: #fff url("../images/wiki/filter.gif") 98% 50% no-repeat; }


/* Post/Topic History */
.post-history-int {border:1px solid #2e1f1a;}

#sidebar-gear-store .gear-link {
	width: 300px;
	height: 110px;
	display: block;

	background: url("../images/sidebar/gear-store/wow-gear-banner.jpg") no-repeat;
}

#sidebar-gear-store .gear-link:hover {
	background-position: 0 -110px;
}