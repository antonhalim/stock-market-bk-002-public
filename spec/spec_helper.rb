require_relative "../lib/stock_market.rb"

require "pry"
require 'digest/sha1'

RSpec.configure do |config|

end

def encode(string)
  Digest::SHA1.hexdigest(string)
end