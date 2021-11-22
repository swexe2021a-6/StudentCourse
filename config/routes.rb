Rails.application.routes.draw do
  resources :user
  #resources :valuation
  get 'valuation/index'
  get 'valuation/indexView'
  resources :valuation
  #get 'valuation/index'
  get 'valuation/indexView'
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'user#index'
  get 'user/register'
end
