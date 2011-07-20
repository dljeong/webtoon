require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get("http://comic.naver.com/webtoon/list.nhn?titleId=15568&weekday=thu")

title = page.search('//td[@class="title"]/a')[0].inner_html

puts title[title.index("(")+1...title.index(")")]
