require 'bundler'
Bundler.require
require './main'
 
DataMapper.setup(:default, ENV['HEROKU_POSTGRESQL_COPPER_URL'] || "sqlite3://#{Dir.pwd}/development.db")
 
run Sinatra::Application