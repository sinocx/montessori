Rails.application.routes.draw do

  devise_for :parents
  devise_for :users

  # subscriptions Routes
  resources :subscriptions, only: [:create, :new, :destroy] do
    resources :child_no_valids, only: [:new, :create, :edit, :update ] do
      resources :second_forms, only: [:new, :create, :index]
      resources :doc_to_signs, only: [:index, :show]
    end
    resources :parent_no_valids, only: [:new, :create, :edit, :update ]
    resources :more_infos, only: [:new, :create]
  end
  post '/subscriptions/:subscription_id/parent_no_valids/next_step', to: "parent_no_valids#next_step", as: "next_step"
  get '/subscriptions/:subscription_id/child_no_valids/:child_no_valid_id/authorisation_de_sortie', to: "doc_to_signs#sortie", as: "doc1"
  delete '/subscriptions/:subscription_id/child_no_valids/:id', to: "child_no_valids#destroy", as: "destroy_child"


  # Admin Route
  get "/admin", to: "users#main_dashboard", as: 'main_dashboard'
  get "/admin/subscriptions_dashboard", to: "users#subscriptions_dashboard", as: "subscriptions_dashboard"
  get "/admin/subscriptions/:id", to: "users#subscription_show", as: "subscription_show"
  get "/admin/subscriptions/:id/rendez_vous", to: "users#rendez_vous", as: "rendez_vous"
  get "/admin/subscriptions/:id/etape_1_to_2", to: "users#etape_1_to_2", as: "etape_1_to_2"
  get "/admin/subscriptions/:id/etape_2_to_3", to: "users#etape_2_to_3", as: "etape_2_to_3"
  get "/admin/subscriptions/:id/validate_etape_3", to: "users#validate_etape_3", as: "etape_3"
  get "/admin/subscriptions/:id/rendez_vous", to: "users#rendez_vous", as: "rendez_vous_show"
  get "/admin/subscriptions/:id/etape_1_to_2", to: "users#etape_1_to_2", as: "etape_1_to_2_show"
  get "/admin/subscriptions/:id/etape_2_to_3", to: "users#etape_2_to_3", as: "etape_2_to_3_show"
  get "/admin/subscriptions/:id/validate_etape_3", to: "users#validate_etape_3", as: "etape_3_show"

  # Visitor Routes
  root to: 'pages#ecole', as: 'ecole'
  get 'ambiances', to: "pages#ambiances", as: 'ambiances'
  get 'informations', to: "pages#informations", as: 'informations'
  get 'prices', to: "pages#prices", as: 'prices'
  get 'contact', to: "contacts#new", as: 'contact'
  post 'contact', to: "contacts#create", as: 'contact_new'
  get 'contact/success',to: "contacts#success", as: 'contact_success'
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
