Rails.application.routes.draw do
  resources :user
  #resources :valuation
  get 'valuation/index'
  get 'valuation/indexView'
  resources :valuation
<<<<<<< HEAD
=======
  #get 'valuation/index'
  get 'valuation/indexView'

>>>>>>> check
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'user#index'
  get 'user/register'
end
