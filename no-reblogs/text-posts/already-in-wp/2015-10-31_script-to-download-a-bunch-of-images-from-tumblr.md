---
id: 132286044119
slug: script-to-download-a-bunch-of-images-from-tumblr
date: 2015-10-31 18:58:32 GMT
tags:
- tech support
- op
title: script to download a bunch of images from tumblr
---
<p>#[you can grab the script here](<a href="http://syx.pw/1Hj4R2S">http://syx.pw/1Hj4R2S</a>)

</p><pre><code>
#!/bin/ruby

require 'open-uri'
require 'tumblr_client'
require 'json'
require 'uri'

#this takes the txt file with the photo post URLs where 
#you're grabbing the pics from.
file = ARGV

#you'll need to register an app with tumblr to get 
#your oauth stuff.
client = Tumblr::Client.new({
  :consumer_key =&gt; '',
  :consumer_secret =&gt; '',
  :oauth_token =&gt; '',
  :oauth_token_secret =&gt; ''
 })

#this reads my text file (from the argument above)
image_id = IO.readlines("#{file[0]}")

#this loop iterates for every line of the file
image_id.collect! do |x|

#this is to parse the URL so we can get data
break_up = URI::parse(x)

#this grabs the path (the part after the domain name)
path = break_up.path

#these two are for removing tumblr's 
#/post/ and grabs the post id

first_pass = path.gsub(/\/post\//, "")
post_id = first_pass.gsub(/\/.*$/, "")

#this is to grab the hostname of the blog.
host = break_up.host
    
#this is the api call. since photosets can only 
#have 10 pics, that's the limit.
all_data = client.posts("#{host}", :id =&gt; post_id, :type =&gt; "photo", :limit =&gt; 10)

#gets the post data
post_data = all_data.fetch("posts")

#hashes that data
post_hash = Hash[post_data[0]]

#grabs the value for 'photos'
photos = post_hash.fetch("photos")
 
#Pics from a tumblr post come in many sizes, so this 
#is actually its own hash and this loop iterates over that hash.
photos.each do |i|

#this gets the data for the highest resolution image
original = i.fetch("original_size")

#this grabs the image URL
original_url = original.fetch("url")

#this is to write the file (eg, download the image) 
#to your current dir.
File.open("#{post_id}" + ".jpg" || ".png", 'wb') do |f|
f.write open("#{original_url}").read
end
end
end
</code></pre>