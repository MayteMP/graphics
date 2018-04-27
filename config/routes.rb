Rails.application.routes.draw do
  resources :list_groups
  resources :groups
  resources :matters
  resources :teachers
  resources :students
  root "matters#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
