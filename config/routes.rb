ActionController::Routing::Routes.draw do |map|
  map.resources :posts
  map.resources :users, :has_many => :posts
  map.root :controller => :users

end
