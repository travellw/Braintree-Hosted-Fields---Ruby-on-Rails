# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(first_name: 'simone', last_name: 'deBeauvoir', email: 'simonedebeauvoir@hey.com', phone: '0033140000000')
Customer.create(first_name: 'albert', last_name: 'camus', email: 'albertcamus@hey.com', phone: '21321305434')
Customer.create(first_name: 'soren', last_name: 'kierkegaard', email: 'sorenkierkegaard@hey.com', phone: '40854171')
Customer.create(first_name: 'frantz', last_name: 'fanon', email: 'frantzfranon@hey.com', phone: '596700555822')
Customer.create(first_name: 'friedrich', last_name: 'nietzsche', email: 'friedrichnietzsche@hey.com', phone: '5417543010')
Transaction.create(amount: '100', customer_id: 1)
Transaction.create(amount: '200', customer_id: 2)
Transaction.create(amount: '300', customer_id: 3)
Transaction.create(amount: '400', customer_id: 4)
Transaction.create(amount: '500', customer_id: 4)
Transaction.create(amount: '600', customer_id: 5)

#seed this data using the rails db:seed command and then use the command lline to make queries

#rails console


#get the sum of all the transactions in the database (CLEVER!!!)
#SELECT SUM(amount)
#FROM transactions;

#count the total number of customers
#SELECT COUNT(*)
#FROM customers; 