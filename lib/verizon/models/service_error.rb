# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Errors related to service.
  class ServiceError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Category defined under which the error falls.
    # @return [String]
    attr_accessor :error_category

    # Error Code is required.
    # @return [String]
    attr_accessor :error_code

    # Error description is required.
    # @return [String]
    attr_accessor :error_desc

    # Sub-category of the error defined.
    # @return [String]
    attr_accessor :error_subcategory

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['error_category'] = 'errorCategory'
      @_hash['error_code'] = 'errorCode'
      @_hash['error_desc'] = 'errorDesc'
      @_hash['error_subcategory'] = 'errorSubcategory'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        error_category
        error_code
        error_desc
        error_subcategory
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(error_category = SKIP,
                   error_code = SKIP,
                   error_desc = SKIP,
                   error_subcategory = SKIP)
      @error_category = error_category unless error_category == SKIP
      @error_code = error_code unless error_code == SKIP
      @error_desc = error_desc unless error_desc == SKIP
      @error_subcategory = error_subcategory unless error_subcategory == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      error_category = hash.key?('errorCategory') ? hash['errorCategory'] : SKIP
      error_code = hash.key?('errorCode') ? hash['errorCode'] : SKIP
      error_desc = hash.key?('errorDesc') ? hash['errorDesc'] : SKIP
      error_subcategory =
        hash.key?('errorSubcategory') ? hash['errorSubcategory'] : SKIP

      # Create object from extracted values.
      ServiceError.new(error_category,
                       error_code,
                       error_desc,
                       error_subcategory)
    end
  end
end
