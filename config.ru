require 'rack'
require 'rack/lobster'
require_relative './app/shrimp'

# commented out the middleware becasue of the bug
# use Shrimp
run Rack::Lobster.new
