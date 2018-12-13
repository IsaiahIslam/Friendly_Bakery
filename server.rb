require 'sinatra'
require 'sinatra/reloader'
require './class_cakes'
require './class_cookies'
require './class_muffins'

register Sinatra::Reloader

@@strawberry_shortcake = Cakes.new("strawberry_shortcake.jpg", "Strawberry Shortcake", "$15", 1)
@@red_velvet_cake = Cakes.new("red_velvet_cake.jpg", "Red Velvet Cake", "$15", 1)
@@angel_food_cake = Cakes.new("angel_food_cake.jpg", "Angel Food Cake", "$13", 1)
@@chocolate_cake = Cakes.new("chocolate_cake.jpg", "Chocolate Cake", "$14", 1)

@@oatmeal = Cookies.new("oatmeal_raisin_cookies.jpg", "Oatmeal Raisin Cookies", "$10", 20)
@@chocolate_chip = Cookies.new("chocolate_chip_cookies.jpg", "Chocolate Chip Cookies", "$8", 20)
@@macaroons = Cookies.new("macaroons.jpg", "Macaroon", "$6", 5)
@@snickerdoodles = Cookies.new("snickerdoodles.jpg", "Snickerdoodles", "$8", 16)

@@banana_nut_muffins = Muffins.new("banana_nut_muffins.jpg", "Banana Nut Muffins", "$5", 3)
@@blueberry_muffins = Muffins.new("blueberry_muffins.jpg", "Blueberry Muffins", "$5", 3)
@@honey_muffins = Muffins.new("honey_muffins.jpg", "Honey Muffins", "$3", 5)
@@pumpkin_cream_muffins = Muffins.new("pumpkin_cream_cheese_muffins.jpg", "Pumpkin Cream Muffins", "$7", 3)

get '/' do 
    erb :index, :layout => :bakery_layout
end

get '/cakes' do
    erb :cakes, :layout => :bakery_layout
end

get '/cookies' do 
    erb :cookies, :layout => :bakery_layout
end

get '/muffins' do 
    erb :muffins, :layout => :bakery_layout
end
