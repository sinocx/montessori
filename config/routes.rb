Rails.application.routes.draw do

  devise_for :users
  resources :subscriptions do
    resources :child_no_valids, only: [ :new, :create]
    resources :parent_no_valids, only: [ :new, :create]
  end
  get "/dashboard", to: "dashboards#dashboard"

  root to: 'pages#home'
  get 'ecole', to: "pages#ecole", as: 'ecole'
  get 'programmes', to: "pages#programmes", as: 'programmes'
  get 'informations', to: "pages#informations", as: 'informations'
  get 'tarifs', to: "pages#tarifs", as: 'tarifs'
  get 'contact', to: "pages#contact", as: 'contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
