Rails.application.routes.draw do

  devise_for :users
  resources :subscriptions, only: [:new, :create, :destroy] do
    resources :child_no_valids, only: [ :new, :create]
    resources :parent_no_valids, only: [ :new, :create]
    resources :more_infos, only: [ :new, :create]
  end
  get "/dashboard", to: "dashboards#dashboard"
  get "/dashboard/subscriptions/:id/etape_1_to_2", to: "dashboards#etape_1_to_2", as: "etape_1_to_2"
  get "/dashboard/subscriptions/:id/etape_2_to_3", to: "dashboards#etape_2_to_3", as: "etape_2_to_3"
  get "/dashboard/subscriptions/:id/validate_etape_3", to: "dashboards#validate_etape_3", as: "etape_3"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
