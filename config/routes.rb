Rails.application.routes.draw do
  root "home#index"
  
  namespace :api do
    namespace :v1 do
      resources :job_logs, only: [:index, :show, :create]
    end
  end
end
