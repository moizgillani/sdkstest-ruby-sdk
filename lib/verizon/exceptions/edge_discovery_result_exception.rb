# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Base type for all errors.
  class EdgeDiscoveryResultException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # HTTP status code or status of response.
    # @return [String]
    attr_accessor :status

    # Error details.
    # @return [String]
    attr_accessor :message

    # For cases where user input exceeds the boundary values an additional
    # 'data' key will be returned with a relevant description.
    # @return [EdgeDiscoveryResultData]
    attr_accessor :data

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @status = hash.key?('status') ? hash['status'] : nil
      @message = hash.key?('message') ? hash['message'] : nil
      @data = EdgeDiscoveryResultData.from_hash(hash['data']) if hash['data']
    end
  end
end
