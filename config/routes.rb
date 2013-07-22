Photogurpractice::Application.routes.draw do

  get 'pictures' => 'pictures#index'

  get 'pictures/:id' => 'pictures#show', as: "picture"

  post 'pictures' => "pictures#create"
  get 'pictures/new' => 'pictures#new' 
end