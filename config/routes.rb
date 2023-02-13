Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :cards do
    collection do
      get '/' => 'cards#index'
      post "/" => "cards#create", as: "create"
      get "/new" => "cards#new", as: "new"
      get "/:card_id" => "cards#show", as: "details"
      get "/:card_id/edit" => "cards#edit", as: "edit"
      patch "/:card_id" => "cards#update", as: "update"
      delete "/:card_id" => "cards#destroy", as: "destroy"
    end
  end

  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
