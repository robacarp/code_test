require 'bundler/setup'
require 'minitest/autorun'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

require_relative '../boot'

class AppTest < MiniTest::Test
  include Rack::Test::Methods

  def app
    Web
  end

  def request_url
    last_request.url.gsub %r|^http://example\.org|, ''
  end
end
