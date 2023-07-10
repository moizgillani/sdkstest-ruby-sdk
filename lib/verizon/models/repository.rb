# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # Users can create a repository to maintain service artifacts. Repository
  # would be either a Git or HELM repository.
  class Repository < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # System generated unique identifier to identify repository uniquely.
    # @return [String]
    attr_accessor :id

    # Name of the repository to be created.
    # @return [String]
    attr_accessor :name

    # Description of the repository being created.
    # @return [String]
    attr_accessor :description

    # Type for the repository which can be Git or Helm.
    # @return [EdgeServiceRepositoryTypeEnum]
    attr_accessor :type

    # Attribute which can be used to tag a repository.
    # @return [String]
    attr_accessor :tag

    # Endpoint URL for the repository from where resources needs to be fetched.
    # @return [String]
    attr_accessor :endpoint

    # Reachability can be of two types, Internet and Private Network.
    # @return [RepositoryReacheabilityEnum]
    attr_accessor :reacheability

    # Required if your repository uses a private certificate authencation.Please
    # provide ur CA certificat in PEM format.
    # @return [String]
    attr_accessor :ca_certificate

    # This attribute can be used to specify GITOps Agent to fetch details from
    # private repository.
    # @return [Array[String]]
    attr_accessor :agents

    # Boolean value to check the SSL certification.
    # @return [TrueClass | FalseClass]
    attr_accessor :ssl_disabled

    # True if CSP is validated using provided credential, false otherwise.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_validated

    # Status when the repository is validated eg: CREDENTIAL_VALIDATION_SUCCESS.
    # @return [String]
    attr_accessor :validation_status

    # Credentials can be of two types, UserPassCredentials and SSHCredentials.
    # @return [RepositoryCredentialTypeEnum]
    attr_accessor :credentials_type

    # Credentials of a repository.
    # @return [RepositoryCredential]
    attr_accessor :credentials

    # SSH Private Key in PEM format.
    # @return [String]
    attr_accessor :ssh_key

    # Time when the repository was validated.
    # @return [DateTime]
    attr_accessor :last_validated_date

    # Date when the repository was created.
    # @return [DateTime]
    attr_accessor :created_date

    # Date when the repository was updated.
    # @return [DateTime]
    attr_accessor :last_modified_date

    # User information by whom the repository was created.
    # @return [String]
    attr_accessor :created_by

    # User information by whom the repository was updated.
    # @return [String]
    attr_accessor :updated_by

    # When it will be soft deleted, status will be changed.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_deleted

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['type'] = 'type'
      @_hash['tag'] = 'tag'
      @_hash['endpoint'] = 'endpoint'
      @_hash['reacheability'] = 'reacheability'
      @_hash['ca_certificate'] = 'CACertificate'
      @_hash['agents'] = 'Agents'
      @_hash['ssl_disabled'] = 'sslDisabled'
      @_hash['is_validated'] = 'isValidated'
      @_hash['validation_status'] = 'validationStatus'
      @_hash['credentials_type'] = 'credentialsType'
      @_hash['credentials'] = 'credentials'
      @_hash['ssh_key'] = 'sshKey'
      @_hash['last_validated_date'] = 'lastValidatedDate'
      @_hash['created_date'] = 'createdDate'
      @_hash['last_modified_date'] = 'lastModifiedDate'
      @_hash['created_by'] = 'createdBy'
      @_hash['updated_by'] = 'updatedBy'
      @_hash['is_deleted'] = 'isDeleted'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        description
        type
        tag
        endpoint
        reacheability
        ca_certificate
        agents
        ssl_disabled
        is_validated
        validation_status
        credentials_type
        credentials
        ssh_key
        last_validated_date
        created_date
        last_modified_date
        created_by
        updated_by
        is_deleted
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        agents
      ]
    end

    def initialize(name = nil,
                   id = SKIP,
                   description = SKIP,
                   type = SKIP,
                   tag = SKIP,
                   endpoint = SKIP,
                   reacheability = SKIP,
                   ca_certificate = SKIP,
                   agents = SKIP,
                   ssl_disabled = SKIP,
                   is_validated = SKIP,
                   validation_status = SKIP,
                   credentials_type = SKIP,
                   credentials = SKIP,
                   ssh_key = SKIP,
                   last_validated_date = SKIP,
                   created_date = SKIP,
                   last_modified_date = SKIP,
                   created_by = SKIP,
                   updated_by = SKIP,
                   is_deleted = SKIP)
      @id = id unless id == SKIP
      @name = name
      @description = description unless description == SKIP
      @type = type unless type == SKIP
      @tag = tag unless tag == SKIP
      @endpoint = endpoint unless endpoint == SKIP
      @reacheability = reacheability unless reacheability == SKIP
      @ca_certificate = ca_certificate unless ca_certificate == SKIP
      @agents = agents unless agents == SKIP
      @ssl_disabled = ssl_disabled unless ssl_disabled == SKIP
      @is_validated = is_validated unless is_validated == SKIP
      @validation_status = validation_status unless validation_status == SKIP
      @credentials_type = credentials_type unless credentials_type == SKIP
      @credentials = credentials unless credentials == SKIP
      @ssh_key = ssh_key unless ssh_key == SKIP
      @last_validated_date = last_validated_date unless last_validated_date == SKIP
      @created_date = created_date unless created_date == SKIP
      @last_modified_date = last_modified_date unless last_modified_date == SKIP
      @created_by = created_by unless created_by == SKIP
      @updated_by = updated_by unless updated_by == SKIP
      @is_deleted = is_deleted unless is_deleted == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      id = hash.key?('id') ? hash['id'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      tag = hash.key?('tag') ? hash['tag'] : SKIP
      endpoint = hash.key?('endpoint') ? hash['endpoint'] : SKIP
      reacheability = hash.key?('reacheability') ? hash['reacheability'] : SKIP
      ca_certificate = hash.key?('CACertificate') ? hash['CACertificate'] : SKIP
      agents = hash.key?('Agents') ? hash['Agents'] : SKIP
      ssl_disabled = hash.key?('sslDisabled') ? hash['sslDisabled'] : SKIP
      is_validated = hash.key?('isValidated') ? hash['isValidated'] : SKIP
      validation_status =
        hash.key?('validationStatus') ? hash['validationStatus'] : SKIP
      credentials_type =
        hash.key?('credentialsType') ? hash['credentialsType'] : SKIP
      credentials = RepositoryCredential.from_hash(hash['credentials']) if hash['credentials']
      ssh_key = hash.key?('sshKey') ? hash['sshKey'] : SKIP
      last_validated_date = if hash.key?('lastValidatedDate')
                              (DateTimeHelper.from_rfc3339(hash['lastValidatedDate']) if hash['lastValidatedDate'])
                            else
                              SKIP
                            end
      created_date = if hash.key?('createdDate')
                       (DateTimeHelper.from_rfc3339(hash['createdDate']) if hash['createdDate'])
                     else
                       SKIP
                     end
      last_modified_date = if hash.key?('lastModifiedDate')
                             (DateTimeHelper.from_rfc3339(hash['lastModifiedDate']) if hash['lastModifiedDate'])
                           else
                             SKIP
                           end
      created_by = hash.key?('createdBy') ? hash['createdBy'] : SKIP
      updated_by = hash.key?('updatedBy') ? hash['updatedBy'] : SKIP
      is_deleted = hash.key?('isDeleted') ? hash['isDeleted'] : SKIP

      # Create object from extracted values.
      Repository.new(name,
                     id,
                     description,
                     type,
                     tag,
                     endpoint,
                     reacheability,
                     ca_certificate,
                     agents,
                     ssl_disabled,
                     is_validated,
                     validation_status,
                     credentials_type,
                     credentials,
                     ssh_key,
                     last_validated_date,
                     created_date,
                     last_modified_date,
                     created_by,
                     updated_by,
                     is_deleted)
    end

    def to_last_validated_date
      DateTimeHelper.to_rfc3339(last_validated_date)
    end

    def to_created_date
      DateTimeHelper.to_rfc3339(created_date)
    end

    def to_last_modified_date
      DateTimeHelper.to_rfc3339(last_modified_date)
    end
  end
end
