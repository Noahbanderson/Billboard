Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/edit'
  get 'artists/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/edit'
  get 'billboards/index'
  get 'billboards/show'
  get 'billboards/new'
  get 'billboards/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
