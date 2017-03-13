require 'dotenv/load'
require 'bundler'
require 'rubygems'
require 'sinatra'
require 'myanimelist_client'
require 'pp'

Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/result1.erb' do
    @user_anime
    erb :result1
  end

  # get '/result2.erb' do
  #   @user_anime
  #   erb :result2
  # end
  
  post '/result' do
    @user_anime = find_anime(params[:anime_name])
    erb :result1
  end
  
  # post '/result1' do
  #   @user_anime 
  #   erb :result1
  # end
  
  
end


