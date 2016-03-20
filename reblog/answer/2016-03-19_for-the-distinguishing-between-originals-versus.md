---
id: 141320155424
slug: for-the-distinguishing-between-originals-versus
type: answer
date: 2016-03-19 17:52:26 GMT
tags:
- convos
- tech support
---
question: For the distinguishing between originals versus reblogs, could you not do a comparison to see if the source URL of the post is in the list of URLs associated with that blog? (List because you may be able to find out previous URLs, idk)

answer: <p><a class="tumblr_blog" href="http://mxb.ca/post/141319057909/for-the-distinguishing-between-originals-versus">mxbees</a>:</p>

<blockquote><p>i wish. but the main problem is, is that with reblogs only *sometimes* will tumblr list a source URL. i’m not sure what makes the difference but&hellip;.</p><p>at least in terms of how the JSON output is structured, there isn’ any easy proggromatic way to make a clear distinction. </p><p>although. maybe this just gave me an idea&hellip;. </p><p>brb testing</p></blockquote><p>
ok but really anon. thanks for inspiring me into finding the solution to my problem :D

i can now filter out reblogs. which will be 

*immensely useful*

so thanks :D

(note on my solution, this is what it looks like:

`test  = post_hash.fetch('trail').length`  
`if test == 1`  
`#then test == original post`  
`end`</p>