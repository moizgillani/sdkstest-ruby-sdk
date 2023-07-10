# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ConsentRequest Model.
  class ConsentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account identifier in "##########-#####".
    # @return [String]
    attr_accessor :account_name

    # Exclude all devices or not.
    # @return [TrueClass | FalseClass]
    attr_accessor :all_device

    # The change to make: append or replace.
    # @return [String]
    attr_accessor :type

    # Device ID list.
    # @return [Array[String]]
    attr_accessor :exclusion

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['all_device'] = 'allDevice'
      @_hash['type'] = 'type'
      @_hash['exclusion'] = 'exclusion'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        all_device
        type
        exclusion
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP,
                   all_device = SKIP,
                   type = SKIP,
                   exclusion = SKIP)
      @account_name = account_name unless account_name == SKIP
      @all_device = all_device unless all_device == SKIP
      @type = type unless type == SKIP
      @exclusion = exclusion unless exclusion == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      all_device = hash.key?('allDevice') ? hash['allDevice'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      exclusion = hash.key?('exclusion') ? hash['exclusion'] : SKIP

      # Create object from extracted values.
      ConsentRequest.new(account_name,
                         all_device,
                         type,
                         exclusion)
    end
  end
end
