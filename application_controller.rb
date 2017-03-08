require 'dotenv/load'
require 'bundler'
require 'myanimelist', '~> 0.0.5'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
end
