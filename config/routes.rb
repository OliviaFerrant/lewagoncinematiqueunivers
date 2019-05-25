Rails.application.routes.draw do
  root to: "characters#index"
  resources :characters do
    resources :superpowers, only: [:new, :create, :edit, :update]
  end
  resources :superpowers, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
