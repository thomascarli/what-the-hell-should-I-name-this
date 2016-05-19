require "uri"

module WordsAPI
  class WordsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # 
    # Get
    # @param word Word
    # @param [Hash] opts the optional parameters
    # @return [WordResponse]
    def get(word, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: WordsApi#get ..."
      end
      
      # verify the required parameter 'word' is set
      fail "Missing the required parameter 'word' when calling get" if word.nil?
      
      # resource path
      path = "/words/{word}".sub('{format}','json').sub('{' + 'word' + '}', word.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['Default']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WordResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: WordsApi#get. Result: #{result.inspect}"
      end
      return result
    end

    # To retrieve a specific set of details of a word.
    # To retrieve a specific set of details of a word, for instance, a word&#39;s synonyms, append the detail type to the URL string.
    # @param word Word
    # @param detail Detail
    # @param [Hash] opts the optional parameters
    # @return [DetailsResponse]
    def details(word, detail, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: WordsApi#details ..."
      end
      
      # verify the required parameter 'word' is set
      fail "Missing the required parameter 'word' when calling details" if word.nil?
      
      # verify the required parameter 'detail' is set
      fail "Missing the required parameter 'detail' when calling details" if detail.nil?
      unless ['definitions', 'synonyms', 'typeOf', 'hasTypes', 'partOf', 'hasParts', 'instanceOf', 'hasInstances', 'similarTo', 'also', 'entails', 'memberOf', 'hasMembers', 'substanceOf', 'hasSubstances', 'inCategory'].include?(detail)
        fail "invalid value for 'detail', must be one of definitions, synonyms, typeOf, hasTypes, partOf, hasParts, instanceOf, hasInstances, similarTo, also, entails, memberOf, hasMembers, substanceOf, hasSubstances, inCategory"
      end
      
      # resource path
      path = "/words/{word}/{detail}".sub('{format}','json').sub('{' + 'word' + '}', word.to_s).sub('{' + 'detail' + '}', detail.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['Default']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DetailsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: WordsApi#details. Result: #{result.inspect}"
      end
      return result
    end
  end
end




