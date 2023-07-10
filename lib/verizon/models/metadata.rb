# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Metadata Model.
  class Metadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :display_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :modified_at

    # TODO: Write general description for this method
    # @return [MetadataLabel]
    attr_accessor :labels

    # TODO: Write general description for this method
    # @return [MetadataAnnotation]
    attr_accessor :annotations

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :organization_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :partner_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :project_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['display_name'] = 'displayName'
      @_hash['created_at'] = 'createdAt'
      @_hash['modified_at'] = 'modifiedAt'
      @_hash['labels'] = 'labels'
      @_hash['annotations'] = 'annotations'
      @_hash['organization_id'] = 'organizationID'
      @_hash['partner_id'] = 'partnerID'
      @_hash['project_id'] = 'projectID'
      @_hash['id'] = 'id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        display_name
        created_at
        modified_at
        labels
        annotations
        organization_id
        partner_id
        project_id
        id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   display_name = SKIP,
                   created_at = SKIP,
                   modified_at = SKIP,
                   labels = SKIP,
                   annotations = SKIP,
                   organization_id = SKIP,
                   partner_id = SKIP,
                   project_id = SKIP,
                   id = SKIP)
      @name = name unless name == SKIP
      @display_name = display_name unless display_name == SKIP
      @created_at = created_at unless created_at == SKIP
      @modified_at = modified_at unless modified_at == SKIP
      @labels = labels unless labels == SKIP
      @annotations = annotations unless annotations == SKIP
      @organization_id = organization_id unless organization_id == SKIP
      @partner_id = partner_id unless partner_id == SKIP
      @project_id = project_id unless project_id == SKIP
      @id = id unless id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      display_name = hash.key?('displayName') ? hash['displayName'] : SKIP
      created_at = hash.key?('createdAt') ? hash['createdAt'] : SKIP
      modified_at = hash.key?('modifiedAt') ? hash['modifiedAt'] : SKIP
      labels = MetadataLabel.from_hash(hash['labels']) if hash['labels']
      annotations = MetadataAnnotation.from_hash(hash['annotations']) if hash['annotations']
      organization_id =
        hash.key?('organizationID') ? hash['organizationID'] : SKIP
      partner_id = hash.key?('partnerID') ? hash['partnerID'] : SKIP
      project_id = hash.key?('projectID') ? hash['projectID'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP

      # Create object from extracted values.
      Metadata.new(name,
                   display_name,
                   created_at,
                   modified_at,
                   labels,
                   annotations,
                   organization_id,
                   partner_id,
                   project_id,
                   id)
    end
  end
end