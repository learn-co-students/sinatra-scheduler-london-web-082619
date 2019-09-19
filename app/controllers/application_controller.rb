class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  #index
  get '/' do
    erb :'index.html'
  end
  
end
