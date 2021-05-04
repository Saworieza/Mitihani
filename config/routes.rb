Rails.application.routes.draw do
  resources :subject_results
  resources :payments
  resources :fees
  resources :exams
  resources :terms
  resources :subjects
  resources :students
  resources :streams
  resources :classrooms
  resources :years
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
