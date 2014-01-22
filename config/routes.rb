Bog::Application.routes.draw do
  root to: "bogs#index"

  get "/bogs", to: "bogs#index"

  get "/bogs/new", to: "bogs#new"

  get "/bogs/list", to: "bogs#list"

  get "/bogs/:id", to: "bogs#show"

  get "/bogs/:id/edit", to: "bogs#edit"

  get "bogs/:id/prompt", to: "bogs#prompt"

  delete "/bogs/:id/delete", to: "bogs#delete"

  # get "/bogs/:id/delete", to: "bogs#delete"

  post "/bogs", to: "bogs#create"

  put "/bogs/:id", to: "bogs#update"
end
