require 'bundler/setup'
require 'minitest/autorun'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

require_relative '../boot'
require_relative './support/acceptance_helper'

module AppTestHelper
  def app
    Web
  end

  def request_url
    last_request.url.gsub %r|^http://example\.org|, ''
  end
end

class AppTest < MiniTest::Test
  include AppTestHelper
  include Rack::Test::Methods
end

class AppAcceptanceTest < AppTest
  include AppTestHelper
  include AcceptanceHelper
end
