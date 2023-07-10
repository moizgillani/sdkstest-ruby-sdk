# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # UICCDeviceProfileManagementController
  class UICCDeviceProfileManagementController < BaseController
    # Downloads an eUICC local profile to devices and enables the profile.
    # @param [ProfileChangeStateRequest] body Required parameter: Device Profile
    # Query
    # @return [DeviceManagementResult] response from the API call
    def download_local_profile_to_enable(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/download_enable',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceManagementResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end

    # Downloads an eUICC local profile to devices and leaves the profile
    # disabled.
    # @param [ProfileChangeStateRequest] body Required parameter: Device Profile
    # Query
    # @return [DeviceManagementResult] response from the API call
    def download_local_profile_to_disable(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/download_disable',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceManagementResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end

    # Enable a local profile that has been downloaded to eUICC devices.
    # @param [ProfileChangeStateRequest] body Required parameter: Update state
    # @return [RequestResponse] response from the API call
    def enable_local_profile(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/enable',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(RequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RestErrorResponseException))
        .execute
    end

    # Disable a local profile on eUICC devices. The default or boot profile will
    # become the enabled profile.
    # @param [ProfileChangeStateRequest] body Required parameter: Update state
    # @return [RequestResponse] response from the API call
    def disable_local_profile(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/disable',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(RequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RestErrorResponseException))
        .execute
    end

    # Delete a local profile from eUICC devices. If the local profile is
    # enabled, it will first be disabled and the boot or default profile will be
    # enabled.
    # @param [ProfileChangeStateRequest] body Required parameter: Update state
    # @return [RequestResponse] response from the API call
    def delete_local_profile(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/delete',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(RequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RestErrorResponseException))
        .execute
    end
  end
end
