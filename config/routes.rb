Rails.application.routes.draw do
  # get 'pages/contact'
  # get 'pages/about'
  # get 'pages/home'

  get 'contact', to:'pages#contact'
  get 'about', to:'pages#about'
  get 'error', to:'pages#error'
  get "blog", to: redirect("https://mohsinmdl.com/docs")

  resources :projects

  root "pages#home"

  get "*path", to:redirect('/error')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
