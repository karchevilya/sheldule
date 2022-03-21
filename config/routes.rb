# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :items do
    get :iv_821, on: :collection
    get :iv_822, on: :collection
    get :iv_823, on: :collection
  end

  root to: 'items#iv_821'
end
