Rails.application.routes.draw do
  root to: "characters#index"
  resources :characters do
    resources :power, only: [:new, :create, :edit, :update]
  end
  resources :power, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
