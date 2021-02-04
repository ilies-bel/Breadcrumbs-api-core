Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :process do
    resources :milestone
  end

  resources :theme

  resources :tip

  resources :availability

end
