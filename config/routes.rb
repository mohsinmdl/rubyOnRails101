Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :movies
  devise_for :users
  # get 'pages/contact'
  # get 'pages/about'
  # get 'pages/home'

  get 'contact', to:'pages#contact'
  get 'about', to:'pages#about'
  get 'error', to:'pages#error'
  get "blog", to: redirect("https://mohsinmdl.com/docs")

  resources :projects

  # root "pages#home"
  root to: "pages#index"

  get "*path", to:redirect('/error')

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
