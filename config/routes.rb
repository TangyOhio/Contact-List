Rails.application.routes.draw do
  resources :contacts do
    resources :addresses
  end

  root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
