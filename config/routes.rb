Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#home'

  # get  '/course/index' => 'course#index'
  resources :course

  # get  '/cohort/index' => 'cohort#index'
  resources :cohort
  
  # get  '/instructor/index' => 'instructor#index'
  resources :instructor

  # get  '/student/index' => 'student#index'
  resources :student
  

end
