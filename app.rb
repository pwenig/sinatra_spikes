require 'sinatra'

require './lib/item'
require './models/items_repository'


get '/' do
  erb :index
end

get '/items' do
  erb :items
end

get '/item/:id' do
  item = ItemsRepository.new.items.first
  erb :show, :locals => {:item => item}

end