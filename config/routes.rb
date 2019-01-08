Rails.application.routes.draw do
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
