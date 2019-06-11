Rails.application.routes.draw do
  resources :target_songs
  get 'chart_sample/index'
  get '/detail', to: 'chart_sample#detail'
  get 'target_songs/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'chart_sample#index'
end
