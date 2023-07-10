# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # WNPRestErrorResponse class.
  class WNPRestErrorResponseException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :error_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :error_message

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
      @error_code = hash.key?('errorCode') ? hash['errorCode'] : SKIP
      @error_message = hash.key?('errorMessage') ? hash['errorMessage'] : SKIP
    end
  end
end
