# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # StatusConditionItem Model.
  class StatusConditionItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :last_heartbeat_time

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :last_transition_time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reason

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['last_heartbeat_time'] = 'lastHeartbeatTime'
      @_hash['last_transition_time'] = 'lastTransitionTime'
      @_hash['reason'] = 'reason'
      @_hash['message'] = 'message'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        status
        last_heartbeat_time
        last_transition_time
        reason
        message
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = SKIP,
                   status = SKIP,
                   last_heartbeat_time = SKIP,
                   last_transition_time = SKIP,
                   reason = SKIP,
                   message = SKIP)
      @type = type unless type == SKIP
      @status = status unless status == SKIP
      @last_heartbeat_time = last_heartbeat_time unless last_heartbeat_time == SKIP
      @last_transition_time = last_transition_time unless last_transition_time == SKIP
      @reason = reason unless reason == SKIP
      @message = message unless message == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      last_heartbeat_time = if hash.key?('lastHeartbeatTime')
                              (DateTimeHelper.from_rfc3339(hash['lastHeartbeatTime']) if hash['lastHeartbeatTime'])
                            else
                              SKIP
                            end
      last_transition_time = if hash.key?('lastTransitionTime')
                               (DateTimeHelper.from_rfc3339(hash['lastTransitionTime']) if hash['lastTransitionTime'])
                             else
                               SKIP
                             end
      reason = hash.key?('reason') ? hash['reason'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP

      # Create object from extracted values.
      StatusConditionItem.new(type,
                              status,
                              last_heartbeat_time,
                              last_transition_time,
                              reason,
                              message)
    end

    def to_last_heartbeat_time
      DateTimeHelper.to_rfc3339(last_heartbeat_time)
    end

    def to_last_transition_time
      DateTimeHelper.to_rfc3339(last_transition_time)
    end
  end
end
