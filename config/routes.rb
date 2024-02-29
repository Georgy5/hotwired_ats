Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/show'
  root to: 'dashboard#show'
end
