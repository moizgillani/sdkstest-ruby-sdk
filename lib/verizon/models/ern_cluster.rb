# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ERNCluster Model.
  class ERNCluster < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [UUID | String]
    attr_accessor :id

    # User display name.
    # @return [String]
    attr_accessor :name

    # User display name.
    # @return [Array[NamespaceIdItem]]
    attr_accessor :name_space

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['name_space'] = 'nameSpace'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        name_space
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   name_space = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @name_space = name_space unless name_space == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      # Parameter is an array, so we need to iterate through it
      name_space = nil
      unless hash['nameSpace'].nil?
        name_space = []
        hash['nameSpace'].each do |structure|
          name_space << (NamespaceIdItem.from_hash(structure) if structure)
        end
      end

      name_space = SKIP unless hash.key?('nameSpace')

      # Create object from extracted values.
      ERNCluster.new(id,
                     name,
                     name_space)
    end
  end
end
