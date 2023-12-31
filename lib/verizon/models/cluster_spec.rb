# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ClusterSpec Model.
  class ClusterSpec < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :blueprint_ref

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :override_selector

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :share_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['blueprint_ref'] = 'blueprintRef'
      @_hash['override_selector'] = 'overrideSelector'
      @_hash['share_mode'] = 'shareMode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        blueprint_ref
        override_selector
        share_mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(blueprint_ref = SKIP,
                   override_selector = SKIP,
                   share_mode = SKIP)
      @blueprint_ref = blueprint_ref unless blueprint_ref == SKIP
      @override_selector = override_selector unless override_selector == SKIP
      @share_mode = share_mode unless share_mode == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      blueprint_ref = hash.key?('blueprintRef') ? hash['blueprintRef'] : SKIP
      override_selector =
        hash.key?('overrideSelector') ? hash['overrideSelector'] : SKIP
      share_mode = hash.key?('shareMode') ? hash['shareMode'] : SKIP

      # Create object from extracted values.
      ClusterSpec.new(blueprint_ref,
                      override_selector,
                      share_mode)
    end
  end
end
