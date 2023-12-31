# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Resource Base of the service.
  class ResourceBase < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Resource unit ex :MB.
    # @return [String]
    attr_accessor :unit

    # Resource value e.g. 200MB.
    # @return [Integer]
    attr_accessor :value

    # Resource max value e.g. 400MB.
    # @return [Integer]
    attr_accessor :max

    # Resource min value e.g. 10MB.
    # @return [Integer]
    attr_accessor :min

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['unit'] = 'unit'
      @_hash['value'] = 'value'
      @_hash['max'] = 'max'
      @_hash['min'] = 'min'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        unit
        value
        max
        min
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(unit = SKIP,
                   value = SKIP,
                   max = SKIP,
                   min = SKIP)
      @unit = unit unless unit == SKIP
      @value = value unless value == SKIP
      @max = max unless max == SKIP
      @min = min unless min == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      unit = hash.key?('unit') ? hash['unit'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      max = hash.key?('max') ? hash['max'] : SKIP
      min = hash.key?('min') ? hash['min'] : SKIP

      # Create object from extracted values.
      ResourceBase.new(unit,
                       value,
                       max,
                       min)
    end
  end
end
