---
id: 139665022094
slug: how-i-finally-made-my-super-old-netbook-useable
date: 2016-02-20 16:06:25 GMT
tags:
- tech support
- op
title: how i finally made my super old netbook useable again
---
Okayyy! Since someone I know is in the process of doing this thing too. I thought this was five years old but its a 2010 model so...

My netbook is a [Toshiba nb300][net]. Specs are:

- 1.66 ghz intel atom
- 60gb solid state
- 2gb ram

(Note: I totally spent like $50 upgrading, as you can tell. Putting in a cheap, small storage SSD improved boot speed *immensely*. The extra memory is nice too.)

On picking a Linux distro...

<!-- more -->

I usually start with googling for lightweight distros but... there can be some issues with this. Like maybe I'd be more interested in puppy linux if it had straightfoward docs on how to install to HD. But it's meant to be run memory so... Meh.

The other thing is personal preferences.... Because of overall familiarity and such I tend to favour debian-based distros (and, in a pinch, will consider Ubuntu derivatives too). But that didn't mean I didn't try a bunch other ones, btw.

The other other thing is that... which distro is 'lightweight' will actually depend on your specific hardware (unsurprisingly). By and large, I've found that my netbook does not like ubuntu. Like... even with the SSD the boot times were ridiculously long. My netbook also does not like vanilla debian. The install fails everytime. 

You should also be prepared to spend like a day or two installing various distros to see how they work with your hardware and whether or not you like the aesthetics.

Another major factor is... what, exactly, you want from the netbook. Obviously I'mnot going to be running anything major. But... my minimal expectation is that it can run *some* browser without being a slow pain in the ass. I think I'm using qupzilla on my netbook. 

But honestly? Once you find a distro that suits, the real question is what you want for your desktop environment. Its pretty easy to forget that with linux you aren't confined to the desktop that the distro ships with. For my netbook the usual lightweight recs are just too much (ie LXDE or XFCE). Too much animation. Too much graphic processing and it slows everything down. I value speed over aesthetics. 

So the lightweight distro that ended up working well for me is the debian-based [Point Linux][point]. It uses MATE as its desktop but I uninstalled that pretty quickly. I'm using the [tiling windows manager i3][i3]. A tiling manager is actually a pretty decent choice for a netbook bc the screen is so fucking small that you'll be running most apps full screen. If you don't want to go this route, something like openbox or similar is a good alternative. 

Essentially: Leave the notion of having a 'full' desktop behind and you'll be much happier. A window manager is all you really need to run a browser.

Okay... what about doing anything other than browsing? Well... 

I love CLI apps. So I've pretty much offloaded almost everything else I do on a computer to the commandline. My music play is [MOC][moc]. You can use [MPlayer][m] for playing videos (or, as I've been doing, I've been encoding my videos in webm as default and you can just play this in any browser so you don't even need distinct app for playing video). [Midnight commander][mc] is great for if you want a 'graphic' based file manager. I use twitter from the commandline with [Turses][turses]. I keep synchronized notes using [a python CLI][sncli] for [simplenotes][simple]. [Mutt for email][mutt]. 

One thing to watch out for: do not install something like dropbox. Dropbox is a memory hog and you'll regret it. Lol. Oh! And if boot times are still slow, you might be better off booting to the CLI, rather than the GUI. Bc the netbook is small and portable, it's often what I'll use for travel. To take notes, tweet, etc at conferences. Using a terminal multiplexer like tmux and a good combination of CLI apps.... you can basically do most of what you might need to do without going to GUI. I literally only startx when I need to use a browser for something (but for anything that requires images/javascript/etc bc you can also use a CLI web browser if you just want to open twitter links to read an article). 

And I'm done being a nerd. Lol.

[net]: http://www.toshiba.eu/discontinued-products/toshiba-nb300-100/
[point]: http://pointlinux.org/
[i3]: https://i3wm.org
[moc]: https://moc.daper.net
[m]: http://www.mplayerhq.hu/design7/news.html
[mc]: https://www.midnight-commander.org
[turses]: https://github.com/dialelo/turses
[simple]: http://simplenote.com/
[sncli]: https://github.com/insanum/sncli
[mutt]: http://www.mutt.org/