Rails.application.routes.draw do
  root to: "homes#top"
  namespace :public do
    resources :post_images, only: [:new, :create, :index, :show, :destroy]do
      resources :post_comments, only: [:create, :destroy] 
    end
    resources :users, only: [:show, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 顧客用
  devise_for :users,controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
end
