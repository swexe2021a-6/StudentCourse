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
  get 'user/mypage'
  
  resources :management
  get 'management/index'
  get 'management/new'
  
  get 'valuationviews/show'
  #resources :valuationviews, only: [:show]
end
