Rails.application.routes.draw do
  root 'welcome#index'
  post '/stations', to: "stations#create"
  get  '/search', to: "search#index"
end
