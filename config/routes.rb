Rails.application.routes.draw do

  devise_for :users,
             controllers: { sessions: :sessions,
                            :registrations => "users/registrations"},
             path_names: { sign_in: :login }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :processes do
    resources :milestone
  end

  resources :theme

  resources :collaborator

  scope '/manage' do
    resources :manage_collaborators, path: 'collaborators'

    resources :manage_processes, path: 'processes'
    resources :manage_milestones, path: 'milestones'
    get '/processes/:id/milestones', to: 'manage_milestones#show_by_process'

  end

  resources :interview_type


  resources :business_fields


  resources :business_titles


  resources :tips

  resources :availability

  resource :users, only: %i[show update]

end
