Rails.application.routes.draw do
  ##### items routes ##################
  resources :items, only: [:index, :show]
  ##### list routes ##################
  resources :lists, except: [:new, :edit]
  get '/userlists/', to: 'lists#user_lists'
  ############################################
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
