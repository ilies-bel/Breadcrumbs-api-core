Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: :sessions },
                     path_names: { sign_in: :login }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :process do
    resources :milestone
  end

  resources :theme

  resources :tip

  resources :availability

  resource :user, only: %i[show update]

end
