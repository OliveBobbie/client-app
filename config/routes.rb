Rails.application.routes.draw do
  get '/clients' => 'clients#index'

  get '/clients/new' => 'clients#new'

  post '/clients' => 'clients#create'

  get '/client/:id' => 'clients#show'

  delete '/client/:id' => 'clients#destroy'

end
