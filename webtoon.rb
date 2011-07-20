require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get("http://comic.naver.com/webtoon/list.nhn?titleId=15568&weekday=thu")

#puts page.body

puts page.search('//td[@class="title"]/a')[0].inner_html#map(&:inner_html)
