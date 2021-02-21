Rails.application.routes.draw do

  devise_for :users,
             controllers: { :sessions => "users/sessions",
                            :registrations => "users/registrations"},
             path_names: { sign_in: :login }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :processes do
    resources :milestone
  end

  resources :theme

  resources :collaborators

  namespace :manage do

    resources :manage_candidates, path: 'candidates'
    post '/candidates/invite', to: 'manage_candidates#invite'

    resources :manage_collaborators, path: 'collaborators'
    post '/collaborators/invite', to: 'manage_collaborators#invite'


    resources :manage_processes, path: 'processes'
    resources :manage_collaborators, path: 'collaborators'
    resources :manage_milestones, path: 'milestones'
    get '/processes/:id/milestones', to: 'manage_milestones#show_by_process'

  end



  resources :interview_type


  resources :business_fields


  resources :business_titles


  resources :tips

  resources :availability

  resource :users do
    post '/invite_candidate', to: 'users#invite_candidate'

  end



  # TODO add "only" for better granularity

end
