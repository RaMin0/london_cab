module LondonCab
  module Api
    module Endpoints
      module Ride
        def ride_now(pickup_latitude:,
                     pickup_longitude:,
                     dropoff_latitude:,
                     dropoff_longitude:,
                     customer_name:,
                     customer_phone:,
                     customer_email:)
          post('ConfirmBookNowRide', 'PickupLat'     => pickup_latitude,
                                     'PickupLong'    => pickup_longitude,
                                     'DropoffLat'    => dropoff_latitude,
                                     'DropoffLong'   => dropoff_longitude,
                                     'CustomerName'  => customer_name,
                                     'CustomerPhone' => customer_phone,
                                     'CustomerEmail' => customer_email)['Result']
        end

        def ride_cancel(ride_id:)
          post("CancelRide/#{ride_id}")['Result']['IsCanceled']
        end
      end
    end
  end
end
