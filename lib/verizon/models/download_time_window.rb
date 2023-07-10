# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DownloadTimeWindow Model.
  class DownloadTimeWindow < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device IMEI list.
    # @return [String]
    attr_accessor :start_time

    # Device IMEI list.
    # @return [String]
    attr_accessor :end_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_time'] = 'startTime'
      @_hash['end_time'] = 'endTime'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        start_time
        end_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(start_time = SKIP,
                   end_time = SKIP)
      @start_time = start_time unless start_time == SKIP
      @end_time = end_time unless end_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_time = hash.key?('startTime') ? hash['startTime'] : SKIP
      end_time = hash.key?('endTime') ? hash['endTime'] : SKIP

      # Create object from extracted values.
      DownloadTimeWindow.new(start_time,
                             end_time)
    end
  end
end
