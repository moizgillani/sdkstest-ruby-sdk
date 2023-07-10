# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # Details of the firmware upgrade request.
  class FirmwareUpgradeRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account identifier in "##########-#####".
    # @return [String]
    attr_accessor :account_name

    # The name of the firmware image that will be used for the upgrade, from a
    # GET /firmware response.
    # @return [String]
    attr_accessor :firmware_name

    # The name of the firmware version that will be on the devices after a
    # successful upgrade.
    # @return [String]
    attr_accessor :firmware_to

    # The date that the upgrade should begin.
    # @return [DateTime]
    attr_accessor :start_date

    # The IMEIs of the devices.
    # @return [Array[String]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['firmware_name'] = 'firmwareName'
      @_hash['firmware_to'] = 'firmwareTo'
      @_hash['start_date'] = 'startDate'
      @_hash['device_list'] = 'deviceList'
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
                   firmware_name = nil,
                   firmware_to = nil,
                   start_date = nil,
                   device_list = nil)
      @account_name = account_name
      @firmware_name = firmware_name
      @firmware_to = firmware_to
      @start_date = start_date
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      firmware_name = hash.key?('firmwareName') ? hash['firmwareName'] : nil
      firmware_to = hash.key?('firmwareTo') ? hash['firmwareTo'] : nil
      start_date = if hash.key?('startDate')
                     (DateTimeHelper.from_rfc3339(hash['startDate']) if hash['startDate'])
                   end
      device_list = hash.key?('deviceList') ? hash['deviceList'] : nil

      # Create object from extracted values.
      FirmwareUpgradeRequest.new(account_name,
                                 firmware_name,
                                 firmware_to,
                                 start_date,
                                 device_list)
    end

    def to_start_date
      DateTimeHelper.to_rfc3339(start_date)
    end
  end
end