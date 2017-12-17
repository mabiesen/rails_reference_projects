Rails.application.routes.draw do
  resources :page_files
  get 'sign_in/signin'

  get 'sign_up/signup'

  resources :users
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
