Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  # posts resources
  resources :posts do
    resources :comments
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
