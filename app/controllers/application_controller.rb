
require_relative '../../config/environment'
require 'pry-'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :new
  end
  
  get '/posts/new' do
  erb :new
  end
  
  post '/posts' do
    @post = Post.new({name: params[:name][:content], motto: params[:name][:content]})
    @posts=Post.all
    binding.pry
   erb :index
  end
end
