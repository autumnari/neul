Rails.application.routes.draw do
  

  devise_for :users
  root 'home#main_page'
  get 'my_page/index'
  resources :musics
  
  # (임시) fake page위한 라우트
  get 'home/fake_page' =>'home#fake_page'
  
  post "tapes/likes/:tape_id/create" => "likes#create"
  post "tapes/likes/:tape_id/destroy" => "like#destroy"
  post "daily/likes/:daily_id/create" => "likes#create"
  post "/daily/likes/:daily_id/create" => "likes#create"
  post "likes/:daily_id/create" => "likes#create"
  post "likes/:tape_id/create" => "likes#create"
  post "daily/likes/:daily_id/destroy" => "like#destroy"
  
  # tape model관련 routing
  get '/tapes/new' =>'tapes#new'
  post '/tapes' =>'tapes#create'
  
  get '/tapes' => 'tapes#index'
  get '/tapes/:id' => 'tapes#show'
  
  get '/tapes/:id/edit' => 'tapes#edit'
  patch'/tapes/:id' =>'tapes#update'
  
  delete '/tapes/:id' => 'tapes#destroy'
  
  # daily routes
  get '/daily' => 'daily#index'
  
  get '/daily/new' => 'daily#new'
  post '/daily' => 'daily#create'
  
  get '/daily/:id' => 'daily#show'
  
  get '/daily/:id/edit' => 'daily#edit'
  patch '/daily/:id' => 'daily#update'
  
  delete '/daily/:id' => 'daily#destroy'
  
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
