# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The selected device and attributes for which a request should retrieve data.
  class HistorySearchFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account name identifier.
    # @return [String]
    attr_accessor :account_name

    # Identifies a particular IoT device.
    # @return [Device]
    attr_accessor :device

    # Streaming RF parameters for which you want to retrieve history data.
    # @return [HistorySearchFilterAttributes]
    attr_accessor :attributes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device'] = 'device'
      @_hash['attributes'] = 'attributes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        attributes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil,
                   device = nil,
                   attributes = SKIP)
      @account_name = account_name
      @device = device
      @attributes = attributes unless attributes == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      device = Device.from_hash(hash['device']) if hash['device']
      attributes = HistorySearchFilterAttributes.from_hash(hash['attributes']) if
        hash['attributes']

      # Create object from extracted values.
      HistorySearchFilter.new(account_name,
                              device,
                              attributes)
    end
  end
end
