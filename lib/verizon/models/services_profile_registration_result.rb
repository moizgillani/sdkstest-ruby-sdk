# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ServicesProfileRegistrationResult Model.
  class ServicesProfileRegistrationResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['message'] = 'message'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        message
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status = SKIP,
                   message = SKIP)
      @status = status unless status == SKIP
      @message = message unless message == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP

      # Create object from extracted values.
      ServicesProfileRegistrationResult.new(status,
                                            message)
    end
  end
end
