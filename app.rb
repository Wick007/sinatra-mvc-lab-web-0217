require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = PigLatinizer.new
    @end_result = user_phrase.to_pig_latin(params[:user_phrase])
    @word_result = user_phrase.piglatinize(params[:user_phrase])
    erb :results
  end
end
