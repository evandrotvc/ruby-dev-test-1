Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :folders do
        post "/files", to: "/api/v1/folders#upload_file"
      end
    end
  end
end
