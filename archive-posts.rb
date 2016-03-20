#!/home/nina/.rvm/rubies/ruby-2.2.1/bin/ruby

require 'open-uri'
require 'tumblr_client'
require 'json'
require 'uri'
require 'pp'
require 'yaml'
require 'reverse_markdown'
require 'csv'

class Archive
#  def client
    @@client = Tumblr::Client.new({
  :consumer_key => '6t1TegHgZM01spIJnsLjZtIHM6c7qR5BzHHGuAKfMz4ecIzenK',
  :consumer_secret => 'ELhQmF3M6ZNsCYp0eKw49iNfOcVVXvcp7Vu5GV71hvDJVQiJNJ',
  :oauth_token => 'wfXWoOFX66FQDsY3SMmdrsX2pZEQW3cPLHlNNU3Mb48sHrsV65',
  :oauth_token_secret => 'YgvcRM1y1UwI8oZwCyhS0NRNbURaIdf5UUaOpS7gZcwPAaPNQj'
})
#  end
  
  #def api_call(x = 0)
    all_data = @@client.posts("mxb.ca", :limit => 1)
    @@total_posts = 1#all_data.fetch("total_posts")
    #post_data = client.posts("mxb.ca", :filter => 'raw', :offset => x, :type => "#{type}", :limit => 1)
 #   pp(post_data)
 # end
  def text
  x = 0  
    @@total_posts.times do
      post_data = @@client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :type => "text", :limit => 1)
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      test  = post_hash.has_key?('reblogged_from_id')
      if test == 1
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title"}
        body = post_hash.fetch("body")
        #md_body = ReverseMarkdown.convert html_body
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date) #.strftime('%F')
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        #IO.write("no-reblogs/#{file_name}", metadata.to_yaml)
       # File.open("no-reblogs/#{file_name}", mode="a") { |file| file.write("---\n") }
       # File.open("no-reblogs/#{file_name}", mode="a") { |file| file.write(body)}
      
      end
    x += 1
    #sleep 5
     pp(post_data)
    end
  end
  
  def link
    archive.api_call('link')
    @@total_posts.times do
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title"}
      #body = post_hash.fetch("content_raw")
      #md_body = ReverseMarkdown.convert html_body
      post_date = post_hash.fetch("date")
      iso_date = Date.parse(post_date) #.strftime('%F')
      title = post_hash.fetch("slug")
      file_name = "#{iso_date}_#{title}.md"
      #IO.write("no-reblogs/#{file_name}", metadata.to_yaml)
      #File.open("no-reblogs/#{file_name}", mode="a") { |file| file.write("---\n") }
      #File.open("no-reblogs/#{file_name}", mode="a") { |file| file.write(body)}
      pp(post_hash)
      x += 1
    end
  end
  
  def post_ids
    x = 0
    @@total_posts.times do
      post_data = client.posts("mxb.ca", :filter => 'raw', :offset => x, :type => 'text', :limit => 1)
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      id = post_hash.fetch('id')
      post_date = post_hash.fetch("date")
      iso_date = Date.parse(post_date)
      CSV.open("all-post-ids.csv", mode="a") do |csv|
        csv << [id, iso_date]
      end
    x += 1
    end
  end
end

archive = Archive.new
#archive.auth

archive.text
