# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MECSitesController
  class MECSitesController < BaseController
    # Supports fetching MEC locations so the user can view the city.
    # @param [String] account_name Optional parameter: User account name.
    # @return [MECSiteLocationsResult] response from the API call
    def list_mec_site_locations(account_name: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v1/mecsite/locations',
                                     Server::SERVICES)
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(MECSiteLocationsResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response.',
                                EdgeServiceLaunchResultException))
        .execute
    end

    # Retrieve all clusters for the customer.
    # @param [String] user_id Required parameter: Example:
    # @param [String] role Required parameter: Example:
    # @param [String] customer_id Required parameter: Example:
    # @param [String] request_id Required parameter: Example:
    # @param [String] ern Optional parameter: Example:
    # @param [String] name Optional parameter: Example:
    # @param [String] offset Optional parameter: Example:
    # @param [String] limit Optional parameter: Example:
    # @param [String] correlation_id Optional parameter: Example:
    # @param [ClusterStateEnum] cluster_state Optional parameter: Example:
    # @return [ClustersNamespaces] response from the API call
    def list_ern_cluster_namespaces(user_id,
                                    role,
                                    customer_id,
                                    request_id,
                                    ern: nil,
                                    name: nil,
                                    offset: nil,
                                    limit: nil,
                                    correlation_id: nil,
                                    cluster_state: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v1/platform/clusters',
                                     Server::SERVICES)
                   .header_param(new_parameter(user_id, key: 'userId'))
                   .header_param(new_parameter(role, key: 'role'))
                   .header_param(new_parameter(customer_id, key: 'customerId'))
                   .header_param(new_parameter(request_id, key: 'requestId'))
                   .query_param(new_parameter(ern, key: 'ERN'))
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(offset, key: 'offset'))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .header_param(new_parameter(correlation_id, key: 'correlationId'))
                   .query_param(new_parameter(cluster_state, key: 'cluster_state'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ClustersNamespaces.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad Request.',
                                EdgeServiceLaunchResultException)
                   .local_error('404',
                                'Not found.',
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