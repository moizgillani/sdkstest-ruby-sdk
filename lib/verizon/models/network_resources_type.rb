# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Network resources of a service profile.
  class NetworkResourcesType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Minimum required connection bandwidth in Kbit/s for the application.
    # @return [Integer]
    attr_accessor :min_bandwidth_kbits

    # Indicates if service continuity support is required or not for the
    # application.
    # @return [TrueClass | FalseClass]
    attr_accessor :service_continuity_support

    # Maximum request rate that the application can handle.
    # @return [Integer]
    attr_accessor :max_request_rate

    # Maximum response time or latency that the application can handle, in
    # milliseconds. Note: this value must be in multiples of 5.
    # @return [Integer]
    attr_accessor :max_latency_ms

    # Minimum availability required for the server.
    # @return [Integer]
    attr_accessor :min_availability

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['min_bandwidth_kbits'] = 'minBandwidthKbits'
      @_hash['service_continuity_support'] = 'serviceContinuitySupport'
      @_hash['max_request_rate'] = 'maxRequestRate'
      @_hash['max_latency_ms'] = 'maxLatencyMs'
      @_hash['min_availability'] = 'minAvailability'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        min_bandwidth_kbits
        service_continuity_support
        max_request_rate
        min_availability
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(max_latency_ms = nil,
                   min_bandwidth_kbits = SKIP,
                   service_continuity_support = SKIP,
                   max_request_rate = SKIP,
                   min_availability = SKIP)
      @min_bandwidth_kbits = min_bandwidth_kbits unless min_bandwidth_kbits == SKIP
      unless service_continuity_support == SKIP
        @service_continuity_support =
          service_continuity_support
      end
      @max_request_rate = max_request_rate unless max_request_rate == SKIP
      @max_latency_ms = max_latency_ms
      @min_availability = min_availability unless min_availability == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      max_latency_ms = hash.key?('maxLatencyMs') ? hash['maxLatencyMs'] : nil
      min_bandwidth_kbits =
        hash.key?('minBandwidthKbits') ? hash['minBandwidthKbits'] : SKIP
      service_continuity_support =
        hash.key?('serviceContinuitySupport') ? hash['serviceContinuitySupport'] : SKIP
      max_request_rate =
        hash.key?('maxRequestRate') ? hash['maxRequestRate'] : SKIP
      min_availability =
        hash.key?('minAvailability') ? hash['minAvailability'] : SKIP

      # Create object from extracted values.
      NetworkResourcesType.new(max_latency_ms,
                               min_bandwidth_kbits,
                               service_continuity_support,
                               max_request_rate,
                               min_availability)
    end
  end
end
