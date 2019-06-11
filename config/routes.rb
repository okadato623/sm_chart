Rails.application.routes.draw do
  resources :target_songs
  resources :results
  get '/detail', to: 'results#detail'
  get 'target_songs/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'chart_sample#index'
end
