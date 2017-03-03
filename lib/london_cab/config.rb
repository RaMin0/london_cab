module LondonCab
  module Config
    extend self

    ATTRIBUTES = [
      :endpoint,
      :user_agent,
      :token,
      :logger
    ].freeze

    attr_accessor(*Config::ATTRIBUTES)

    def reset
      self.endpoint   = 'http://65.182.108.16:3467/api/CorporateAPI'
      self.user_agent = "LondonCab/#{LondonCab::VERSION}"
      self.token      = nil
      self.logger     = nil
    end

    reset
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
