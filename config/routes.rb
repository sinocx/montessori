Rails.application.routes.draw do

  devise_for :users

  # subscriptions Routes
  resources :subscriptions, only: [:create, :new, :destroy] do
    resources :child_no_valids, only: [:new, :create, :edit, :update, :destroy] do
      resources :second_forms, only: [:new, :create, :index]
      resources :doc_to_signs, only: [:index, :show]
    end
    resources :parent_no_valids, only: [:new, :create, :edit, :update, :destroy]
    resources :more_infos, only: [:new, :create]
  end
  post '/subscriptions/:subscription_id/parent_no_valids/next_step', to: "parent_no_valids#next_step", as: "next_step"
  get '/subscriptions/:subscription_id/child_no_valids/:child_no_valid_id/authorisation_de_sortie', to: "doc_to_signs#sortie", as: "doc1"


  # Dashboard Route
  get "/dashboard", to: "dashboards#dashboard"
  get "/dashboard/:id", to: "subscriptions#show", as: "info_subscription"
  get "/dashboard/subscriptions/:id/rendez_vous", to: "dashboards#rendez_vous", as: "rendez_vous"
  get "/dashboard/subscriptions/:id/etape_1_to_2", to: "dashboards#etape_1_to_2", as: "etape_1_to_2"
  get "/dashboard/subscriptions/:id/etape_2_to_3", to: "dashboards#etape_2_to_3", as: "etape_2_to_3"
  get "/dashboard/subscriptions/:id/validate_etape_3", to: "dashboards#validate_etape_3", as: "etape_3"

  # Visitor Routes
  root to: 'pages#home'
  get 'programmes', to: "pages#programmes", as: 'programmes'
  get 'informations', to: "pages#informations", as: 'informations'
  get 'prices', to: "pages#prices", as: 'prices'
  get 'contact', to: "contacts#new", as: 'contact'
  post 'contact', to: "contacts#create", as: 'contact_new'
  get 'inscription', to: "pages#inscription", as: 'inscription'
  get 'pedagogie_montessori', to: "pages#pedagogie_montessori", as: 'pedagogie_montessori'
  get 'maria_montessori', to: "pages#maria_montessori", as: 'maria_montessori'
  get 'subscription_success', to: "pages#subscription_success", as: 'subscription_success'
  get 'inscription_success', to: "pages#inscription_success", as: 'inscription_success'
  get 'pedagogie', to: "pages#pedagogie", as: 'pedagogie'
  get 'ambiance_montessori', to: "pages#ambiance_montessori", as: 'ambiance_montessori'
  get 'bibliographie', to: "pages#bibliographie", as: 'bibliographie'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
