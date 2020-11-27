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

  get "new.html.erb" => "checkouts#new"

  get '/success' => "checkouts#success"
  get '/failure' => "checkouts#failure"

  # #generate and expose a client token
  get "/client_token" => "checkouts#new" do
    gateway.client_token.generate
  end

  get "/checkouts" => "checkouts#create" do
    error_message = result.message
  end

  #receive a payment method nonce from client
  post "/checkouts" => "checkouts#create" do
    nonce_from_the_client = params[:payment_method_nonce]
  end

end
