Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'works/new', to: 'works#new'
  post 'works', to: 'works#create'

  root 'works/index'
end
