Ambulator::Application.routes.draw do




  resources :brand_names

  #resources :concentrations

  resources :retetars



  get 'drugs/update_dci', :as => 'update_dci'
  resources :drugs do
    collection do
      get "find_by_dci/:id", :action => 'find_by_dci'
    end
    #match '/drugs/find_by_dci/:id', :controller => 'drugs', :action =>'find_by_dci'
    resources :line_drugs
  end

  resources :medics do 
    resources :hospitals
  end
  resources :pacients do 
    resources :iesires
    resources :reteta do
      resources :drugs_retetum
      #match 'reteta/find_by_id/:id', :controller => 'reteta', :action => 'find_by_id'
    end
    resources :evaluares do
      resources :paraclinics 
    end
  end
  resources :fel_analizas do
    collection do
      get 'get_analize/:set', :action => 'get_analize'
    end
    resources :paraclinics
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'pacients#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
