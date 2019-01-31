Rails.application.routes.draw do
  resources :questions

  resources :answers do
    member do
      put "upvote", to: "answers#upvote"
      put "downvote", to: "answers#downvote"
    end
  end

  devise_for :users
  root to: "pages#home"
end
