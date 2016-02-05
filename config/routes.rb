V1::Application.routes.draw do
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'create_new_elevik' }

  root :to => 'announcements#index'
  
  resources :cms
  resources :works do
    collection { post :import }
  end
  resources :placements, :controller=>"works"
  resources :news, :controller=>"announcements"
  resources :announcements
  resources :artists
  resources :releases, :controller=>"sounds"
  resources :sounds
  resources :clients
  resources :socials
  
  get "/get_announcement_links" => "announcements#create_links", :as => :get_announcement_links
  get "/get_work_links" => "works#create_links", :as => :get_work_links
  get "/get_artist_links" => "artists#create_links", :as => :get_artist_links
  get "/get_sound_links" => "sounds#create_links", :as => :get_sound_links
  
  resources :abouts, :path => "about"
  resources :contacts, :path => "contact"
  
  match '*path' => redirect('/')
  
end