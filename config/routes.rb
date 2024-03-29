Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # GET http://localhost:3000/tasks/new
  get "tasks/new", to: "tasks#new", as: "new_task"

  # POST http://localhost:3000/tasks/
  post "/tasks", to: "tasks#create"

  # GET http://localhost:3000/tasks
  get "/tasks", to: "tasks#index"

  # GET http://localhost:3000/tasks/1
  get "tasks/:id", to: "tasks#show", as: "task"

  # GET http://localhost:3000/tasks/1/edit
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"

   # PATCH http://localhost:3000/tasks/1/
   patch "tasks/:id", to: "tasks#update"

   # DELETE http://localhost:3000/tasks/1/
   delete "tasks/:id", to: "tasks#destroy"
end
