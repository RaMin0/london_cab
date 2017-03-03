module LondonCab
  class Client
    include Faraday::Connection
    include Faraday::Request
    include Api::Endpoints

    attr_accessor(*Config::ATTRIBUTES)

    def initialize(options = {})
      LondonCab::Config::ATTRIBUTES.each do |key|
        send("#{key}=", options[key] || LondonCab.config.send(key))
      end

      @logger ||= LondonCab::Config.logger || LondonCab::Logger.default
    end

    class << self
      def configure
        block_given? ? yield(Config) : Config
      end

      def config
        Config
      end
    end
  end
end
