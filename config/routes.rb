Rails.application.routes.draw do
  
  devise_for :users
  get "/jquery-1" , to:"pages#jquery_1"
  get "/jquery-2" , to:"pages#jquery_2"
  get "/jquery-3" , to:"pages#jquery_3"
  get "/jquery-4" , to:"pages#jquery_4"
  get "/jquery-5" , to:"pages#jquery_5"
  # root "pages#jquery_1"

  resources :posts do
    member do
      post "like" , to: "posts#like"
      post "unlike",to: "posts#unlike"
    end
  end
  
  root 'posts#index'
end
