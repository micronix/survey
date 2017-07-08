Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'application#home'
  get '/survey' => 'class_surveys#new', :as => :class_surveys
  post '/survey' => 'class_surveys#create'
  
  get '/lessons' => 'lessons#index'
  get '/lessons/new' => 'lessons#new'
  post '/lessons' => 'lessons#create'
end
