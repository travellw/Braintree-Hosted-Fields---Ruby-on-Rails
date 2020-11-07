# API Support Internal Code Challenge (11/2020)

The Branitree Hosted Fields Integration outlined throughout this documentation is my candidate take home assignment for Braintree's API Support team. It is two-parts with the first being a general Hosted Fields Integration built alongside instructions (included) from the hiring team. The second is a Postgres database also built according to instructions (included) provided by the hiring team. 


### Achitecture
---
#### Technical Stack/Framework Used
* Fullstack Ruby on Rails 
* Postgres (Database)
* Braintree API
  * Ruby SDK (Server-Side)
  * Javascript SDK (Client-Side)
#### Languages
* Ruby
* SQL
* Javascript
* HTML
* CSS

### API Reference Documentation
---
[Braintree's Set Up Your Server for Ruby SDK](https://developers.braintreepayments.com/start/hello-server/ruby)

[Braintree's Client SDK for JavaScript v3 SDK](https://developers.braintreepayments.com/guides/client-sdk/setup/javascript/v3)

[Braintree's Hosted Fields Setup and Integration](https://developers.braintreepayments.com/guides/hosted-fields/setup-and-integration/javascript/v3)

[Braintree's Hosted Fields Reference GitHub Documentation](https://braintree.github.io/braintree-web/current/HostedFields.html)

[Braintree's Transaction.sale() for Ruby SDK](https://developers.braintreepayments.com/reference/request/transaction/sale/ruby)

[Braintree's PaymentMethodNonce.create() for RubySDK](https://developers.braintreepayments.com/reference/request/payment-method-nonce/create/ruby)

[Braintree's Customer.create() for Ruby SDK](https://developers.braintreepayments.com/reference/request/customer/create/ruby)

---

## Integration Project: Part 1

>Objective: 
>Your integration should make use of our ​JavaScript v3 SDK Hosted Fields​ solution and any of our server-side languages available on our ​API documentation page​. Hosted Fields is a little different than the Drop-In UI solution described in the ​Getting Started guide​, but many of the basic concepts are the same. 

>Your client-side code needs to:
>1. Request a from your server
>2. Perform a
request to configure Hosted Fields. You’ll
 ​client_token​
  ​braintree.hostedFields.create​
 need to use the client token
>3. Present a payment form​ that uses Hosted Fields
>4. Upon submission, your form should submit a ​payment method nonce​ to your server to
create a transaction
>5. Inform your end user of whether or not the transaction in step 4 was successful

>Your server-side code needs to:
>1. Generate a ​client_token​ in response to your client-side request
>2. Make an API request to use the ​payment_method_nonce​ to ​verify a card​ and ​store it in
your Vault
>3. Make a subsequent API request using the result object from Step 2 to ​create a
transaction​ using this stored payment method token

>Your integration should appropriately handle client-side and server-side errors and present the
>relevant information for any errors to your end users.

### Screenshot
---
### Installation
---
### Credits
---
[Reddit Article "How I got the Braintree Payments SDK to work...Posted byu/-Zhytomyr-3 years ago"](https://www.reddit.com/r/laravel/comments/5tk6g6/how_i_got_the_braintree_payments_sdk_to_work/) 

[Using Braintree hosted fields with Ruby on Rails](https://brobertsaz.github.io/2017/rails-with-braintree-hosted-fields/)

## Integration Project: Part 2
>Objective: Option One 

>​The goal is to create a SQL database that will accept ​customer information and ​transaction information​. Please provide 2 recommendations for queries we can run to access the data.

>Instructions:
>1. Add a SQL database to your integration. As a note, your database does not need to be persistent. We will run transactions through your integration before accessing the database, that said if there are any specific steps you’d like us to take to seed the database, please do include instructions.
>2. Any transactions and customers created should be added to the database
>3. Include instructions for where queries can be made to access transaction and
customer information from the database      
>4. Include 2 SQL queries that can be run to access specific data within the database

### Screenshot 
---
### Schema
---

| first_name  |  last_name| |    email    |
| ----------- | ----------- | ----------- |
| Header      | Title       |   Name      |
| Paragraph   | Text        |   Name      | 



### Installation
--- 

### Queries
___

### Credits
---
DeBarros, A. "Chapter 4: Importing and Exporting Data." *Practical SQL: A Beginner's Guide to Storytelling With Data,* Edited by No Startch Press. San Francisco. 2018, pp.24-37.   

DeBarros, A. "Chapter 6: Joining Tables in a Relational Database." *Practical SQL: A Beginner's Guide to Storytelling With Data,* Edited by No Startch Press. San Francisco. 2018, pp.73-91.   

DeBarros, A. "Chapter 7: Table Design that Works for You." *Practical SQL: A Beginner's Guide to Storytelling With Data,* Edited by No Startch Press. San Francisco. 2018, pp.93-112.   

