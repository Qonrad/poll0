Rails.application.routes.draw do
  #patch '/answerchoices/:id/vote', to: 'answerchoices#vote'
  resources :answerchoices do
    member do
      patch 'vote'
    end
  end
  resources :questions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'questions#index'
end
