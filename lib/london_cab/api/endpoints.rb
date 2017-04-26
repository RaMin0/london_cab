require 'london_cab/api/endpoints/request'
require 'london_cab/api/endpoints/ride'

module LondonCab
  module Api
    module Endpoints
      include Request
      include Ride
    end
  end
end
