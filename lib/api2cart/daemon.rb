require 'api2cart/daemon/version'
require 'api2cart/daemon/http_message_reader'
require 'api2cart/daemon/anti_throttler'
require 'api2cart/daemon/proxy_connection_handler'
require 'api2cart/daemon/proxy_server'
require 'active_support/core_ext/module/delegation'

module Api2cart
  module Daemon
    def self.run(port)
      ProxyServer.new(port).run
    end

    def self.run_async(port)
      ProxyServer.new(port).run_async
    end
  end
end
