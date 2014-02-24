require 'sinatra'
require 'csv'

database = CSV.parse(DATA.read)

puts database.inspect

__END__
username,password,salt
robacarp,12345,23
