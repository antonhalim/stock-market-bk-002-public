require 'open-uri'
require 'json'

STOCK_OPENING_TIME = Time.new(2014,11,18,9,30)

def analyze_stock(json_file_path)
  data = JSON.parse(File.read(json_file_path))
  differences = []
  data.each do |buy_time, current_price|
    best_sell_time = "not yet known"
    best_profit = -1.0/0.0
    data.each do |sell_time, future_price|
      if sell_time.to_i > buy_time.to_i
        profit = future_price - current_price
        if profit > best_profit
          best_profit = profit
          best_sell_time = sell_time 
        end
      end
    end
    differences << [best_profit, buy_time, best_sell_time]
  end
  format_result(differences.max)
end

def format_result(result)
  buy_time = format_time(result[1])
  sell_time = format_time(result[2])
  profit = result[0].round(2)
  {:buy => buy_time, :sell => sell_time, :profit => "$#{profit}"}
end

def format_time(string)
  time = STOCK_OPENING_TIME + (string.to_i * 60)
  formatted_time = time.strftime("%I:%M %P")
  formatted_time[0] = '' if formatted_time[0] == "0"
  formatted_time
end