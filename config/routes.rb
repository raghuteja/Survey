ChronusSurvey::Application.routes.draw do
  get "static_pages/credits"
  get "static_pages/pricing"
  resources :surveys
  resources :quesstion_groups
  root to: "sessions#new"
  match "/auth/google_oauth2/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
end