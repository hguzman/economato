# frozen_string_literal: true

Rails.application.routes.draw do
  resources :activities
  resources :detalles
  resources :productos
  resources :consolidados do
    post 'enviar_proveedor', on: :member
    post 'recibir_proveedor', on: :member
    post 'cerrar_orden', on: :member
  end
  resources :teachers
  resources :fichas
  resources :contratos
  resources :programs
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'welcome#dashboard', as: :user_root
    end

    unauthenticated do
      root 'devise/sessions#new'
    end
  end


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
