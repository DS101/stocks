Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :warehouses do
    resources :products
  end
  post '/warehouses/sales', to: 'warehouses#product_sales'
  post '/warehouses/movement', to: 'warehouses#warehouses_movement'
end
