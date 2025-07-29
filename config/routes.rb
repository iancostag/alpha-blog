Rails.application.routes.draw do
  root "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/sobre", to: "pages#sobre"
  resources :artigos
end
