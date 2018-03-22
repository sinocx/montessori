Rails.application.routes.draw do

  devise_for :users
  resources :subscriptions do
    resources :child_no_valids, only: [ :new, :create]
    resources :parent_no_valids, only: [ :new, :create]
  end
  get "/dashboard", to: "dashboards#dashboard"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
