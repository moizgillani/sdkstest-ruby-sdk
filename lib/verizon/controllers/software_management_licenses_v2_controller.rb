# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SoftwareManagementLicensesV2Controller
  class SoftwareManagementLicensesV2Controller < BaseController
    # The endpoint allows user to list license usage.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] last_seen_device_id Optional parameter: Last seen device
    # identifier.
    # @return [V2LicenseSummary] response from the API call
    def get_account_license_status(account,
                                   last_seen_device_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/licenses/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .query_param(new_parameter(last_seen_device_id, key: 'lastSeenDeviceId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V2LicenseSummary.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to assign licenses to a list of devices.
    # @param [String] account Required parameter: Account identifier.
    # @param [V2LicenseIMEI] body Required parameter: License assignment.
    # @return [V2LicensesAssignedRemovedResult] response from the API call
    def assign_licenses_to_devices(account,
                                   body)
      warn 'Endpoint assign_licenses_to_devices in SoftwareManagementLicensesV'\
           '2Controller is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/licenses/{account}/assign',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V2LicensesAssignedRemovedResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to remove licenses from a list of devices.
    # @param [String] account Required parameter: Account identifier.
    # @param [V2LicenseIMEI] body Required parameter: License removal.
    # @return [V2LicensesAssignedRemovedResult] response from the API call
    def remove_licenses_from_devices(account,
                                     body)
      warn 'Endpoint remove_licenses_from_devices in SoftwareManagementLicense'\
           'sV2Controller is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/licenses/{account}/remove',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V2LicensesAssignedRemovedResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # The license cancel endpoint allows user to list registered license
    # cancellation candidate devices.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] start_index Optional parameter: Start index to retrieve.
    # @return [V2ListOfLicensesToRemove] response from the API call
    def list_licenses_to_remove(account,
                                start_index: nil)
      warn 'Endpoint list_licenses_to_remove in SoftwareManagementLicensesV2Co'\
           'ntroller is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/licenses/{account}/cancel',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .query_param(new_parameter(start_index, key: 'startIndex'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V2ListOfLicensesToRemove.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # The license cancel endpoint allows user to create a list of license
    # cancellation candidate devices.
    # @param [String] account Required parameter: Account identifier.
    # @param [V2ListOfLicensesToRemoveRequest] body Required parameter: List of
    # licensess to remove.
    # @return [V2ListOfLicensesToRemoveResult] response from the API call
    def create_list_of_licenses_to_remove(account,
                                          body)
      warn 'Endpoint create_list_of_licenses_to_remove in SoftwareManagementLi'\
           'censesV2Controller is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/licenses/{account}/cancel',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V2ListOfLicensesToRemoveResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to delete a created cancel candidate device
    # list.
    # @param [String] account Required parameter: Account identifier.
    # @return [FotaV2SuccessResult] response from the API call
    def delete_list_of_licenses_to_remove(account)
      warn 'Endpoint delete_list_of_licenses_to_remove in SoftwareManagementLi'\
           'censesV2Controller is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/licenses/{account}/cancel',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FotaV2SuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end
  end
end