class CheckoutsController < ApplicationController
  
  TRANSACTION_SUCCESS_STATUSES = [
    Braintree::Transaction::Status::Authorizing,
    Braintree::Transaction::Status::Authorized,
    Braintree::Transaction::Status::Settled,
    Braintree::Transaction::Status::SettlementConfirmed,
    Braintree::Transaction::Status::SettlementPending,
    Braintree::Transaction::Status::Settling,
    Braintree::Transaction::Status::SubmittedForSettlement,
  ]

#generates a client token   
  def new
    @client_token = gateway.client_token.generate
    pp 'client_token', @client_token
  end

  def create
    #using nonce to verify and store a card while creating a customer
    @nonce_from_the_client = params["payment_method_nonce"]
    # @customer.id = params["result.customer.id"]
    
    #create the customer using a nonce
    result = gateway.customer.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      payment_method_nonce: @nonce_from_the_client,
      credit_card: {
       options: {
        #successful verifictaion automatically stores in Vault 
        verify_card: true
       }  
      } 
    )
    if result.success? 
      puts result.customer.id
      #save the customer in the database
      @customer = Customer.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone: params[:phone]
      )
      @customer.save
      puts result.customer.payment_methods[0].token
      
      result = gateway.transaction.sale(
        customer_id: result.customer.id,
        amount: "10.00",
        options: {
          submit_for_settlement: true
        }
      ) 
      if result.success?
        pp result.transaction
        @transaction = Transaction.new(
          braintree_id: result.transaction.id,
          status: result.transaction.status,
          amount: result.transaction.amount,
          customer_id: @customer.id
        )
        puts result.transaction.id
        render :success 
        @transaction.save
        puts "Your transaction was created successfully."
      else
        render :failure
        puts "There was a problem with your payment. Please contact the webmaster."
        puts @result.errors
      end
    else
      puts @result.errors
    end
  end

  def gateway
    gateway = Braintree::Gateway.new(
      :environment => :sandbox,
      :merchant_id => ENV["BRAINTREE_MERCHANT_ID"],
      :public_key => ENV["BRAINTREE_PUBLIC_KEY"],
      :private_key => ENV["BRAINTREE_PRIVATE_KEY"],
    )
  end
end
