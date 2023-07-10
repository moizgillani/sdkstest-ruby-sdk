# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # CloudConnectorDevicesController
  class CloudConnectorDevicesController < BaseController
    # Change configuration values on a device, such as setting how often a
    # device records and reports sensor readings.
    # @param [ChangeConfigurationRequest] body Required parameter: The request
    # body changes configuration values on a device.
    # @return [ChangeConfigurationResponse] response from the API call
    def update_devices_configuration_value(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/configuration/actions/set',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ChangeConfigurationResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Find devices by property values. Returns an array of all matching device
    # resources.
    # @param [QuerySubscriptionRequest] body Required parameter: The request
    # body specifies fields and values to match.
    # @return [FindDeviceByPropertyResponseList] response from the API call
    def find_device_by_property_values(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/actions/query',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FindDeviceByPropertyResponseList.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Search for devices by property values. Returns an array of all matching
    # device resources.
    # @param [QuerySubscriptionRequest] body Required parameter: The request
    # body specifies fields and values to match.
    # @return [SearchDeviceByPropertyResponseList] response from the API call
    def search_devices_resources_by_property_values(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/actions/search',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SearchDeviceByPropertyResponseList.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Search device event history to find events that match criteria.Sensor
    # readings, configuration changes, and other device data are all stored as
    # events.
    # @param [SearchDeviceEventHistoryRequest] body Required parameter: The
    # device identifier and fields to match in the search.
    # @return [SearchDeviceEventHistoryResponseList] response from the API call
    def search_device_event_history(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/fields/actions/history/search',
                                     Server::CLOUD_CONNECTOR)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SearchDeviceEventHistoryResponseList.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Returns the readings of a specified sensor, with the most recent reading
    # first. Sensor readings are stored as events; this request an array of
    # events.
    # @param [String] fieldname Required parameter: The name of the sensor.
    # @param [SearchSensorHistoryRequest] body Required parameter: The device
    # identifier and fields to match in the search.
    # @return [SearchSensorHistoryResponseList] response from the API call
    def search_sensor_readings(fieldname,
                               body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/fields/{fieldname}/actions/history',
                                     Server::CLOUD_CONNECTOR)
                   .template_param(new_parameter(fieldname, key: 'fieldname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SearchSensorHistoryResponseList.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # Remove a device from a ThingSpace account.
    # @param [RemoveDeviceRequest] body Required parameter: The request body
    # identifies the device to delete.
    # @return [void] response from the API call
    def delete_device_from_account(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/actions/delete',
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
  end
end
