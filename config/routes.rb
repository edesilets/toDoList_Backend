Rails.application.routes.draw do
  ##### items/:id/items routes ##############
  resources :lists, except: [:new, :edit] do
    resources :items, only: :create
  end
  ##### items routes ##################
  resources :items, only: [:show, :update, :destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
