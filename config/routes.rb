Rails.application.routes.draw do
  get '/:locale' => 'pages#home'
  root to: "pages#home"
  scope "(:locale)", locale: /en|fr/ do
    get "dummy_l18n", to: "pages#dummy_l18n", as: :dummy_l18n
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
