Rails.application.routes.draw do
  resources :comments

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount LetterOpenerWeb::Engine, at: '/letter_opener'

  root to: 'welcome#index'
end
