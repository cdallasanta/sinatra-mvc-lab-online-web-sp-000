require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #piglatinizer
    @new_text = Piglatinizer.run(params[:user_phrase])
    erb :
  end
end
