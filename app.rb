require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    #piglatinizer
    @new_text = Piglatinizer.run(params[:text])
    erb :
  end
end
