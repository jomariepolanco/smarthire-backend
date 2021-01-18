Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :projects
      resources :tasks
      resources :candidates
      resources :candidate_calls
      resources :client_calls
      resources :open_jobs
      resources :companies
      resources :job_applications
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  
end
