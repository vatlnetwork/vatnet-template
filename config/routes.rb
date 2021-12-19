Rails.application.routes.draw do
  get 'redirects/underconstruction'

  devise_for :users
  get 'users/sign_out', to: 'home#index'
  
  get 'home/index'
  
  get 'login/sessions'

  post 'update/username'

  post 'destroy/user'

  root 'home#index'
end
