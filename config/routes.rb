Rails.application.routes.draw do
  resources :students
  resources :streams
  resources :classrooms
  resources :years
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
