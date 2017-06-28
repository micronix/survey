Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'application#home'
  get '/survey' => 'class_surveys#new'
  post '/survey' => 'class_surveys#create'
end
