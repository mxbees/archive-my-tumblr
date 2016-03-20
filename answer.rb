{"blog_name"=>"mxbees",
 "id"=>141336290489,
 "post_url"=>
  "http://mxb.ca/post/141336290489/for-the-distinguishing-between-originals-versus",
 "slug"=>"for-the-distinguishing-between-originals-versus",
 "type"=>"answer",
 "date"=>"2016-03-19 23:31:14 GMT",
 "timestamp"=>1458430274,
 "state"=>"published",
 "format"=>"markdown",
 "reblog_key"=>"HNWyy3Vf",
 "tags"=>["convos", "delete later"],
 "short_url"=>"https://tmblr.co/ZEoJpn23eJAIv",
 "summary"=>
  "For the distinguishing between originals versus reblogs, could you not do a comparison to see if the source URL of the post is...",
 "recommended_source"=>nil,
 "recommended_color"=>nil,
 "followed"=>true,
 "highlighted"=>[],
 "liked"=>false,
 "note_count"=>8,
 "source_url"=>
  "http://mxbees.tumblr.com/post/141319057909/for-the-distinguishing-between-originals-versus",
 "source_title"=>"mxbees",
 "asking_name"=>"Anonymous",
 "asking_url"=>nil,
 "question"=>
  "For the distinguishing between originals versus reblogs, could you not do a comparison to see if the source URL of the post is in the list of URLs associated with that blog? (List because you may be able to find out previous URLs, idk)",
 "answer"=>
  "<p><a href=\"https://lesbiancatwitches.tumblr.com/post/141325119616/for-the-distinguishing-between-originals-versus\" class=\"tumblr_blog\">lesbiancatwitches</a>:</p><blockquote>\n<p><a href=\"http://mxb.ca/post/141320842919/for-the-distinguishing-between-originals-versus\" class=\"tumblr_blog\">mxbees</a>:</p>\n\n<blockquote>\n<p><a href=\"http://mxb.ca/post/141320155424/for-the-distinguishing-between-originals-versus\" class=\"tumblr_blog\">mxbees</a>:</p>\n\n<blockquote><p><a class=\"tumblr_blog\" href=\"http://mxb.ca/post/141319057909/for-the-distinguishing-between-originals-versus\">mxbees</a>:</p>\n\n<blockquote><p>i wish. but the main problem is, is that with reblogs only *sometimes* will tumblr list a source URL. i’m not sure what makes the difference but….</p>\n\n<p>at least in terms of how the JSON output is structured, there isn’ any easy proggromatic way to make a clear distinction. </p>\n\n<p>although. maybe this just gave me an idea…. </p>\n\n<p>brb testing</p></blockquote>\n<p>ok but really anon. thanks for inspiring me into finding the solution to my problem :D</p>\n\n<p>i can now filter out reblogs. which will be</p>\n\n<p><em>immensely useful</em></p>\n\n<p>so thanks :D</p>\n\n<p>(note on my solution, this is what it looks like:</p>\n\n<p><code>test  = post_hash.fetch('trail').length</code>\n<code>if test == 1</code>\n<code>#then test == original post</code>\n<code>end</code></p>\n</blockquote>\n\n<p>never mind. this solution doesn’t work on reblogs with no commentary.<br><br>problem still unsolved.</p>\n</blockquote>\n\n<p>i know there is a reblog_info flag on the posts api call, which is false by default. it gives at least a reblogged_from_name and reblogged_from_id (a post id), and i think some other things.<br></p>\n</blockquote>\n<p>yeah. i just saw that and i was like... ok. maybe that'll do what i need. :S</p>",
 "reblog"=>
  {"tree_html"=>
    "<p><a href=\"https://lesbiancatwitches.tumblr.com/post/141325119616/for-the-distinguishing-between-originals-versus\" class=\"tumblr_blog\">lesbiancatwitches</a>:</p>\n<blockquote>\n<p><a href=\"http://mxb.ca/post/141320842919/for-the-distinguishing-between-originals-versus\" class=\"tumblr_blog\">mxbees</a>:</p>\n\n<blockquote>\n<p><a href=\"http://mxb.ca/post/141320155424/for-the-distinguishing-between-originals-versus\" class=\"tumblr_blog\">mxbees</a>:</p>\n\n<blockquote>\n<p><a class=\"tumblr_blog\" href=\"http://mxb.ca/post/141319057909/for-the-distinguishing-between-originals-versus\">mxbees</a>:</p>\n\n<blockquote>\n<p>i wish. but the main problem is, is that with reblogs only *sometimes* will tumblr list a source URL. i’m not sure what makes the difference but….</p>\n\n<p>at least in terms of how the JSON output is structured, there isn’ any easy proggromatic way to make a clear distinction. </p>\n\n<p>although. maybe this just gave me an idea…. </p>\n\n<p>brb testing</p>\n</blockquote>\n<p>ok but really anon. thanks for inspiring me into finding the solution to my problem :D</p>\n\n<p>i can now filter out reblogs. which will be</p>\n\n<p><em>immensely useful</em></p>\n\n<p>so thanks :D</p>\n\n<p>(note on my solution, this is what it looks like:</p>\n\n<p><code>test  = post_hash.fetch('trail').length</code>\n<code>if test == 1</code>\n<code>#then test == original post</code>\n<code>end</code></p>\n</blockquote>\n\n<p>never mind. this solution doesn’t work on reblogs with no commentary.<br><br>problem still unsolved.</p>\n</blockquote>\n\n<p>i know there is a reblog_info flag on the posts api call, which is false by default. it gives at least a reblogged_from_name and reblogged_from_id (a post id), and i think some other things.<br></p>\n</blockquote>",
   "comment"=>
    "<p>yeah. i just saw that and i was like... ok. maybe that'll do what i need. :S</p>"},
 "trail"=>
  [{"blog"=>
     {"name"=>"mxbees",
      "active"=>true,
      "theme"=>
       {"header_full_width"=>1425,
        "header_full_height"=>625,
        "header_focus_width"=>1112,
        "header_focus_height"=>625,
        "avatar_shape"=>"circle",
        "background_color"=>"#d4ffd9",
        "body_font"=>"Helvetica Neue",
        "header_bounds"=>"0,1268,625,156",
        "header_image"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g.png",
        "header_image_focused"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/pFznzxfom/tumblr_static_tumblr_static_1upf6f3q2cg08kk0os4oosk4g_focused_v3.png",
        "header_image_scaled"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g_2048_v2.png",
        "header_stretch"=>true,
        "link_color"=>"#427ea3",
        "show_avatar"=>true,
        "show_description"=>true,
        "show_header_image"=>true,
        "show_title"=>true,
        "title_color"=>"#444444",
        "title_font"=>"Gibson",
        "title_font_weight"=>"bold"},
      "share_likes"=>false,
      "share_following"=>false},
    "post"=>{"id"=>"141319057909"},
    "content_raw"=>
     "<p>i wish. but the main problem is, is that with reblogs only *sometimes* will tumblr list a source URL. i’m not sure what makes the difference but….</p>\n\n<p>at least in terms of how the JSON output is structured, there isn’ any easy proggromatic way to make a clear distinction. </p>\n\n<p>although. maybe this just gave me an idea…. </p>\n\n<p>brb testing</p>",
    "content"=>
     "<p>i wish. but the main problem is, is that with reblogs only *sometimes* will tumblr list a source URL. i’m not sure what makes the difference but….</p>\n\n<p>at least in terms of how the JSON output is structured, there isn’ any easy proggromatic way to make a clear distinction. </p>\n\n<p>although. maybe this just gave me an idea…. </p>\n\n<p>brb testing</p>",
    "is_root_item"=>true},
   {"blog"=>
     {"name"=>"mxbees",
      "active"=>true,
      "theme"=>
       {"header_full_width"=>1425,
        "header_full_height"=>625,
        "header_focus_width"=>1112,
        "header_focus_height"=>625,
        "avatar_shape"=>"circle",
        "background_color"=>"#d4ffd9",
        "body_font"=>"Helvetica Neue",
        "header_bounds"=>"0,1268,625,156",
        "header_image"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g.png",
        "header_image_focused"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/pFznzxfom/tumblr_static_tumblr_static_1upf6f3q2cg08kk0os4oosk4g_focused_v3.png",
        "header_image_scaled"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g_2048_v2.png",
        "header_stretch"=>true,
        "link_color"=>"#427ea3",
        "show_avatar"=>true,
        "show_description"=>true,
        "show_header_image"=>true,
        "show_title"=>true,
        "title_color"=>"#444444",
        "title_font"=>"Gibson",
        "title_font_weight"=>"bold"},
      "share_likes"=>false,
      "share_following"=>false},
    "post"=>{"id"=>"141320155424"},
    "content_raw"=>
     "<p>ok but really anon. thanks for inspiring me into finding the solution to my problem :D</p>\n\n<p>i can now filter out reblogs. which will be</p>\n\n<p><em>immensely useful</em></p>\n\n<p>so thanks :D</p>\n\n<p>(note on my solution, this is what it looks like:</p>\n\n<p><code>test  = post_hash.fetch('trail').length</code>\n<code>if test == 1</code>\n<code>#then test == original post</code>\n<code>end</code></p>",
    "content"=>
     "<p>ok but really anon. thanks for inspiring me into finding the solution to my problem :D</p>\n\n<p>i can now filter out reblogs. which will be</p>\n\n<p><em>immensely useful</em></p>\n\n<p>so thanks :D</p>\n\n<p>(note on my solution, this is what it looks like:</p>\n\n<p><code>test  = post_hash.fetch('trail').length</code>\n<code>if test == 1</code>\n<code>#then test == original post</code>\n<code>end</code></p>"},
   {"blog"=>
     {"name"=>"mxbees",
      "active"=>true,
      "theme"=>
       {"header_full_width"=>1425,
        "header_full_height"=>625,
        "header_focus_width"=>1112,
        "header_focus_height"=>625,
        "avatar_shape"=>"circle",
        "background_color"=>"#d4ffd9",
        "body_font"=>"Helvetica Neue",
        "header_bounds"=>"0,1268,625,156",
        "header_image"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g.png",
        "header_image_focused"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/pFznzxfom/tumblr_static_tumblr_static_1upf6f3q2cg08kk0os4oosk4g_focused_v3.png",
        "header_image_scaled"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g_2048_v2.png",
        "header_stretch"=>true,
        "link_color"=>"#427ea3",
        "show_avatar"=>true,
        "show_description"=>true,
        "show_header_image"=>true,
        "show_title"=>true,
        "title_color"=>"#444444",
        "title_font"=>"Gibson",
        "title_font_weight"=>"bold"},
      "share_likes"=>false,
      "share_following"=>false},
    "post"=>{"id"=>"141320842919"},
    "content_raw"=>
     "<p>never mind. this solution doesn’t work on reblogs with no commentary.<br><br>problem still unsolved.</p>",
    "content"=>
     "<p>never mind. this solution doesn’t work on reblogs with no commentary.<br /><br />problem still unsolved.</p>"},
   {"blog"=>
     {"name"=>"lesbiancatwitches",
      "active"=>true,
      "theme"=>
       {"avatar_shape"=>"square",
        "background_color"=>"#e8a5db",
        "body_font"=>"Helvetica Neue",
        "header_bounds"=>0,
        "header_image"=>
         "https://secure.assets.tumblr.com/images/default_header/optica_pattern_01.png?_v=f67ca5ac5d1c4a0526964674cb5a0605",
        "header_image_focused"=>
         "https://secure.assets.tumblr.com/images/default_header/optica_pattern_01.png?_v=f67ca5ac5d1c4a0526964674cb5a0605",
        "header_image_scaled"=>
         "https://secure.assets.tumblr.com/images/default_header/optica_pattern_01.png?_v=f67ca5ac5d1c4a0526964674cb5a0605",
        "header_stretch"=>true,
        "link_color"=>"#43324e",
        "show_avatar"=>true,
        "show_description"=>true,
        "show_header_image"=>false,
        "show_title"=>true,
        "title_color"=>"#43324e",
        "title_font"=>"Gibson",
        "title_font_weight"=>"bold"},
      "share_likes"=>false,
      "share_following"=>false},
    "post"=>{"id"=>"141325119616"},
    "content_raw"=>
     "<p>i know there is a reblog_info flag on the posts api call, which is false by default. it gives at least a reblogged_from_name and reblogged_from_id (a post id), and i think some other things.<br></p>",
    "content"=>
     "<p>i know there is a reblog_info flag on the posts api call, which is false by default. it gives at least a reblogged_from_name and reblogged_from_id (a post id), and i think some other things.<br /></p>"},
   {"blog"=>
     {"name"=>"mxbees",
      "active"=>true,
      "theme"=>
       {"header_full_width"=>1425,
        "header_full_height"=>625,
        "header_focus_width"=>1112,
        "header_focus_height"=>625,
        "avatar_shape"=>"circle",
        "background_color"=>"#d4ffd9",
        "body_font"=>"Helvetica Neue",
        "header_bounds"=>"0,1268,625,156",
        "header_image"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g.png",
        "header_image_focused"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/pFznzxfom/tumblr_static_tumblr_static_1upf6f3q2cg08kk0os4oosk4g_focused_v3.png",
        "header_image_scaled"=>
         "https://secure.static.tumblr.com/4af4094e1069b56f314e71fc6b6d33a7/shv6mvr/cDxnzxfok/tumblr_static_1upf6f3q2cg08kk0os4oosk4g_2048_v2.png",
        "header_stretch"=>true,
        "link_color"=>"#427ea3",
        "show_avatar"=>true,
        "show_description"=>true,
        "show_header_image"=>true,
        "show_title"=>true,
        "title_color"=>"#444444",
        "title_font"=>"Gibson",
        "title_font_weight"=>"bold"},
      "share_likes"=>false,
      "share_following"=>false},
    "post"=>{"id"=>"141336290489"},
    "content_raw"=>
     "<p>yeah. i just saw that and i was like... ok. maybe that'll do what i need. :S</p>",
    "content"=>
     "<p>yeah. i just saw that and i was like... ok. maybe that'll do what i need. :S</p>",
    "is_current_item"=>true}],
 "reblogged_from_id"=>"141325119616",
 "reblogged_from_url"=>
  "https://lesbiancatwitches.tumblr.com/post/141325119616/for-the-distinguishing-between-originals-versus",
 "reblogged_from_name"=>"lesbiancatwitches",
 "reblogged_from_title"=>"Lesbian Cat Witches",
 "reblogged_from_uuid"=>"lesbiancatwitches.tumblr.com",
 "reblogged_from_can_message"=>true,
 "reblogged_from_following"=>false,
 "reblogged_root_id"=>"141319057909",
 "reblogged_root_url"=>
  "http://mxb.ca/post/141319057909/for-the-distinguishing-between-originals-versus",
 "reblogged_root_name"=>"mxbees",
 "reblogged_root_title"=>"",
 "reblogged_root_uuid"=>"mxbees.tumblr.com",
 "reblogged_root_can_message"=>true,
 "reblogged_root_following"=>true,
 "can_send_in_message"=>true,
 "can_reply"=>false}
