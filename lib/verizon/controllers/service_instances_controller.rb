# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ServiceInstancesController
  class ServiceInstancesController < BaseController
    # Retrieve information of a service instance.
    # @param [String] service_instance_id Required parameter: Unique Id of the
    # service instance.
    # @param [String] account_name Required parameter: User account name.
    # @param [TrueClass | FalseClass] cluster Optional parameter:
    # Example:false
    # @return [ServiceInstancesResultSetItem] response from the API call
    def retrieve_service_instance(service_instance_id,
                                  account_name,
                                  cluster: false)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v1/service/instances/{serviceInstanceId}',
                                     Server::SERVICES)
                   .template_param(new_parameter(service_instance_id, key: 'serviceInstanceId')
                                    .should_encode(true))
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .query_param(new_parameter(cluster, key: 'cluster'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServiceInstancesResultSetItem.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad Request.',
                                EdgeServiceLaunchResultException)
                   .local_error('401',
                                'Unauthorized.',
                                EdgeServiceLaunchResultException)
                   .local_error('403',
                                'Forbidden.',
                                EdgeServiceLaunchResultException)
                   .local_error('404',
                                'Not found.',
                                EdgeServiceLaunchResultException)
                   .local_error('415',
                                'Unsupported media type.',
                                EdgeServiceLaunchResultException)
                   .local_error('429',
                                'Too many requests.',
                                EdgeServiceLaunchResultException)
                   .local_error('500',
                                'Internal Server Error.',
                                EdgeServiceLaunchResultException)
                   .local_error('default',
                                'Unexpected error.',
                                EdgeServiceLaunchResultException))
        .execute
    end

    # Retrieve all instances for all services.
    # @param [String] account_name Required parameter: User account name.
    # @param [String] offset Optional parameter: Example:
    # @param [String] state Optional parameter: Example:
    # @param [String] limit Optional parameter: Example:
    # @param [String] searchbyname Optional parameter: Example:
    # @param [Array[String]] listofstate Optional parameter: Example:
    # @return [ServiceInstancesResult] response from the API call
    def list_services_instances(account_name,
                                offset: nil,
                                state: nil,
                                limit: nil,
                                searchbyname: nil,
                                listofstate: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v1/service/instances',
                                     Server::SERVICES)
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .query_param(new_parameter(offset, key: 'offset'))
                   .query_param(new_parameter(state, key: 'state'))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(searchbyname, key: 'searchbyname'))
                   .query_param(new_parameter(listofstate, key: 'listofstate'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServiceInstancesResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad Request.',
                                EdgeServiceLaunchResultException)
                   .local_error('401',
                                'Unauthorized.',
                                EdgeServiceLaunchResultException)
                   .local_error('403',
                                'Forbidden.',
                                EdgeServiceLaunchResultException)
                   .local_error('404',
                                'Not found.',
                                EdgeServiceLaunchResultException)
                   .local_error('415',
                                'Unsupported media type.',
                                EdgeServiceLaunchResultException)
                   .local_error('429',
                                'Too many requests.',
                                EdgeServiceLaunchResultException)
                   .local_error('500',
                                'Internal Server Error.',
                                EdgeServiceLaunchResultException)
                   .local_error('default',
                                'Unexpected error.',
                                EdgeServiceLaunchResultException))
        .execute
    end
  end
end
