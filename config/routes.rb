Rails.application.routes.draw do
  root "welcome#home"
  resources :articles
  get 'welcome/home' ,to: 'welcome#home'
  get 'signup', to: 'users#new'
  resources :users , exept:[:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
