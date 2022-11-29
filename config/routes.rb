Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index'

  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update', as: :update

  delete 'tasks/:id', to: 'tasks#delete', as: :delete
  get 'tasks/:id', to: 'tasks#show', as: :task
end
