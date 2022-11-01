# frozen_string_literal: true

module CallVerification
  class Client
    BASE_URL = 'https://sms.ru'

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter, stubs: nil)
      @api_key = api_key
      @adapter = adapter

      # Test stubs for requests
      @stubs = stubs
    end

    def code_call(phone:)
      connection.get('/code/call') do |req|
        req.params['phone'] = phone
        req.params['api_id'] = api_key
      end
    end

    private

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        conn.response :json

        conn.adapter adapter, @stubs
      end
    end
  end
end
