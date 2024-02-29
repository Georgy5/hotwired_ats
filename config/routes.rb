Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'dashboard/show'

  authenticated :user do
    root to: 'dashboard#show', as: :user_root
  end

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
