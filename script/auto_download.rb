#!/usr/bin/env ruby

require 'rss'
require 'open-uri'

rss_feed = "http://www.hilliardschools.org/hdb/category/announcements/feed/"

rss_content = ""

open(rss_feed) do |f|
   rss_content = f.read
end

rss = RSS::Parser.parse(rss_content, false)

rss.items.each do |item|
   puts "-----"
   puts "Title: #{item.title}"
   puts "Published on: #{item.date}"
   # puts "#{item.content_encoded}"
   puts ReverseMarkdown.convert item.content_encoded
end
