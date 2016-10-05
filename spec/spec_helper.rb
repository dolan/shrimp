require "rspec"
require "rack/test"
require 'rack/lobster'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end
