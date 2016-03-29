DB = Sequel.sqlite
Sequel::Model.db = DB

DB.create_table :users do
  primary_key :id
  varchar :username
  varchar :password
end

require './user.rb'
