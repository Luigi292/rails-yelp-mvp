Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
   resources :restaurants
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # Route for destroying a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy', as: 'destroy_restaurant'
end

Rails.application.routes.draw do

end
