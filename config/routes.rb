Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :projects
      resources :tasks
      resources :candidates
      resources :candidate_calls
    end
  end
  
end
