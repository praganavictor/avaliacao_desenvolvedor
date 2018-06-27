Rails.application.routes.draw do
  root to: 'anexos#new'
  resources :anexos
end
