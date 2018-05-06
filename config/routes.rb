Rails.application.routes.draw do
  get '/random_fortune_url' => 'api/pages#random_fortune_action'
  get '/lotto_fortune_url' => 'api/pages#lotto_fortune_action'
  get '/lotto_url' => 'api/pages#lotto_action' #class demo
  get '/bottles_of_beer_url' => 'api/pages#bottles_of_beer_action'
  get '/page_count_url' => 'api/pages#page_count_action'
end
