Rails.application.routes.draw do
  # get 'registrations/new'
  # get 'registrations/create'
  # get 'registrations/view'
  # get 'registrations/index'
  # get '/:locale' => 'pages#home'
  root to: "pages#home"
  scope "(:locale)", locale: /en|fr/ do
    resources :registrations
    get "registration_info", to: "registrations#info", as: :info_registration
    get "registration_confirmation/:id", to: "registrations#confirmation", as: :confirmation_registration
    get "information", to: "pages#information", as: :information
    get "pictures", to: "pages#pictures", as: :pictures
    get "partners", to: "pages#partners", as: :partners
    get "schedule_and_results", to: "pages#schedule_and_results", as: :schedule_and_results
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
