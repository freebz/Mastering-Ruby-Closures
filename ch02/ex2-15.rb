# Object Initialization, Revisited

client = Twitter::REST::Client.new({consumer_key: "YOUR_CONSUMER_KEY"}) do
  consumer_secret     = "YOUR_CONSUMER_SECRET"
  access_token        = "YOUR_ACCESS_TOKEN"
  access_token_secret = "YOUR_ACCESS-SECRET"
end


def initialize(options = {}, &block)
  options.each { |k,v| send("#{k}=", v) }
  instance_eval(&block) if block_given?
end
