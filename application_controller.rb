# https://github.com/Oli4242/myanimelist_client

require 'dotenv/load'
require 'bundler'
require 'rubygems'
require 'sinatra'
require 'myanimelist_client'
require 'pp'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  # quick access
  # get '/' do
  #   erb :index
  #   erb :result
  #   erb :result1
  #   erb :result2
  #   erb :result3
  #   erb :result4
  #   erb :result5
  # end
  
  get '/' do
    erb :index
  end
  
  #home button
  get '/index' do
    erb :index
  end

  #submitting results
  post '/result' do
    @@user_anime = find_anime(params[:anime_name]) #run the find_anime method inside model.rb
    #set the class variable equal to the instance variable 
    #so that it is visible between the controller and the view
    @user_anime = @@user_anime 
    erb :result
  end
  
  #previous button
  get '/result' do
    @user_anime = @@user_anime
    erb :result
  end
  
  #recommendation page
  post '/rec' do
    @user_anime = find_anime(params[:anime_name])
    erb :rec
  end
  
  #5 result pages
  post '/result1' do
    @user_anime = @@user_anime
    erb :result1
  end
  
  post '/result2' do
    @user_anime = @@user_anime
    erb :result2
  end
  
  post '/result3' do
    @user_anime = @@user_anime
    erb :result3
  end
  
  post '/result4' do
    @user_anime = @@user_anime
    erb :result4
  end
  
  post '/result5' do
    @user_anime = @@user_anime
    erb :result5
  end

end


