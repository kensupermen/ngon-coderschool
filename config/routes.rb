Rails.application.routes.draw do

  resources :order_details
  resources :food_items do
  end
  root 'home#index'

  post 'orders' => 'orders#create'

  get 'orders/:food_item_id' => 'orders#new'
  get 'orders' => "orders#new"

  get 'order_details/add/:id' => "order_details#add"

  get 'search' => 'home#menu'
  get 'detail' => 'order_details#show'

  get 'menu' => 'home#menu'
  get 'contact_us' => 'home#contact_us'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
