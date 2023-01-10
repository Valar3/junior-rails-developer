# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :Author
  root 'posts#index'
  resources :posts, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
