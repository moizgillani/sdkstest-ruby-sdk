# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # TargetsController
  class TargetsController < BaseController
    # Search for targets by property values. Returns an array of all matching
    # target resources.
    # @param [QueryTargetRequest] body Required parameter: Search for targets by
    # property values.
    # @return [Array[Target]] response from the API call
    def query_target(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/targets/actions/query',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Target.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true))
        .execute
    end

    # Remove a target from a ThingSpace account.
    # @param [DeleteTargetRequest] body Required parameter: The request body
    # identifies the target to delete.
    # @return [void] response from the API call
    def delete_target(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/targets/actions/delete',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .is_api_response(true))
        .execute
    end

    # Define a target to receive data streams, alerts, or callbacks. After
    # creating the target resource, use its ID in a subscription to set up a
    # data stream.
    # @param [CreateTargetRequest] body Required parameter: The request body
    # provides the details of the target that you want to create.
    # @return [Target] response from the API call
    def create_target(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/targets',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Target.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Create a unique string that ThingSpace will pass to AWS for increased
    # security.
    # @param [GenerateExternalIDRequest] body Required parameter: The request
    # body only contains the authenticating account.
    # @return [GenerateExternalIDResult] response from the API call
    def generate_target_external_id(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/targets/actions/newextid',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GenerateExternalIDResult.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Deploy a new Azure IoT Central application based on the Verizon ARM
    # template within the specified Azure Active Directory account.
    # @param [String] billingaccount_id Required parameter: TThe ThingSpace ID
    # of the authenticating billing account.
    # @param [CreateIoTApplicationRequest] body Required parameter: The request
    # body must include the UUID of the subscription that you want to update
    # plus any properties that you want to change.
    # @return [CreateIoTApplicationResponse] response from the API call
    def create_azure_central_io_t_application(billingaccount_id,
                                              body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/targets/actions/newaic',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter(billingaccount_id, key: 'BillingaccountID'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CreateIoTApplicationResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end
  end
end
