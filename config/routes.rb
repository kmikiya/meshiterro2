Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :post_images do
    resource :favorites, only:[:create, :destroy]
    resources :post_comments, only:[:create, :edit, :destroy]
  end
  resources :users
end
