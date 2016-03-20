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
  def api_call
    x = 0
    config = YAML.load_file('.config.yml')
    client = Tumblr::Client.new({
      :consumer_key => config.fetch('consumer key'),
      :consumer_secret => config.fetch('consumer secret'),
      :oauth_token => config.fetch('oauth token'),
      :oauth_token_secret => config.fetch('oauth secret')
    })
    all_data = client.posts("mxb.ca", :limit => 1)
    @@total_posts = 1#all_data.fetch("total_posts")
    post_data = client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :limit => 1)
    post_js = post_data.fetch('posts')
    @@post_hash = post_js[0]
  end
  
  def loop
    @@total_posts.times do
    
    end
  end
  
  def sort_reblogs
    test  = @@post_hash.has_key?('reblogged_from_id')
    type = @@post_hash.fetch('type')
    if test == false
      op = original
      metadata = archive.'#{type}'
      archive.make_record(op, type, metadata)
    else
      op = reblog
      metadata = archive.'#{type}'
      archive.make_record(op, type, metadata)
    end
  end
  
  def make_record(op, type, metadata)
    post_date = @@post_hash.fetch("date")
    iso_date = Date.parse(post_date)
    title = @@post_hash.fetch("slug")
    file_name = "#{iso_date}_#{title}.md"
    IO.write("#{op}/#{type}/#{file_name}", metadata.to_yaml)
    File.open("#{op}/#{type}/#{file_name}", mode="a") { |file| file.write("---\n") }
    File.open("#{op}/#{type}/#{file_name}", mode="a") { |file| file.write(body)}
  end
  
  def text
    metadata = @@post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
    body = @@post_hash.fetch("body")
  end
  
  def link
    metadata = @@post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "url" || k == "type"}
    body = @@post_hash.fetch("description")
    end
  end
  
  def photo
    metadata = @@post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
    body = @@post_hash.fetch("caption")
    photos = @@post_hash.fetch("photos")
    photo_hash = photos[0]
    original = photo_hash.fetch("original_size")
		original_url = original.fetch("url")
  end
  
  def answer
    metadata = @@post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
    question = @@post_hash.fetch("question")
    answer = @@post_hash.fetch("answer")
  end
  
  def post_ids
    x = 0
    @@total_posts.times do
      post_data = client.posts("mxb.ca", :filter => 'raw', :offset => x, :type => 'text', :limit => 1)
      post_js = post_data.fetch('posts')
      @@post_hash = post_js[0]
      id = @@post_hash.fetch('id')
      post_date = @@post_hash.fetch("date")
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
archive.link
archive.answer
archie.photo
