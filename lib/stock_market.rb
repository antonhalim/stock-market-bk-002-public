require 'open-uri'
require 'json'

def get_buy_and_sell_times(json_file_path)
  results = {:buy => nil, :sell => nil}
  differences = []
  data = JSON.parse(File.read(json_file_path))
  data.each do |min, price|
    
  end
  binding.pry
  return results

end
