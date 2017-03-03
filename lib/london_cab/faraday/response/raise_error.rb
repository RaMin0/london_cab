module LondonCab
  module Faraday
    module Response
      class RaiseError < ::Faraday::Response::Middleware
        def on_complete(env)
          body = env.body
          return body['Result'] unless body['HasError']

          raise LondonCab::Api::Error.new(body['Messgage'], env.response)
        end
      end
    end
  end
end
