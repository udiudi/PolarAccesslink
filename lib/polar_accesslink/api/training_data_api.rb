=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3.40.0
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module PolarAccesslink
  class TrainingDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Commit transaction
    # After successfully retrieving training session data within a transaction, partners are expected to commit the transaction.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def commit_exercise_transaction(transaction_id, user_id, opts = {})
      commit_exercise_transaction_with_http_info(transaction_id, user_id, opts)
      nil
    end

    # Commit transaction
    # After successfully retrieving training session data within a transaction, partners are expected to commit the transaction.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def commit_exercise_transaction_with_http_info(transaction_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.commit_exercise_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.commit_exercise_transaction"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && transaction_id !~ pattern
        fail ArgumentError, "invalid value for 'transaction_id' when calling TrainingDataApi.commit_exercise_transaction, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.commit_exercise_transaction"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling TrainingDataApi.commit_exercise_transaction, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type]

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#commit_exercise_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create transaction
    # Check for new training data and create a new transaction if found.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [TransactionLocation]
    def create_exercise_transaction(user_id, opts = {})
      data, _status_code, _headers = create_exercise_transaction_with_http_info(user_id, opts)
      data
    end

    # Create transaction
    # Check for new training data and create a new transaction if found.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionLocation, Integer, Hash)>] TransactionLocation data, response status code and response headers
    def create_exercise_transaction_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.create_exercise_transaction ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.create_exercise_transaction"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling TrainingDataApi.create_exercise_transaction, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'TransactionLocation'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#create_exercise_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get available samples
    # Retrieve list of links to available samples in training session
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Samples]
    def get_available_samples(user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_available_samples_with_http_info(user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get available samples
    # Retrieve list of links to available samples in training session
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Samples, Integer, Hash)>] Samples data, response status code and response headers
    def get_available_samples_with_http_info(user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_available_samples ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_available_samples"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_available_samples"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_available_samples"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'Samples'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_available_samples\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get exercise summary
    # Retrieve training session summary data
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Exercise]
    def get_exercise_summary(user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_exercise_summary_with_http_info(user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get exercise summary
    # Retrieve training session summary data
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Exercise, Integer, Hash)>] Exercise data, response status code and response headers
    def get_exercise_summary_with_http_info(user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_exercise_summary ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_exercise_summary"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_exercise_summary"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_exercise_summary"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'Exercise'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_exercise_summary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FIT (beta)
    # Retrieve exercise in FIT format. **Note!** This interface is in beta phase. If there is anything we can help you with or you want to give us feedback, please contact [Support](#support).
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_fit(user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_fit_with_http_info(user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get FIT (beta)
    # Retrieve exercise in FIT format. **Note!** This interface is in beta phase. If there is anything we can help you with or you want to give us feedback, please contact [Support](#support).
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_fit_with_http_info(user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_fit ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_fit"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_fit"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_fit"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/fit'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'String'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_fit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GPX
    # Retrieve training session summary data in GPX format
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_gpx(user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_gpx_with_http_info(user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get GPX
    # Retrieve training session summary data in GPX format
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_gpx_with_http_info(user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_gpx ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_gpx"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_gpx"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_gpx"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/gpx'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/gpx+xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'String'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_gpx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get heart rate zones
    # Retrieve heart rate zones in training session
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Zones]
    def get_heart_rate_zones(user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_heart_rate_zones_with_http_info(user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get heart rate zones
    # Retrieve heart rate zones in training session
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Zones, Integer, Hash)>] Zones data, response status code and response headers
    def get_heart_rate_zones_with_http_info(user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_heart_rate_zones ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_heart_rate_zones"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_heart_rate_zones"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_heart_rate_zones"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/heart-rate-zones'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'Zones'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_heart_rate_zones\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get samples
    # Retrieve sample data of given type
    # @param type_id [String] Sample type id
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Sample]
    def get_samples(type_id, user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_samples_with_http_info(type_id, user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get samples
    # Retrieve sample data of given type
    # @param type_id [String] Sample type id
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Sample, Integer, Hash)>] Sample data, response status code and response headers
    def get_samples_with_http_info(type_id, user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_samples ...'
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling TrainingDataApi.get_samples"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && type_id !~ pattern
        fail ArgumentError, "invalid value for 'type_id' when calling TrainingDataApi.get_samples, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_samples"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_samples"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_samples"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples/{type-id}'.sub('{' + 'type-id' + '}', CGI.escape(type_id.to_s)).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'Sample'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_samples\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get TCX
    # Retrieve exercise in TCX format
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_tcx(user_id, transaction_id, exercise_id, opts = {})
      data, _status_code, _headers = get_tcx_with_http_info(user_id, transaction_id, exercise_id, opts)
      data
    end

    # Get TCX
    # Retrieve exercise in TCX format
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param exercise_id [Integer] Exercise identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_tcx_with_http_info(user_id, transaction_id, exercise_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.get_tcx ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.get_tcx"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.get_tcx"
      end
      # verify the required parameter 'exercise_id' is set
      if @api_client.config.client_side_validation && exercise_id.nil?
        fail ArgumentError, "Missing the required parameter 'exercise_id' when calling TrainingDataApi.get_tcx"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/tcx'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s)).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'exercise-id' + '}', CGI.escape(exercise_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.garmin.tcx+xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'String'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#get_tcx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List exercises
    # After successfully initiating a transaction, training sessions included within it can be retrieved with the provided transactionId.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Exercises]
    def list_exercises(transaction_id, user_id, opts = {})
      data, _status_code, _headers = list_exercises_with_http_info(transaction_id, user_id, opts)
      data
    end

    # List exercises
    # After successfully initiating a transaction, training sessions included within it can be retrieved with the provided transactionId.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Exercises, Integer, Hash)>] Exercises data, response status code and response headers
    def list_exercises_with_http_info(transaction_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrainingDataApi.list_exercises ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TrainingDataApi.list_exercises"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && transaction_id !~ pattern
        fail ArgumentError, "invalid value for 'transaction_id' when calling TrainingDataApi.list_exercises, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TrainingDataApi.list_exercises"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling TrainingDataApi.list_exercises, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}/exercise-transactions/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:return_type] || 'Exercises'

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrainingDataApi#list_exercises\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end