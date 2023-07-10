# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Subscription resource definition.
  class Subscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The number of streaming failures due to faulty configuration.
    # @return [Integer]
    attr_accessor :configurationfailures

    # The number of streaming failures due to faulty configuration.
    # @return [String]
    attr_accessor :createdon

    # Not currently used.
    # @return [String]
    attr_accessor :delegateid

    # Description of the subscription.
    # @return [String]
    attr_accessor :description

    # Whether the subscription is currently sending data.
    # @return [TrueClass | FalseClass]
    attr_accessor :disabled

    # The address to which any error reports should be delivered.
    # @return [String]
    attr_accessor :email

    # Filter for events.
    # @return [String]
    attr_accessor :filter

    # ThingSpace unique ID for the subscription that was created.
    # @return [String]
    attr_accessor :id

    # Identifies the resource kind.
    # @return [String]
    attr_accessor :kind

    # Possible values: success or fail.
    # @return [String]
    attr_accessor :laststreamingstatus

    # The date and time that the last stream send was attempted.
    # @return [String]
    attr_accessor :laststreamingtime

    # The date the resource was last updated.
    # @return [String]
    attr_accessor :lastupdated

    # Name of the subscription.
    # @return [String]
    attr_accessor :name

    # The number of failures due to network problems.
    # @return [Integer]
    attr_accessor :networkfailures

    # The number of failures due to network problems.
    # @return [Integer]
    attr_accessor :streamfailures

    # The event type that will be sent in the data stream.
    # @return [String]
    attr_accessor :streamkind

    # Target to be used for dispatching events.
    # @return [String]
    attr_accessor :targetid

    # Target to be used for dispatching events.
    # @return [String]
    attr_accessor :targettype

    # Version of the underlying schema resource.
    # @return [String]
    attr_accessor :version

    # The version of the resource.
    # @return [String]
    attr_accessor :versionid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['configurationfailures'] = 'configurationfailures'
      @_hash['createdon'] = 'createdon'
      @_hash['delegateid'] = 'delegateid'
      @_hash['description'] = 'description'
      @_hash['disabled'] = 'disabled'
      @_hash['email'] = 'email'
      @_hash['filter'] = 'filter'
      @_hash['id'] = 'id'
      @_hash['kind'] = 'kind'
      @_hash['laststreamingstatus'] = 'laststreamingstatus'
      @_hash['laststreamingtime'] = 'laststreamingtime'
      @_hash['lastupdated'] = 'lastupdated'
      @_hash['name'] = 'name'
      @_hash['networkfailures'] = 'networkfailures'
      @_hash['streamfailures'] = 'streamfailures'
      @_hash['streamkind'] = 'streamkind'
      @_hash['targetid'] = 'targetid'
      @_hash['targettype'] = 'targettype'
      @_hash['version'] = 'version'
      @_hash['versionid'] = 'versionid'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        configurationfailures
        createdon
        delegateid
        description
        disabled
        email
        filter
        id
        kind
        laststreamingstatus
        laststreamingtime
        lastupdated
        name
        networkfailures
        streamfailures
        streamkind
        targetid
        targettype
        version
        versionid
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(configurationfailures = SKIP,
                   createdon = SKIP,
                   delegateid = SKIP,
                   description = SKIP,
                   disabled = SKIP,
                   email = SKIP,
                   filter = SKIP,
                   id = SKIP,
                   kind = SKIP,
                   laststreamingstatus = SKIP,
                   laststreamingtime = SKIP,
                   lastupdated = SKIP,
                   name = SKIP,
                   networkfailures = SKIP,
                   streamfailures = SKIP,
                   streamkind = SKIP,
                   targetid = SKIP,
                   targettype = SKIP,
                   version = SKIP,
                   versionid = SKIP)
      @configurationfailures = configurationfailures unless configurationfailures == SKIP
      @createdon = createdon unless createdon == SKIP
      @delegateid = delegateid unless delegateid == SKIP
      @description = description unless description == SKIP
      @disabled = disabled unless disabled == SKIP
      @email = email unless email == SKIP
      @filter = filter unless filter == SKIP
      @id = id unless id == SKIP
      @kind = kind unless kind == SKIP
      @laststreamingstatus = laststreamingstatus unless laststreamingstatus == SKIP
      @laststreamingtime = laststreamingtime unless laststreamingtime == SKIP
      @lastupdated = lastupdated unless lastupdated == SKIP
      @name = name unless name == SKIP
      @networkfailures = networkfailures unless networkfailures == SKIP
      @streamfailures = streamfailures unless streamfailures == SKIP
      @streamkind = streamkind unless streamkind == SKIP
      @targetid = targetid unless targetid == SKIP
      @targettype = targettype unless targettype == SKIP
      @version = version unless version == SKIP
      @versionid = versionid unless versionid == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      configurationfailures =
        hash.key?('configurationfailures') ? hash['configurationfailures'] : SKIP
      createdon = hash.key?('createdon') ? hash['createdon'] : SKIP
      delegateid = hash.key?('delegateid') ? hash['delegateid'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      disabled = hash.key?('disabled') ? hash['disabled'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      filter = hash.key?('filter') ? hash['filter'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      laststreamingstatus =
        hash.key?('laststreamingstatus') ? hash['laststreamingstatus'] : SKIP
      laststreamingtime =
        hash.key?('laststreamingtime') ? hash['laststreamingtime'] : SKIP
      lastupdated = hash.key?('lastupdated') ? hash['lastupdated'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      networkfailures =
        hash.key?('networkfailures') ? hash['networkfailures'] : SKIP
      streamfailures =
        hash.key?('streamfailures') ? hash['streamfailures'] : SKIP
      streamkind = hash.key?('streamkind') ? hash['streamkind'] : SKIP
      targetid = hash.key?('targetid') ? hash['targetid'] : SKIP
      targettype = hash.key?('targettype') ? hash['targettype'] : SKIP
      version = hash.key?('version') ? hash['version'] : SKIP
      versionid = hash.key?('versionid') ? hash['versionid'] : SKIP

      # Create object from extracted values.
      Subscription.new(configurationfailures,
                       createdon,
                       delegateid,
                       description,
                       disabled,
                       email,
                       filter,
                       id,
                       kind,
                       laststreamingstatus,
                       laststreamingtime,
                       lastupdated,
                       name,
                       networkfailures,
                       streamfailures,
                       streamkind,
                       targetid,
                       targettype,
                       version,
                       versionid)
    end
  end
end
