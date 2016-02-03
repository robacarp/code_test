require 'rubygems'
require 'bundler/setup'

require 'haml'
require 'sqlite3'
require 'sequel'

DB = Sequel.sqlite
Sequel::Model.db = DB

DB.create_table :users do
  primary_key :id
  varchar :username
  varchar :password
end

require './user.rb'
require './web.rb'

Web.run!
