#!/usr/bin/ruby

require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get("http://comic.naver.com/webtoon/list.nhn?titleId=15568&weekday=thu")

title = page.search('//td[@class="title"]/a')[2].inner_html

begin
	ind = title[title.index("(")+1...title.index(")")]
	1/ind.to_i
	puts "Time for sleep!"
rescue
	puts "Webtoon Time!"
end
