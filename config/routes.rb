Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  # 顧客用
  devise_for :users,controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
end
