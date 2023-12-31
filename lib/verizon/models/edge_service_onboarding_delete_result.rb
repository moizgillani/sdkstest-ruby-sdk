# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to delete a service.
  class EdgeServiceOnboardingDeleteResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Message confirms if the action was success or failure.
    # @return [String]
    attr_accessor :message

    # Will provide the current status of the action.
    # @return [String]
    attr_accessor :status

    # Displays the proper response with status.
    # @return [String]
    attr_accessor :sub_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['message'] = 'message'
      @_hash['status'] = 'status'
      @_hash['sub_status'] = 'subStatus'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        message
        status
        sub_status
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(message = SKIP,
                   status = SKIP,
                   sub_status = SKIP)
      @message = message unless message == SKIP
      @status = status unless status == SKIP
      @sub_status = sub_status unless sub_status == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      message = hash.key?('message') ? hash['message'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      sub_status = hash.key?('subStatus') ? hash['subStatus'] : SKIP

      # Create object from extracted values.
      EdgeServiceOnboardingDeleteResult.new(message,
                                            status,
                                            sub_status)
    end
  end
end
