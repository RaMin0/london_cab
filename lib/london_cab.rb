begin
  require 'byebug'
rescue LoadError
end

require 'london_cab/version'
require 'london_cab/logger'
require 'london_cab/config'

# API
require 'faraday'
require 'faraday_middleware'
require 'json'
require 'logger'

require 'london_cab/api/error'
require 'london_cab/faraday/response/raise_error'
require 'london_cab/faraday/connection'
require 'london_cab/faraday/request'
require 'london_cab/api/endpoints'
require 'london_cab/client'
