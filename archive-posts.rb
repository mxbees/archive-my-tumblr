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
  @@client = Tumblr::Client.new({
    :consumer_key => '6t1TegHgZM01spIJnsLjZtIHM6c7qR5BzHHGuAKfMz4ecIzenK',
    :consumer_secret => 'ELhQmF3M6ZNsCYp0eKw49iNfOcVVXvcp7Vu5GV71hvDJVQiJNJ',
    :oauth_token => 'wfXWoOFX66FQDsY3SMmdrsX2pZEQW3cPLHlNNU3Mb48sHrsV65',
    :oauth_token_secret => 'YgvcRM1y1UwI8oZwCyhS0NRNbURaIdf5UUaOpS7gZcwPAaPNQj'
  })
  all_data = @@client.posts("mxb.ca", :limit => 1)
  @@total_posts = all_data.fetch("total_posts")
  
  def text
  x = 0  
    @@total_posts.times do
      post_data = @@client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :type => "text", :limit => 1)
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      test  = post_hash.has_key?('reblogged_from_id')
      if test == false
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
        body = post_hash.fetch("body")
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("original/text/#{file_name}", metadata.to_yaml)
        File.open("original/text/#{file_name}", mode="a") { |file| file.write("---\n") }
        File.open("original/text/#{file_name}", mode="a") { |file| file.write(body)}
      else
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
        body = post_hash.fetch("body")
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("reblog/text/#{file_name}", metadata.to_yaml)
        File.open("reblog/text/#{file_name}", mode="a") { |file| file.write("---\n") }
        File.open("reblog/text/#{file_name}", mode="a") { |file| file.write(body)}
      end
    x += 1
    #sleep 1
    end
  end
  
  def link
  x = 0
    @@total_posts.times do
      post_data = @@client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :type => "link", :limit => 1)
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      test  = post_hash.has_key?('reblogged_from_id')
      if test == false
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "url" || k == "type"}
        body = post_hash.fetch("description")
        #md_body = ReverseMarkdown.convert html_body
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("original/link/#{file_name}", metadata.to_yaml)
        File.open("original/link/#{file_name}", mode="a") { |file| file.write("---\n") }
        File.open("original/link/#{file_name}", mode="a") { |file| file.write(body)}
      else
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "url" || k == "type"}
        body = post_hash.fetch("description")
        #md_body = ReverseMarkdown.convert html_body
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("reblog/link/#{file_name}", metadata.to_yaml)
        File.open("reblog/link/#{file_name}", mode="a") { |file| file.write("---\n") }
        File.open("reblog/link/#{file_name}", mode="a") { |file| file.write(body)}
      end
      x += 1
    end
  end
  
  def photo
  x = 0
    @@total_posts.times do
      post_data = @@client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :type => "photo", :limit => 1)
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      test  = post_hash.has_key?('reblogged_from_id')
      if test == false
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
        body = post_hash.fetch("caption")
        photos = post_hash.fetch("photos")
        photo_hash = photos[0]
        original = photo_hash.fetch("original_size")
		    original_url = original.fetch("url")
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("original/photo/#{file_name}", metadata.to_yaml)
        File.open("original/photo/#{file_name}", mode="a") { |file| file.write("original size: #{original_url}\n---\n") }
        File.open("original/photo/#{file_name}", mode="a") { |file| file.write(body)}
      else
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
        body = post_hash.fetch("caption")
        photos = post_hash.fetch("photos")
        photo_hash = photos[0]
        original = photo_hash.fetch("original_size")
		    original_url = original.fetch("url")
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("reblog/photo/#{file_name}", metadata.to_yaml)
        File.open("original/photo/#{file_name}", mode="a") { |file| file.write("original size: #{original_url}\n---\n") }
        File.open("reblog/photo/#{file_name}", mode="a") { |file| file.write(body)}
      end
      x += 1
    end
  end
  
  def answer
  x = 0
    @@total_posts.times do
      post_data = @@client.posts("mxb.ca", :filter => 'raw', :offset => x, :reblog_info => true, :type => "answer", :limit => 1)
      post_js = post_data.fetch('posts')
      post_hash = post_js[0]
      test  = post_hash.has_key?('reblogged_from_id')
      if test == false
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
        question = post_hash.fetch("question")
        answer = post_hash.fetch("answer")
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("original/answer/#{file_name}", metadata.to_yaml)
        File.open("original/answer/#{file_name}", mode="a") { |file| file.write("---\n") }
        File.open("original/answer/#{file_name}", mode="a") { |file| file.write("question: #{question}\n\nanswer: #{answer}")}
      else
        metadata = post_hash.select{|k,v| k == "id" || k == "slug" || k == "date" || k == "tags" || k == "title" || k == "type"}
        question = post_hash.fetch("question")
        answer = post_hash.fetch("answer")
        post_date = post_hash.fetch("date")
        iso_date = Date.parse(post_date)
        title = post_hash.fetch("slug")
        file_name = "#{iso_date}_#{title}.md"
        IO.write("reblog/answer/#{file_name}", metadata.to_yaml)
        File.open("reblog/answer/#{file_name}", mode="a") { |file| file.write("---\n") }
        File.open("reblog/answer/#{file_name}", mode="a") { |file| file.write("question: #{question}\n\nanswer: #{answer}")}
        end
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
archive.link
archive.answer
archie.photo
