class ReceiverController < ApplicationController

  def receive
	@stuffs = RestClient::Request.execute(
		method: :get,
		url: 'localhost:3000/todos',
		headers: {api_key: 'XXX'}
		)
			
  end

end
