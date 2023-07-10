# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DiagnosticsCallbacksController
  class DiagnosticsCallbacksController < BaseController
    # This endpoint allows user to get the registered callback information of an
    # existing diagnostics subscription.
    # @param [String] account_name Required parameter: Account identifier.
    # @return [Array[DeviceDiagnosticsCallback]] response from the API call
    def get_diagnostics_subscription_callback_info(account_name)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/callbacks',
                                     Server::DEVICE_DIAGNOSTICS)
                   .query_param(new_parameter(account_name, key: 'accountName'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceDiagnosticsCallback.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true)
                   .local_error('400',
                                'Unexpected error.',
                                DeviceDiagnosticsResultException))
        .execute
    end

    # This endpoint allows user update the callback HTTPS address of an existing
    # diagnostics subscription.
    # @param [CallbackRegistrationRequest] body Required parameter: Callback URL
    # registration request.
    # @return [DeviceDiagnosticsCallback] response from the API call
    def register_diagnostics_callback_url(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/callbacks',
                                     Server::DEVICE_DIAGNOSTICS)
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceDiagnosticsCallback.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                DeviceDiagnosticsResultException))
        .execute
    end

    # This endpoint allows user to delete a registered callback URL and
    # credential.
    # @param [String] account_name Required parameter: Account identifier.
    # @param [String] service_name Required parameter: Service name for callback
    # notification.
    # @return [DeviceDiagnosticsCallback] response from the API call
    def unregister_diagnostics_callback(account_name,
                                        service_name)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/callbacks',
                                     Server::DEVICE_DIAGNOSTICS)
                   .query_param(new_parameter(account_name, key: 'accountName'))
                   .query_param(new_parameter(service_name, key: 'serviceName'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceDiagnosticsCallback.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                DeviceDiagnosticsResultException))
        .execute
    end
  end
end