Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :v1 do
    get "/books/featured", to: "books/featured#index"
    resources :books, only: %i[ show ], param: :isbn

    resources :isbns, only: [], param: :isbn do
      member do
        post :convert, to: "isbns/convert#create"
      end
    end
  end
end
