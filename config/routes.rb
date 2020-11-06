Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  resources :customers
  root 'checkouts#new'
  resources :checkouts,  only: [:new, :create, :gateway, :show]


  # #generate and expose a client token
  get "/client_token" => "checkouts#new" do
    gateway.client_token.generate
  end

  #receive a payment method nonce from client
  post "/checkouts" => "checkouts#create" do
    nonce_from_the_client = params[:payment_method_nonce]
  end

end
