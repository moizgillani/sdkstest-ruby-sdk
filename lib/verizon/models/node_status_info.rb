# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # NodeStatusInfo Model.
  class NodeStatusInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :machine_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :system_uuid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :boot_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kernel_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :os_image

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :container_runtime_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kubelet_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kube_proxy_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :operating_system

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :architecture

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['machine_id'] = 'machineID'
      @_hash['system_uuid'] = 'systemUUID'
      @_hash['boot_id'] = 'bootID'
      @_hash['kernel_version'] = 'kernelVersion'
      @_hash['os_image'] = 'osImage'
      @_hash['container_runtime_version'] = 'containerRuntimeVersion'
      @_hash['kubelet_version'] = 'kubeletVersion'
      @_hash['kube_proxy_version'] = 'kubeProxyVersion'
      @_hash['operating_system'] = 'operatingSystem'
      @_hash['architecture'] = 'architecture'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        machine_id
        system_uuid
        boot_id
        kernel_version
        os_image
        container_runtime_version
        kubelet_version
        kube_proxy_version
        operating_system
        architecture
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(machine_id = SKIP,
                   system_uuid = SKIP,
                   boot_id = SKIP,
                   kernel_version = SKIP,
                   os_image = SKIP,
                   container_runtime_version = SKIP,
                   kubelet_version = SKIP,
                   kube_proxy_version = SKIP,
                   operating_system = SKIP,
                   architecture = SKIP)
      @machine_id = machine_id unless machine_id == SKIP
      @system_uuid = system_uuid unless system_uuid == SKIP
      @boot_id = boot_id unless boot_id == SKIP
      @kernel_version = kernel_version unless kernel_version == SKIP
      @os_image = os_image unless os_image == SKIP
      unless container_runtime_version == SKIP
        @container_runtime_version =
          container_runtime_version
      end
      @kubelet_version = kubelet_version unless kubelet_version == SKIP
      @kube_proxy_version = kube_proxy_version unless kube_proxy_version == SKIP
      @operating_system = operating_system unless operating_system == SKIP
      @architecture = architecture unless architecture == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      machine_id = hash.key?('machineID') ? hash['machineID'] : SKIP
      system_uuid = hash.key?('systemUUID') ? hash['systemUUID'] : SKIP
      boot_id = hash.key?('bootID') ? hash['bootID'] : SKIP
      kernel_version = hash.key?('kernelVersion') ? hash['kernelVersion'] : SKIP
      os_image = hash.key?('osImage') ? hash['osImage'] : SKIP
      container_runtime_version =
        hash.key?('containerRuntimeVersion') ? hash['containerRuntimeVersion'] : SKIP
      kubelet_version =
        hash.key?('kubeletVersion') ? hash['kubeletVersion'] : SKIP
      kube_proxy_version =
        hash.key?('kubeProxyVersion') ? hash['kubeProxyVersion'] : SKIP
      operating_system =
        hash.key?('operatingSystem') ? hash['operatingSystem'] : SKIP
      architecture = hash.key?('architecture') ? hash['architecture'] : SKIP

      # Create object from extracted values.
      NodeStatusInfo.new(machine_id,
                         system_uuid,
                         boot_id,
                         kernel_version,
                         os_image,
                         container_runtime_version,
                         kubelet_version,
                         kube_proxy_version,
                         operating_system,
                         architecture)
    end
  end
end