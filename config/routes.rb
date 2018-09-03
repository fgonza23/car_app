Rails.application.routes.draw do
  namespace :api do

    get"/cars" => 'cars#index'
    post"/cars" => 'cars#create'
    get"/cars/id" => 'cars#show'
    patch"/cars/id" => 'cars#update'
    delet"/cars/id" => 'cars#destroy'

  end              

end
