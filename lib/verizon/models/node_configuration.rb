# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # NodeConfiguration Model.
  class NodeConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :name

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_wavelength_zone

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_managed_node_group

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_spot_instance_needed

    # Name of the nodeGroup.
    # @return [EndPointAccessTypeEnum]
    attr_accessor :end_point_access_type

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :instance_type

    # Name of the nodeGroup.
    # @return [Integer]
    attr_accessor :nodes

    # Name of the nodeGroup.
    # @return [Integer]
    attr_accessor :nodes_min

    # Name of the nodeGroup.
    # @return [Integer]
    attr_accessor :nodes_max

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :node_volume_type

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :subnet_cidr_block

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :node_ami_family

    # Name of the nodeGroup.
    # @return [Integer]
    attr_accessor :node_volume_size

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :key_name

    # Name of the nodeGroup.
    # @return [Integer]
    attr_accessor :max_pod_per_node

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_volume_encryption

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :node_private_networking

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :instance_profile_arn

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :instance_role_arn

    # Name of the nodeGroup.
    # @return [String]
    attr_accessor :instance_role_permission_boundary

    # Name of the nodeGroup.
    # @return [Array[IdList]]
    attr_accessor :security_group_ids

    # Name of the nodeGroup.
    # @return [Array[IdList]]
    attr_accessor :availability_zone_ids

    # Name of the nodeGroup.
    # @return [NodeConfigurationLabel]
    attr_accessor :labels

    # Name of the nodeGroup.
    # @return [NodeConfigurationTag]
    attr_accessor :tags

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_create_service_roles

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_full_access_to_ecr

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_asg_access

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_dns_access

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_app_mesh_access

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_alb_access

    # Name of the nodeGroup.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_efs_access

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['is_wavelength_zone'] = 'isWavelengthZone'
      @_hash['is_managed_node_group'] = 'isManagedNodeGroup'
      @_hash['is_spot_instance_needed'] = 'isSpotInstanceNeeded'
      @_hash['end_point_access_type'] = 'endPointAccessType'
      @_hash['instance_type'] = 'instanceType'
      @_hash['nodes'] = 'nodes'
      @_hash['nodes_min'] = 'nodesMin'
      @_hash['nodes_max'] = 'nodesMax'
      @_hash['node_volume_type'] = 'nodeVolumeType'
      @_hash['subnet_cidr_block'] = 'subnetCidrBlock'
      @_hash['node_ami_family'] = 'nodeAmiFamily'
      @_hash['node_volume_size'] = 'nodeVolumeSize'
      @_hash['key_name'] = 'keyName'
      @_hash['max_pod_per_node'] = 'maxPodPerNode'
      @_hash['use_volume_encryption'] = 'useVolumeEncryption'
      @_hash['node_private_networking'] = 'nodePrivateNetworking'
      @_hash['instance_profile_arn'] = 'instanceProfileArn'
      @_hash['instance_role_arn'] = 'instanceRoleArn'
      @_hash['instance_role_permission_boundary'] =
        'instanceRolePermissionBoundary'
      @_hash['security_group_ids'] = 'securityGroupIds'
      @_hash['availability_zone_ids'] = 'availabilityZoneIds'
      @_hash['labels'] = 'labels'
      @_hash['tags'] = 'tags'
      @_hash['auto_create_service_roles'] = 'autoCreateServiceRoles'
      @_hash['enable_full_access_to_ecr'] = 'enableFullAccessToEcr'
      @_hash['enable_asg_access'] = 'enableAsgAccess'
      @_hash['enable_dns_access'] = 'enableDnsAccess'
      @_hash['enable_app_mesh_access'] = 'enableAppMeshAccess'
      @_hash['enable_alb_access'] = 'enableAlbAccess'
      @_hash['enable_efs_access'] = 'enableEfsAccess'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        is_wavelength_zone
        is_managed_node_group
        is_spot_instance_needed
        end_point_access_type
        instance_type
        nodes
        nodes_min
        nodes_max
        node_volume_type
        subnet_cidr_block
        node_ami_family
        node_volume_size
        key_name
        max_pod_per_node
        use_volume_encryption
        node_private_networking
        instance_profile_arn
        instance_role_arn
        instance_role_permission_boundary
        security_group_ids
        availability_zone_ids
        labels
        tags
        auto_create_service_roles
        enable_full_access_to_ecr
        enable_asg_access
        enable_dns_access
        enable_app_mesh_access
        enable_alb_access
        enable_efs_access
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   is_wavelength_zone = false,
                   is_managed_node_group = false,
                   is_spot_instance_needed = false,
                   end_point_access_type = EndPointAccessTypeEnum::PRIVATE,
                   instance_type = 'm5.xlarge',
                   nodes = 2,
                   nodes_min = SKIP,
                   nodes_max = SKIP,
                   node_volume_type = SKIP,
                   subnet_cidr_block = SKIP,
                   node_ami_family = 'AmazonLinux2',
                   node_volume_size = SKIP,
                   key_name = SKIP,
                   max_pod_per_node = SKIP,
                   use_volume_encryption = true,
                   node_private_networking = false,
                   instance_profile_arn = SKIP,
                   instance_role_arn = SKIP,
                   instance_role_permission_boundary = SKIP,
                   security_group_ids = SKIP,
                   availability_zone_ids = SKIP,
                   labels = SKIP,
                   tags = SKIP,
                   auto_create_service_roles = true,
                   enable_full_access_to_ecr = SKIP,
                   enable_asg_access = SKIP,
                   enable_dns_access = SKIP,
                   enable_app_mesh_access = SKIP,
                   enable_alb_access = SKIP,
                   enable_efs_access = SKIP)
      @name = name unless name == SKIP
      @is_wavelength_zone = is_wavelength_zone unless is_wavelength_zone == SKIP
      @is_managed_node_group = is_managed_node_group unless is_managed_node_group == SKIP
      @is_spot_instance_needed = is_spot_instance_needed unless is_spot_instance_needed == SKIP
      @end_point_access_type = end_point_access_type unless end_point_access_type == SKIP
      @instance_type = instance_type unless instance_type == SKIP
      @nodes = nodes unless nodes == SKIP
      @nodes_min = nodes_min unless nodes_min == SKIP
      @nodes_max = nodes_max unless nodes_max == SKIP
      @node_volume_type = node_volume_type unless node_volume_type == SKIP
      @subnet_cidr_block = subnet_cidr_block unless subnet_cidr_block == SKIP
      @node_ami_family = node_ami_family unless node_ami_family == SKIP
      @node_volume_size = node_volume_size unless node_volume_size == SKIP
      @key_name = key_name unless key_name == SKIP
      @max_pod_per_node = max_pod_per_node unless max_pod_per_node == SKIP
      @use_volume_encryption = use_volume_encryption unless use_volume_encryption == SKIP
      @node_private_networking = node_private_networking unless node_private_networking == SKIP
      @instance_profile_arn = instance_profile_arn unless instance_profile_arn == SKIP
      @instance_role_arn = instance_role_arn unless instance_role_arn == SKIP
      unless instance_role_permission_boundary == SKIP
        @instance_role_permission_boundary =
          instance_role_permission_boundary
      end
      @security_group_ids = security_group_ids unless security_group_ids == SKIP
      @availability_zone_ids = availability_zone_ids unless availability_zone_ids == SKIP
      @labels = labels unless labels == SKIP
      @tags = tags unless tags == SKIP
      unless auto_create_service_roles == SKIP
        @auto_create_service_roles =
          auto_create_service_roles
      end
      unless enable_full_access_to_ecr == SKIP
        @enable_full_access_to_ecr =
          enable_full_access_to_ecr
      end
      @enable_asg_access = enable_asg_access unless enable_asg_access == SKIP
      @enable_dns_access = enable_dns_access unless enable_dns_access == SKIP
      @enable_app_mesh_access = enable_app_mesh_access unless enable_app_mesh_access == SKIP
      @enable_alb_access = enable_alb_access unless enable_alb_access == SKIP
      @enable_efs_access = enable_efs_access unless enable_efs_access == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      is_wavelength_zone = hash['isWavelengthZone'] ||= false
      is_managed_node_group = hash['isManagedNodeGroup'] ||= false
      is_spot_instance_needed = hash['isSpotInstanceNeeded'] ||= false
      end_point_access_type =
        hash['endPointAccessType'] ||= EndPointAccessTypeEnum::PRIVATE
      instance_type = hash['instanceType'] ||= 'm5.xlarge'
      nodes = hash['nodes'] ||= 2
      nodes_min = hash.key?('nodesMin') ? hash['nodesMin'] : SKIP
      nodes_max = hash.key?('nodesMax') ? hash['nodesMax'] : SKIP
      node_volume_type =
        hash.key?('nodeVolumeType') ? hash['nodeVolumeType'] : SKIP
      subnet_cidr_block =
        hash.key?('subnetCidrBlock') ? hash['subnetCidrBlock'] : SKIP
      node_ami_family = hash['nodeAmiFamily'] ||= 'AmazonLinux2'
      node_volume_size =
        hash.key?('nodeVolumeSize') ? hash['nodeVolumeSize'] : SKIP
      key_name = hash.key?('keyName') ? hash['keyName'] : SKIP
      max_pod_per_node =
        hash.key?('maxPodPerNode') ? hash['maxPodPerNode'] : SKIP
      use_volume_encryption = hash['useVolumeEncryption'] ||= true
      node_private_networking = hash['nodePrivateNetworking'] ||= false
      instance_profile_arn =
        hash.key?('instanceProfileArn') ? hash['instanceProfileArn'] : SKIP
      instance_role_arn =
        hash.key?('instanceRoleArn') ? hash['instanceRoleArn'] : SKIP
      instance_role_permission_boundary =
        hash.key?('instanceRolePermissionBoundary') ? hash['instanceRolePermissionBoundary'] : SKIP
      # Parameter is an array, so we need to iterate through it
      security_group_ids = nil
      unless hash['securityGroupIds'].nil?
        security_group_ids = []
        hash['securityGroupIds'].each do |structure|
          security_group_ids << (IdList.from_hash(structure) if structure)
        end
      end

      security_group_ids = SKIP unless hash.key?('securityGroupIds')
      # Parameter is an array, so we need to iterate through it
      availability_zone_ids = nil
      unless hash['availabilityZoneIds'].nil?
        availability_zone_ids = []
        hash['availabilityZoneIds'].each do |structure|
          availability_zone_ids << (IdList.from_hash(structure) if structure)
        end
      end

      availability_zone_ids = SKIP unless hash.key?('availabilityZoneIds')
      labels = NodeConfigurationLabel.from_hash(hash['labels']) if hash['labels']
      tags = NodeConfigurationTag.from_hash(hash['tags']) if hash['tags']
      auto_create_service_roles = hash['autoCreateServiceRoles'] ||= true
      enable_full_access_to_ecr =
        hash.key?('enableFullAccessToEcr') ? hash['enableFullAccessToEcr'] : SKIP
      enable_asg_access =
        hash.key?('enableAsgAccess') ? hash['enableAsgAccess'] : SKIP
      enable_dns_access =
        hash.key?('enableDnsAccess') ? hash['enableDnsAccess'] : SKIP
      enable_app_mesh_access =
        hash.key?('enableAppMeshAccess') ? hash['enableAppMeshAccess'] : SKIP
      enable_alb_access =
        hash.key?('enableAlbAccess') ? hash['enableAlbAccess'] : SKIP
      enable_efs_access =
        hash.key?('enableEfsAccess') ? hash['enableEfsAccess'] : SKIP

      # Create object from extracted values.
      NodeConfiguration.new(name,
                            is_wavelength_zone,
                            is_managed_node_group,
                            is_spot_instance_needed,
                            end_point_access_type,
                            instance_type,
                            nodes,
                            nodes_min,
                            nodes_max,
                            node_volume_type,
                            subnet_cidr_block,
                            node_ami_family,
                            node_volume_size,
                            key_name,
                            max_pod_per_node,
                            use_volume_encryption,
                            node_private_networking,
                            instance_profile_arn,
                            instance_role_arn,
                            instance_role_permission_boundary,
                            security_group_ids,
                            availability_zone_ids,
                            labels,
                            tags,
                            auto_create_service_roles,
                            enable_full_access_to_ecr,
                            enable_asg_access,
                            enable_dns_access,
                            enable_app_mesh_access,
                            enable_alb_access,
                            enable_efs_access)
    end
  end
end
