require 'pry'
require 'json'


def analyze_stock(json_file_path)
  stock_hash = JSON.parse(File.read(json_file_path))
  sell_time = (what_time(stock_hash.key(stock_hash.values.max))).downcase
  before = stock_hash.select{|time, value| stock_hash.key(stock_hash.values.max).to_i > time.to_i}
  buy_time = (what_time(stock_hash.key(before.values.min))).downcase
  difference = (stock_hash.values.max - before.values.min).round(2)
  stock_hash[:buy] = buy_time
  stock_hash[:sell] = sell_time
  stock_hash[:profit] = "$#{difference.to_s}"
  stock_hash
end

def what_time(string)
  time = Time.new(2015,05,10,9,30,0)
  time = time + (string.to_i * 60)
  return (time.strftime"%l:%M %p").strip
end
