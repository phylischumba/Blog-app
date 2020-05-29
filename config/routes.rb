# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles
  resources :articles do
    resources :comments
  end
  resources :tags
end
