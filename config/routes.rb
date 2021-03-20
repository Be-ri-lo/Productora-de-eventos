Rails.application.routes.draw do
  resources :bands do
    resources :concerts
    resources :crews
  end

  root 'bands#index'
end