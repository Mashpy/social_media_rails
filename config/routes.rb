# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'public#homepage'
end
