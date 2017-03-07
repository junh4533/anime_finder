require 'dotenv/load'
require 'bundler'
require 'rubygems'
require 'sinatra'
require 'sinatra-initializers'
# require 'myanimelist'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base
register Sinatra::Initializers
  get '/' do
    erb :index
  end
  
end


