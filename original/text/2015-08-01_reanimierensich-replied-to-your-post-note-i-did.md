---
id: 125597357134
slug: reanimierensich-replied-to-your-post-note-i-did
type: text
date: 2015-08-01 14:49:27 GMT
tags:
- tech support
title: ''
---
<span class="activity"><a class="js-hover-trigger-TumblelogPopover" href="http://reanimierensich.tumblr.com/" target="_blank">reanimierensich</a>
 replied to your post</span> <a href="http://b-binaohan.tumblr.com/post/125593892764/note-i-did-my-monthly-archive-clean-up-today-all"><span class="summary">“note: i did my monthly archive clean up today. all twitter crossposts...”</span></a><blockquote>How do you delete them all? Do you delete them one by one or is there a program that will do them all for you?</blockquote><p>this is where i show off how nerdy i am... lol.</p><p>i actually wrote my own script to do it.&nbsp;</p><p>i start with a <a href="ifttt.com">IFTTT</a>&nbsp;recipe. it automatically logs the URL of any post tagged&nbsp;‘delete later’ or&nbsp;‘b binaohan tweets’ (or whatever my twitter tag is) in a dropbox text file.&nbsp;</p><p>i then have a couple ruby scripts that take the list of URLs and systematically deletes each one via the API (i think this depends on a ruby gem too, called <a href="https://github.com/mwunsch/tumblr">tumblr-rb</a>).&nbsp;</p><p>so every month, i just enter a few commands on my computer and viola! all the posts are gone.&nbsp;</p><p>i used to do my archive cleaning manually but... it was tedious. but it was also necessary before i started consistently tagging everything.&nbsp;</p><p>like, also have another script that will delete all posts with a certain tag, so while i don’t log all tags via dropbox, i have the ability to quickly and automatically remove content from my blog (something i sometimes do after backing it up).&nbsp;</p><p>if i were better at coding, i’d figure out a way to modify the tumblr-rb ruby gem so that it was even easier and included within the functionality there. but... i suck. lol.</p>