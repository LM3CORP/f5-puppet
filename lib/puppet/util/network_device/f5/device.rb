require 'puppet/util/network_device/base'
require 'puppet/util/network_device/f5'
require 'puppet/util/network_device/f5/facts'
require 'puppet/util/network_device/transport/f5'
require 'faraday'

class Puppet::Util::NetworkDevice::F5::Device
  attr_reader :connection
  attr_accessor :url, :transport

  def initialize(url, options = {})
    @autoloader = Puppet::Util::Autoload.new(
      self,
      "puppet/util/network_device/transport",
      :wrap => false
    )
    if @autoloader.load("f5")
      @transport = Puppet::Util::NetworkDevice::Transport::F5.new(url,options[:debug])
    end
  end

  def facts
    @facts ||= Puppet::Util::NetworkDevice::F5::Facts.new(@transport)

    return @facts.retrieve
  end

end