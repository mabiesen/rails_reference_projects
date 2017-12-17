Rails.application.routes.draw do
  get 'pages/grass'

  get 'pages/tree'

  get 'pages/frog'

  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
