Rails.application.routes.draw do
  root "home#show"

  resource :home, only: :show
  resource :projects, only: [ :show ]
  resources :contributions, only: :index
  
  # get "/music-code/spiegel-im-spiegel", to: "pages#spiegel", as: :spiegel
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/cv", to: "pages#cv"
  
end
