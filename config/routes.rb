Rails.application.routes.draw do
  devise_for :users
  get '/user' => "welcome#home", :as => :user_root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :moods, only: [:index, :show, :new, :create,:destroy]
end
