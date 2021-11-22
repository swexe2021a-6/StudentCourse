Rails.application.routes.draw do
  resources :user
  #resources :valuation
  get 'valuation/index'
  get 'valuation/indexS'
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'user#index'
end
