Rails.application.routes.draw do
  resources :user
  resources :valuation
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'user#index'
  get 'user/register'
  post '/valuation/search', to: 'valuation#search'

end
