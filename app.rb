require 'sinatra'
require './lib/item'
require './models/items_repository'

MENU =["ice cream", "wheatgrass", "pizza"]

get '/' do
  erb :index
end

get '/items' do
  erb :items
end

get '/item/:id' do
  item = ItemsRepository.new.find(params[:id])
  erb :show, :locals => {:item => item}
end


get '/items/new' do
  erb :new
end

post '/items/new' do
  create_item = params[:create_name]
  redirect "/items"
end