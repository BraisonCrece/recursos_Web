Rails.application.routes.draw do
  resources :markdown_codes
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'pages/cheatsheets'
  get 'pages/recursos'
  get 'pages/html_css'
  get 'pages/ror'
  get 'download_md', to: "pages#download_md"

  # Defines the root path route ("/")
  root "pages#index"
end
