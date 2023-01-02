# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :Author
  root 'home#index'
end
