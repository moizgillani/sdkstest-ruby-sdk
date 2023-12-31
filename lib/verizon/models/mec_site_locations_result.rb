# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MECSiteLocationsResult Model.
  class MECSiteLocationsResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[MECSiteLocation]]
    attr_accessor :mecsites

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mecsites'] = 'mecsites'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mecsites
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(mecsites = SKIP)
      @mecsites = mecsites unless mecsites == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      mecsites = nil
      unless hash['mecsites'].nil?
        mecsites = []
        hash['mecsites'].each do |structure|
          mecsites << (MECSiteLocation.from_hash(structure) if structure)
        end
      end

      mecsites = SKIP unless hash.key?('mecsites')

      # Create object from extracted values.
      MECSiteLocationsResult.new(mecsites)
    end
  end
end
