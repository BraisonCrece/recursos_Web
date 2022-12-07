Rails.application.routes.draw do
  get 'pages/cheatsheets'
  get 'pages/javascript'
  get 'pages/html_css'
  get 'pages/ror'
  get 'download_md', to: "pages#download_md"

  # Defines the root path route ("/")
  root "pages#index"
end
