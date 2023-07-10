# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Status of Hyper Precise Location on the device.
  class BullseyeServiceResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The account the device belongs to.
    # @return [String]
    attr_accessor :account_number

    # List of devices.
    # @return [Array[DeviceServiceInformation]]
    attr_accessor :device_list

    # ResponseCode and/or a message indicating success or failure of the
    # request.
    # @return [ApiResponseCode]
    attr_accessor :response_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_number'] = 'accountNumber'
      @_hash['device_list'] = 'deviceList'
      @_hash['response_type'] = 'responseType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_number
        device_list
        response_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_number = SKIP,
                   device_list = SKIP,
                   response_type = SKIP)
      @account_number = account_number unless account_number == SKIP
      @device_list = device_list unless device_list == SKIP
      @response_type = response_type unless response_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_number = hash.key?('accountNumber') ? hash['accountNumber'] : SKIP
      # Parameter is an array, so we need to iterate through it
      device_list = nil
      unless hash['deviceList'].nil?
        device_list = []
        hash['deviceList'].each do |structure|
          device_list << (DeviceServiceInformation.from_hash(structure) if structure)
        end
      end

      device_list = SKIP unless hash.key?('deviceList')
      response_type = ApiResponseCode.from_hash(hash['responseType']) if hash['responseType']

      # Create object from extracted values.
      BullseyeServiceResult.new(account_number,
                                device_list,
                                response_type)
    end
  end
end
