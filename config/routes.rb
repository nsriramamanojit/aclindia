Aclindia::Application.routes.draw do
  resources :subcategories

  resources :exchanges

  resources :categories

  resources :lablocationals

  resources :labregionals

  resources :labcentrals

  resources :cities

  resources :states

  resources :countries

  resources :users

  get 'admin' => 'admin#index'
  
  controller :sessions do
    get  'home' => :new
    post 'home' => :create
    delete 'logout' => :destroy
  end

   resources :home

  root :to => "home#index"
  match ':controller(/:action(/:id(.:format)))'
end
