class Stock < ApplicationRecord

  def self.new_lookup(ticker)
    client = IEX::Api::Client.new( publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                    secret_token: Rails.application.credentials.iex_client[:secret_sandbox_key],
                    endpoint: 'https://sandbox.iexapis.com/v1'
    
                  )
    new(ticker: ticker, name: client.company(ticker).company_name, last_price: client.price(ticker))
    
  end
end
