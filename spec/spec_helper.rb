require 'bundler/setup'
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require_relative '../boot'
require_relative './support/feature_helper'

module RSpecMixin
  include Rack::Test::Methods

  def app
    Web
  end

  def request_url
    last_request.url.gsub %r|^http://example\.org|, ''
  end
end

RSpec.configure do |config|
  config.include RSpecMixin
  config.include FeatureHelper, type: :feature
end
