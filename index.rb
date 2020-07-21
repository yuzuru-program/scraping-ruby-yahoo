require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("https://www.yahoo.co.jp"))

test = doc.css("main article section ul")[0].css("li")

test.each do |li|
  puts li.content
  puts li.css("a")[0][:href]
  puts
end
