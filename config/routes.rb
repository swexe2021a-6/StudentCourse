Rails.application.routes.draw do
  resources :user
  #resources :valuation
  get 'valuation/index'
  get 'valuation/indexView'
  resources :valuation
  
  
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'user#index'
  get 'user/show'
  
  resources :management
  get 'management/index'
  get 'management/new'
  
  get 'valuationviews/show'
  
  
end
