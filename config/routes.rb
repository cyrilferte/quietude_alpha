Rails.application.routes.draw do
 mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
   resources :ficheentreprises
    resources :tags
     resources :tagusers
     get "/dashboard" => "pages#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
