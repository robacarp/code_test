require 'sinatra'
require 'csv'
require 'haml'

database = CSV.parse(DATA.read)

puts "User Database:" + database.inspect


get '/' do
  redirect to('/users')
end

get '/users' do
  @count = database.count
  haml :index
end

get '/users/new' do
  haml :new
end

post '/users' do
  puts database
  database.push([ params[:username], params[:password], rand(100) ])
  redirect to('/')
end

__END__
username,password,salt
robacarp,12345,23
