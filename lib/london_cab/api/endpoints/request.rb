module LondonCab
  module Api
    module Endpoints
      module Request
        def request_now(pickup_latitude:,
                        pickup_longitude:,
                        dropoff_latitude:,
                        dropoff_longitude:)
          post('RequestRideNow', 'PickupLat'   => pickup_latitude,
                                 'PickupLong'  => pickup_longitude,
                                 'DropoffLat'  => dropoff_latitude,
                                 'DropoffLong' => dropoff_longitude)['Result']
        end

        def request_later(pickup_latitude:,
                          pickup_longitude:,
                          dropoff_latitude:,
                          dropoff_longitude:)
          post('RequestRide', 'PickupLat'   => pickup_latitude,
                              'PickupLong'  => pickup_longitude,
                              'DropoffLat'  => dropoff_latitude,
                              'DropoffLong' => dropoff_longitude)['Result']
        end
      end
    end
  end
end
