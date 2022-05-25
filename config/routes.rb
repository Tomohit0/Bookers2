Rails.application.routes.draw do
  resources :books, only: [:new, :index, :create, :show, :edit, :destroy, :update]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'home/about' => "homes#about",as: 'about'
  resources :users, only: [:index, :show, :edit, :update]
end

