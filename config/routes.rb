Rails.application.routes.draw do
  get 'nourritures/index'

  get 'nourritures/show'

  get 'nourritures/new'

  get 'nourritures/create'

  get 'nourritures/edit'

  get 'nourritures/update'

  get 'nourritures/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
