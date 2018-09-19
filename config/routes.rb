Rails.application.routes.draw do
  namespace 'api', defaults: { format: "json" }  do
    namespace 'v1' do
      resources :appreciations
      resources :has_user_projects
      resources :has_project_tags
      resources :users
      resources :activities
      resources :projects
      resources :tags
      resources :status_activities
      resources :type_activities
      resources :spectators
      resources :categories
      resources :universities
      resources :user_types
      resources :pruebas
     end
   end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
