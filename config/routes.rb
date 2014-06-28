Rails.application.routes.draw do

  root 'welcome#index'

  resources :mugs
  
end
