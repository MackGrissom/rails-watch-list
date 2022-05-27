Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end



# list_bookmarks POST   /lists/:list_id/bookmarks(.:format)
# bookmarks#create
# new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format)
# bookmarks#new
# lists GET    /lists(.:format)
# lists#index
#     POST   /lists(.:format)
# lists#create
# new_list GET    /lists/new(.:format)
# lists#new
# edit_list GET    /lists/:id/edit(.:format)
# lists#edit
# list GET    /lists/:id(.:format)
# lists#show
#     PATCH  /lists/:id(.:format)
# lists#update
#     PUT    /lists/:id(.:format)
# lists#update
#     DELETE /lists/:id(.:format)
# lists#destroy
# bookmark DELETE /bookmarks/:id(.:format)
# bookmarks#destroy