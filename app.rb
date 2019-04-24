require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #piglatinizer
    @new_text = Piglatinizer.new(params[:user_text])
    @new_text.piglatinize
  end
end
