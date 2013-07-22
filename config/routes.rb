Photogurpractice::Application.routes.draw do

  get 'pictures' => 'pictures#index'

  get 'pictures/:id' => 'pictures#show', as: "picture"

  post 'pictures' => "pictures#create"
  get 'pictures/new' => 'pictures#new' 
  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
put 'pictures/:id' => "pictures#update", as: "update_picture"
end