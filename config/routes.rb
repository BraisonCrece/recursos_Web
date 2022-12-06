Rails.application.routes.draw do
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'pages/cheatsheets'
  get 'pages/recursos'
  resources :resources

  # Defines the root path route ("/")
  root "pages#index"
end
