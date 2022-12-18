Rails.application.routes.draw do
  root "projects#index"
  #get "/projects", to: "projects#index"
  #get 'projects/:id/edit', to: 'projects#edit', as: 'edit_projects'
  #get 'projects/:id', to: 'projects#show'
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
