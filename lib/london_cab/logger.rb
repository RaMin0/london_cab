require 'logger'

module LondonCab
  class Logger < ::Logger
    def self.default
      @logger ||= begin
        logger = new STDOUT
        logger.progname = "LondonCab/#{VERSION}"
        logger.level    = Logger::WARN
        logger
      end
    end
  end
end
