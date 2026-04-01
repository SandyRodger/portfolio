Rails.application.routes.draw do
  root "home#show"

  resource :home, only: :show
  resources :contributions, only: :index

  get "/projects",     to: "pages#projects",     as: :projects_page
  get "/training",     to: "pages#training",     as: :training
  get "/cv",           to: "pages#cv"
  get "/launch_school", to: "pages#launch_school"
  get "/spiegel",      to: "pages#spiegel",      as: :spiegel
  get "/about",        to: "pages#about"
  get "up" => "rails/health#show", as: :rails_health_check
  
end
