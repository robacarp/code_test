require 'rubygems'
require 'bundler/setup'

require 'haml'
require 'sqlite3'
require 'sequel'

require 'byebug'
require 'pry'

require './orm.rb'
require './web.rb'

if ENV['RACK_ENV'] != 'test'
  Web.run!
end
