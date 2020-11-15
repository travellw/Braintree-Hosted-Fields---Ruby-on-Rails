Braintree::Configuration.environment = :sandbox
Braintree::Configuration.logger = Logger.new('log/braintree.log')
Braintree::Configuration.merchant_id = ENV['QWZ7YZZXZFGBHRSQ']
Braintree::Configuration.public_key = ENV['RQ2R7VRHRBNJP7CD']
Braintree::Configuration.private_key = ENV['4CE24E95C0F9BA76295DDAC2CDDFED44']