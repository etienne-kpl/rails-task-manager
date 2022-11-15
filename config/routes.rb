Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # # CREATE
  # ## Affiche une page avec le formulaire
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'
  # # READ
  # get 'tasks', to: 'tasks#index'
  # # comme il y a la variable id, on lui donne un alias avec "as:"
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # # UPDATE
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # # DELETE
  # delete 'tasks/:id', to: 'tasks#destroy'

  ## refacto:
  resources :tasks
end
