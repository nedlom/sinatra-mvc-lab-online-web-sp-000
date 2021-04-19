require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do 
    erb :user_input
  end
  
  post "/" do 
    string = params["user_phrase"]
    @pig_latin = PigLatinizer.new.piglatinize(string)
    erb :piglatinize
  end
end