ActionController::Routing::Routes.draw do |map|
  map.user_root '', :controller => 'users', :action => 'show', :conditions => { :subdomain => /.+/ }

  map.resources :posts
  map.resources :users, :has_many => :posts
  map.root :controller => :users


end
