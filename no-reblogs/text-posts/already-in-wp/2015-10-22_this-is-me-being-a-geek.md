---
id: 131710901734
slug: this-is-me-being-a-geek
date: 2015-10-22 22:44:47 GMT
tags:
- tech support
- op
title: this is me, being a geek
---
A few years back I got into free and open source software (FOSS). These days, I still love the stuff. But... given that the tech field is largely filled with white techbr0s, its unsurprising that there are more than a few FOSS projects with incredibly shitty names.

This post is going to discuss four of the most common FOSS projects with shitty names and try to discuss alternatives.

Some of these alternatives aren't necessarily going to be accessible to everyone since... I tend to favour commandline programs, which isn't something that many people I know do (indeed, some of these projects aren't going to be relevant to a lot of ppl). Then again, this isn't meant to be a tutorial but rather me being a giant nerd.

tw: some reference to ableist slurs

<!-- more -->

##L\*me

This acronym stands for "L\*ME Ain't An Mp3 Encoder". I'm sure you get just which shitty ableist word this is. So... at least if you are using many FOSS audio apps, it is likely that this is the codec being used in the background to 'make' mp3s. I sort of knew about this. It became a problem once I started frequently using [ffmpeg][1] (easily my no. 1 tool for dealing with audio and video). Since it is a commandline program, it required that I type 'l\*me' over and over again and I refuse.

Anyone who has been following me on twitter probably already knows about my epic saga to find a replacement audio codec. I first decided to go with aac (which is the default for iTunes). I probably spent wayyyy too much time reading arguments by audio nerds about whether or not mp3 or m4a is better[^1].

I decided to go for m4a since a bunch of the audiobooks I have are in that format. And transcoding from lossy to lossy is generally not the best idea. This was fine and all...

But then after spending a weekend transcoding all of my audio to aac, I decided to go with [ogg][2], just because its a completely open/free format and, as noted in footnote one, at a high enough bitrate, there isn't really a massive difference.

Anyway, this isn't necessarily going to be a problem for a lot of people. Since I was surprised to learn from my bf that people like him (not tech geeks) apparently don't care about file formats, lol. I do, however, in part because digital preservation actually matters a lot for me. And open formats tend to be more widely supported.

##G*mp

Ah... the Gnu Image Manipulation Program. Depending on what you do, this might be a tough bit of software to let go of. It is pretty much the only viable FOSS alternative to Adobe's Photoshop. Which is, of course, really fucking expensive.

I used it for a while until I just couldn't fucking take the name anymore. And it isn't even just the name. It is that the developers have been critiqued for the name in the past and they don't care. Why? Because fucking white trchbr0s.

For me, it is good that I basically do zero image editing. Even more fortunately, the sort of image editing I tend to do (like making gifs or bulk resizing images) can be handled with [imagemagick][3]. So I learned how to use that and that was that.

Harder, though, was graphic design type stuff that I sometimes need to do for Biyuti Publishing. Fortunately, there is [inkscape][4], which is basically a FOSS alternative to Adobe Illustrate. After reading a bunch of stuff, I sort of discovered that, in general, they recommend that you use Photoshop to edit images but use Illustrator for graphic design (something to do with vectors or whatever). And, indeed, it turned out that a bunch the stuff I thought I needed photoshop for could be done in Inkscape. So between that and imagemagick, I'm basically set.

##Ubuntu

Whenever I critique Ubuntu for being a culturally appropriative name, a bunch of techbr0s always scream "but Mark Shuttleworth is from South Africa" which I always have to reply: he is a white settler from South Africa and, thus, its appropriation. Because settler.

I actually just read parts of [the wikipedia article on the history of the term][5] and it just gets worse, lol:

> Based on the context of Africanization propagated by the political thinkers in the 1960s period of decolonization, ubuntu was used as a term for a specifically African (or Southern African) kind of socialism or humanism found in blacks, but lacking in whites, in the context of the transition to black majority rule in Zimbabwe and South Africa.

Shuttleworth is a very rich white man who doesn't even live in South Africa anymore. So fuck him and naming his linux distro 'ubuntu'.

The other other problem with this is that Ubuntu is one of the most popular Linux distros out there. And many other distros are based on Ubuntu too. It also has, perhaps, one of the more... friendly environments for a new Linux user. Lots of software in the repositories and a fairly familiar desktop environment.

Fortunately, for me, Ubuntu is actually based off of another distro, [Debian][6]. Debian is a great Linux distro, imo, even if it doesn't tend to be as aesthetically pleasing as Ubuntu (it really depends on how much time you spend customizing the look). Debian is also widely supported (in terms of software packages) so. Done and done.

Some might be asking why they'd bother with trying to learn a new operating system at all. Interestingly, I recently [saw a blog post about tech accessibility][7] that partially answers this question:

> One of the projects she worked on was working with people to figure out their settings preferences on a computer and codify or summarize them, so that they are portable. It struck me that this is a little thing that can be really important in terms of access, but also in terms of letting people customize things to suit them. It allows them to decide for themselves what works best.

Which is honestly why I'm stuck with Linux. Because... you can actually basically completely configure your computing environment to exactly what works best for you. And, better yet, you can take all of your config files and transfer them from computer to computer. This is what I do. I think I regularly use three different computers? And they all share the same settings and customizations that make using computer much easier for me.

One example: My desktop environment has an option that allows you to replace most icons with text. This is great for me because as icons get more and more 'aesthetic' they also get more and more abstract and confusing for my brain. Much easier, for how my brain works, to simply *read* the function of that button instead of trying to understand the mysterious symbols. I honestly stick with this particular desktop environment for this feature alone (I'm sure I could do this in others, but it is easy in this one).

##Apache

This is web server software. A non-trivial part of the internet runs on this software. And it has this fucking awful name. And there is even a whole fucking apache foundation that supports a bunch of other projects too. It's pretty hard to get away from this.

However, this doesn't mean that **I** need to be using apache when I deploy a server. At least not when a good alternative exist, [nginx][8]. Sure, sure, you can get involved in various techbr0 fights over which is better, but I honestly don't care.

This is the last bit of software on my list that I want to stop using. Its a bit harder because I'm not a sysadmin and the documentation for apache tends to be... more robust. But I really just need to commit myself and fucking do it.

##The end

Okay. I'm done. Really. This post really serves no purpose on than to somewhat document my journey through tech. None of this is an... inducement for people to try and be ideologically pure in their tech use. This also isn't me bragging about how I'm better because I'm doing this. Rather, I'm pursuing this path because I actually have the knowledge and skills to find and learn alternatives.

There are many things I can't do, but I can do this. So I am. In a lot of cases, praticality is why my changes have been slow and over years. It does take me a while to learn the new things and get comfortable with them to the point that they are my main thing. This is why I'm still using apache, because I barely understand how servers work at all, much less trying to figure out a different one with not-so-great documentation.

And now u all know what a giant nerd I am.

Oh! People should also expect a long post about digital preservation and self-archiving. 

[^1]: If anyone is curious, if you encode at a high enough bitrate, there is no difference between the lossy, compressed formats. And most audio nerds at this point recommend just using [FLAC](https://xiph.org/flac/).



[1]: https://www.ffmpeg.org
[2]: http://www.vorbis.com/
[3]: http://www.imagemagick.org/
[4]: https://inkscape.org/en/
[5]: https://en.wikipedia.org/wiki/Ubuntu_(philosophy)
[6]: https://www.debian.org/
[7]: http://tararobertson.ca/2015/default-settings/
[8]: https://www.nginx.com/