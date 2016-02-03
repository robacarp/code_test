require 'sinatra/base'

class Web < Sinatra::Application
  get '/' do
    redirect to('/users')
  end

  get '/users' do
    @count = User.count
    haml :index
  end

  get '/users/new' do
    haml :new
  end

  post '/users' do
    User.new username: params[:username], password: params[:password]

    redirect to('/')
  end
end
