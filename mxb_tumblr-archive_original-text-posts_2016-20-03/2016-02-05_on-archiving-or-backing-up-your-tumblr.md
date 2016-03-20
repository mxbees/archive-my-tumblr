---
id: 138737554824
slug: on-archiving-or-backing-up-your-tumblr
date: 2016-02-05 17:25:37 GMT
tags:
- tech support
- op
title: on archiving or backing up your tumblr
---
There are few ways to do this. Before tumblr made some changes to their API, it was actually a lot easier... But now... not quite as much since one of the main tools I used to use doesn't work (and I haven't figured out how to replicate it myself... bc my ruby skills aren't quite that advanced). But I'm going to list the ways I currently know that work:

<!-- more -->

##1) The True Archival Method

Right now, the current [standard for web archiving is the 'warc' format][warciso]. See also [the Library of Congress's info page about this format][warclc]. Creating a (w)eb (arc)hive of your tumblr is the best way to ensure data integrity and actual, proper preservation that meets today's standards. It is the format used by the Internet Archive. The main reason why this is better than other formats is because it captures essential metadata about the website.

For most people, since this requires the least amount of software installation (depending on your operating system), using the program 'wget' is probably the best way[^ext]. wget should come installed in most linux distros. For [mac users you can follow one of these methods][mac]. Windows users can try installing cygwin][win]. For most people, getting wget installed and useable on their computer is probably going to be the most difficult step. I can't really help much more because its been ages since I used an apple and for windows, I use the cygwin  method myself. If anyone cares to have my opinion, I think the [homebrew][brew] is likely to be the easier option.

Once you have wget installed, all you really need is the following command (see also [these instructions for using wget to download warcs][instruct]:

`wget "http://your-user-name.tumblr.com" --mirror --warc-file="name-of-file" --random-wait`

Depending on how many posts you have, this could take anywhere between hours and several days. Explanation of the command:

- wget -> this invokes the program
- http://your-user-name.tumblr.com -> the URL of your blog
- --mirror -> this tells wget to download your entire tumblr
- --warc-file="location" -> this tells wget that you want the download to create a warc file and where you want to save it.
- --random-wait -> this is so that you don't make tumblr mad by hitting their server to often and too quickly

The above will only work if your blog is indexable by search engines. If you normally leave this option off you can do one of two things:

1. Turn it off, create the warc, and then turn it back on.
2. Add `-e robots=off` to the end of the above command. This will instruct wget to download the site anyway. One note: it is general web courtesy to not crawl sites that have a robots.txt file that prevents. Only use this option on your own blog or the sites of people who've given you permission.

Once wget is done its thing, you'll have a `name-of-file.warc.gz` file in whatever directory/folder you ran the command (this is a compressed file). You'll also have a folder with your entire blog's content downloaded to it. You can open the `index.html` page and just poke around that way. You can also find a special program to directly view the warc file itself (although this is much more difficult).

##2) A complete non-archival copy.

If you don't actually care about preservation standards (and playing around with warc files is not something you want to do), you can run this command instead:

`wget "http://your-username.tumblr.com" --mirror -k --random-wait`

This will download your entire blog but convert all the links to internal/local links. So that you can literally just browse your website from the resulting folder with links that will keep you within your downloaded site (rather than bringing you to the site on the web).

##3) Backing up to wordpress

Some people might find the above a little... too much for them Another method you can use is Wordpress's import-from-Tumblr feature. 

[Here's a set of instructions for using wordpress.com to backup your tumblr][word].

This will also take a while, depending on how many posts you have. One thing to note about this method is that it'll save your data, but not as an exact copy of your tumblr. Which is probably something most people won't mind.

I do have one suggestion for people who do choose this method, it the import will only grab what you currently have. It won't keep up with any future posts. There is a reasonable way around this, once you've done the big import (and I actually do this myself).

Not sure if people have noticed that *some* but not all of my posts have an 'op' tag. This is actually the tag that I use to tell [if this then that][if] to save a post to my wordpress backup. So each new post with this tag gets backed up there. And I don't have to worry about staying up to date in the future. With [IFTTT][if] you can actually use any number of tags you want to 'crosspost'/save your tumblr posts to wordpress.

The wordpress option is the one I'd recommend for people who don't want to tackle the command line or care primarily about their data/content, rather than real preservation. The good thing about this option is that there are many more tools for extracting all your posts from wordpress than there are from tumblr. Its much easier to work with your data via Wordpress.

##Caveats

There are some limitations with the above...

First: Each of the above methods does *not* differentiate between your original posts and reblogs. This means it'll grab *everything*. All your posts and all your reblogs. This makes for some really messy data if you what you want is *your stuff only*.

Ways to deal with this problem:

- Clean up your tumblr archive *before* you back it up.
- Grab it all now and then clean up the backup.

If you've been consistent about tagging, then the first way is probably the better method, since you can selectively delete tumblr posts by tag (I actually have a script for this that I'll share when I get it cleaned up and comment on the code). 

In case anyone is curious, this is why I tag post 'delete later' and then delete them at the end of every month. It keeps my archives clean and, thus, easier to backup.

Either way, though, this will require a lot of work to clean up your data. Unfortunately, there really isn't a way around this.

[^ext]: I just googled for other tools and it looks like there is a [chrome extension for creating warc files](http://warcreate.com/). I have no idea how good it is because I don't use chrome and, thus, can't test it at the moment.

[warciso]: http://www.iso.org/iso/catalogue_detail.htm?csnumber=44717
[warclc]: http://www.digitalpreservation.gov/formats/fdd/fdd000236.shtml
[mac]: http://coolestguidesontheplanet.com/install-and-configure-wget-on-os-x/
[win]: https://cygwin.com/install.html
[brew]: http://brew.sh/
[instruct]: http://www.archiveteam.org/index.php?title=Wget_with_WARC_output
[word]: http://quickguide.tumblr.com/post/39780378703/backing-up-your-tumblr-blog-to-wordpress
[if]: https://ifttt.com