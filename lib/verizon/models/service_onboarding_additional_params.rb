# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ServiceOnboardingAdditionalParams Model.
  class ServiceOnboardingAdditionalParams < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Key properties/metadata attribute.
    # @return [String]
    attr_accessor :key

    # Properties/metadata value attribute.
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['value'] = 'value'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        key
        value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(key = SKIP,
                   value = SKIP)
      @key = key unless key == SKIP
      @value = value unless value == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = hash.key?('key') ? hash['key'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP

      # Create object from extracted values.
      ServiceOnboardingAdditionalParams.new(key,
                                            value)
    end
  end
end
