require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secrete, "something"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session['item'] = params[:user_input]
    @session = session
    erb :output
  end
end
