Rails.application.routes.draw do

    resources :taskslists do
    resources :todos, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
    root 'welcome#index'
end