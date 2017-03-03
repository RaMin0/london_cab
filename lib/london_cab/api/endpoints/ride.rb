module LondonCab
  module Api
    module Endpoints
      module Ride
        def ride_request(options = {})
          post('RequestRide', options)
        end
      end
    end
  end
end
