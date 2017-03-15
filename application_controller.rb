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
    # erb:result1
  end
  
  post '/result' do
    @@user_anime = find_anime(params[:anime_name])
    erb :result
  end
  
  post '/result1' do
    # @post1 = params[:hidden_info]
    puts @@user_anime
    erb :result1
  end


end


