
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    erb :new
  end
  
  post '/posts' do
    @name = params[:name]
    @content = params[:content]
    @post = Post.create(name:@name,content:@content)
    
    redirect to '/posts'
    erb :index
  end
  
  
end
