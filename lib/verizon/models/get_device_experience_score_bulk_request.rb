# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # GetDeviceExperienceScoreBulkRequest Model.
  class GetDeviceExperienceScoreBulkRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [Array[DeviceIdentifier]]
    attr_accessor :device_list_item

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_list_item'] = 'deviceListItem'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil,
                   device_list_item = nil)
      @account_name = account_name
      @device_list_item = device_list_item
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      # Parameter is an array, so we need to iterate through it
      device_list_item = nil
      unless hash['deviceListItem'].nil?
        device_list_item = []
        hash['deviceListItem'].each do |structure|
          device_list_item << (DeviceIdentifier.from_hash(structure) if structure)
        end
      end

      device_list_item = nil unless hash.key?('deviceListItem')

      # Create object from extracted values.
      GetDeviceExperienceScoreBulkRequest.new(account_name,
                                              device_list_item)
    end
  end
end
