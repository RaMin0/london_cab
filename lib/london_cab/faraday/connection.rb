module LondonCab
  module Faraday
    module Connection
      private

      def connection
        options = {
          headers: {
            'Accept'       => 'application/json; charset=utf-8',
            'Content-Type' => 'application/json'
          }
        }

        options[:headers]['Authorization'] = "Bearer #{token}" if token
        options[:headers]['User-Agent']    = user_agent        if user_agent

        ::Faraday::Connection.new(endpoint, options) do |connection|
          connection.use ::FaradayMiddleware::EncodeJson
          connection.use ::LondonCab::Faraday::Response::RaiseError
          connection.use ::FaradayMiddleware::ParseJson
          connection.use ::Faraday::Response::RaiseError

          connection.response :logger, logger if logger
          connection.adapter ::Faraday.default_adapter
        end
      end
    end
  end
end
