Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :portfolios, only: [] do
  #   get :sketch
  #   get :painting
  #   get :digital_art
  #   get :web_design

  # end

  resources :portfolios

  get 'sketch', to: 'portfolios#sketch', as: :sketch
  get 'painting', to: 'portfolios#painting', as: :painting
  get 'digital_art', to: 'portfolios#digital_art', as: :digital_art
  get 'web_design', to: 'portfolios#web_design', as: :web_design

  root "portfolios#index"

end
