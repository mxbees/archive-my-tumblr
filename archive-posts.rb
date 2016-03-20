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
    config = YAML.load_file('.config.yml')
    @@client = Tumblr::Client.new({
      :consumer_key => config.fetch('consumer key'),
      :consumer_secret => config.fetch('consumer secret'),
      :oauth_token => config.fetch('oauth token'),
      :oauth_token_secret => config.fetch('oauth secret')
    })
    all_data = @@client.posts("mxb.ca", :limit => 1)
    @@total_posts = 1#all_data.fetch("total_posts")
  end
  
  def archive_posts
  x = 0
    archive = Archive.new
    archive.api_call
    @@total_posts.times do
      post_data = @@client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :limit => 1)
      post_js = post_data.fetch('posts')
      @@post_hash = post_js[0]
      archive.sort_posts
    x += 1
    end
  end
  
  def sort_posts
    archive = Archive.new
    test  = @@post_hash.has_key?('reblogged_from_id')
    type = @@post_hash.fetch('type')
    metadata = @@post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
    if test == false
      op = 'original'
      body = archive.send(type.to_sym)
      archive.make_record(op, type, metadata, body)
    else
      op = 'reblog'
      body = archive.send(type.to_sym)
      archive.make_record(op, type, metadata, body)
    end
  end
  
  def make_record(op, type, metadata, body)
    post_date = @@post_hash.fetch("date")
    iso_date = Date.parse(post_date)
    title = @@post_hash.fetch("slug")
    file_name = "#{iso_date}_#{title}.md"
    IO.write("#{op}/#{type}/#{file_name}", metadata.to_yaml)
    File.open("#{op}/#{type}/#{file_name}", mode="a") { |file| file.write("---\n") }
    File.open("#{op}/#{type}/#{file_name}", mode="a") { |file| file.write(body)}
  end
  
  def text
    body = @@post_hash.fetch("body")
  end
  
  def link
    url = @@post_hash.fetch('url')
    description = @@post_hash.fetch("description")
    body = "link url: #{url}\n\n#{description}"
  end
  
  def photo
    photos = @@post_hash.fetch("photos")
    photo_hash = photos[0]
    original = photo_hash.fetch("original_size")
		original_url = original.fetch("url")
		caption = @@post_hash.fetch("caption")
		body = "original url: #{original_url}\n\n#{caption}"
  end
  
  def answer
    question = @@post_hash.fetch("question")
    answer = @@post_hash.fetch("answer")
    body = "question: #{question}\n\nanswer: #{answer}"
  end
  
  def video
    body = @@post_hash.fetch("caption")
  end
  
  def audio
    body = @@post_hash.fetch("caption")
  end
  
  def chat
    body = @@post_hash.fetch("body")
  end
  
  def quote
    quote = @@post_hash.fetch("text")
    source = @@post_hash.fetch("source")
    body = "#{quote}\n\nsource: #{source}"
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
archive.archive_posts
