# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'comfy/cms/content#show'
  # get 'informatie', to: 'pages#informatie'
  get 'nascholing', to: 'pages#nascholing'
  get 'psychiaters', to: 'pages#psychiaters'
  get 'expertisefilter', to: 'pages#ajax_get_spychiaters_on_expertise'
  # get 'lidmaatschap', to: 'pages#lidmaatschap'
  # get 'klachten', to: 'pages#klachten'
  # get 'contact', to: 'pages#contact'
  get 'dashboard', to: 'admin#dashboard'
  get 'testmail', to: 'pages#testmail'

  resources :users, only: [:show, :index, :update]
  resources :newsitems, only: [:create, :update, :destroy]
  resources :expertises, only: [:new, :create, :destroy]
  resources :targetaudiences, only: [:new, :create, :destroy]

  # devise_scope :user do
  #   get '/signout', to: 'devise/sessions#destroy', as: :signout
  # end
  comfy_route :blog_admin, path: "/admin"
  comfy_route :blog, path: "/blog"
  comfy_route :cms_admin, path: "/admin"
  # Ensure that this route is defined last
  comfy_route :cms, path: "/"
end


