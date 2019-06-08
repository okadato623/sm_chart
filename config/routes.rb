Rails.application.routes.draw do
  get 'chart_sample/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'chart_sample#index'
end
