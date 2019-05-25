Rails.application.routes.draw do
  root to: "characters#index"
  resources :characters do
    resources :powers, only: [:new, :create, :edit, :update]
  end
  resources :powers, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
