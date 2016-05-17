require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relatiive('./models/shoe')

get '/shoes/new' do
  erb(:new)
end

get '/shoes' do
  @shoes = Shoe.all()
  #binding.pry
  erb(:index)
end

post '/shoes' do
  #binding.pry
  @shoe = Show.new(params)
  @shoe.save()
  erb(:create)
end